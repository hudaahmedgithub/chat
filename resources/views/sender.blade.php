


<form action="/sender" method="post">
    {{csrf_field()}}
    <textarea type="text" name="text" rows="8" cols="40"></textarea>
    <input type="submit" value="submit">
</form>