<script type="text/javascript">
function add(x) {
  return function(y) {
    return x + y;
  }
}
var add_result = (add(2))(4);
console.log(add_result);

</script>
