<h1 id="title">ガチャ</h1>
<p><input type="button" value="召喚" id="gacha_button" title="召喚します" ></p>


<script type="text/javascript">
function gacha () {
  var gacha_array = ['R','HR','SR','SSR'];
  
  var result = Math.floor(Math.random() * gacha_array.length);
  alert(gacha_array[result]);
}

(function () {
  var gacha_button =document.getElementById('gacha_button');
  gacha_button.onclick = gacha;
})();

</script>
