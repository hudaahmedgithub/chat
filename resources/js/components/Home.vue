<template>
  <div class="container">
    <div class="row">
      <div class="col-sm-6 col-sm-offset-3">
        <div class="form-group">
          <label for="title">Message Title</label>
          <input v-model="newNotTitle" id="title" type="text" class="form-control">
        </div>
        <div class="form-group">
          <label for="description">Message Body</label>
          <textarea v-model="newNotBody" id="body" rows="8" class="form-control"></textarea>
        </div>
        <button @click="addNotify(newNotTitle, newNotBody)" 
          :class="{disabled: (!newNotTitle || !newNotBody)}"
          class="btn btn-block btn-primary">Submit</button>
      </div>
    </div>
  </div>
</template>

<script>

  export default {
    data() {
      return {
        newNotTitle: "", 
        newNotBody: "" 
      }
    },
    created() {
      this.listenForChanges();
    },
    methods: {
      addNotify(notTitle, notBody) {
        // check if entries are not empty
        if(!notTitle || !notBody)
          return;

        // make API to save post
        axios.post('/api/post', {
          title: notTitle, description: notBody
        }).then( response => {
          if(response.data) { 
            this.newNotTitle = this.newNotBody = "";
          }
        })
      },
      listenForChanges() {
        Echo.channel('dash_notification')
          .listen('Dash_NotificationPublished', dash_notification => {
            if (! ('Notification' in window)) {
              alert('Web Notification is not supported');
              return;
            }

            Notification.requestPermission( permission => {
              let notification = new Notification('New message alert!', {
                body: dash_notification.title, // content for the alert
                icon: "https://pusher.com/static_logos/320x320.png" // optional image url
              });

              // link to page on clicking the notification
              notification.onclick = () => {
                window.open(window.location.href);
              };
            });
          })
        }
      }
      
    }
    
</script>