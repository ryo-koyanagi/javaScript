<h1 id="title">ガチャ</h1>
<p><input type="button" value="召喚" id="gacha_button" title="召喚します" ></p>
<h3 id="result"></h3>


<script type="text/javascript">
function gacha () {
  var random_int = Math.floor(Math.random() * 10);
  var gacha_output;
  if (random_int < 4) {
    gacha_output = 'R';
  }else if (4 <= random_int && random_int < 7) {
    gacha_output = 'HR';
  }else if (7 <= random_int && random_int < 9) {
    gacha_output = 'SR';
  }else {
    gacha_output = 'SSR';
  }
  document.getElementById("result").innerHTML = gacha_output +  "  GET!!"; 
}


(function () {
  var gacha_button =document.getElementById('gacha_button');
  gacha_button.onclick = gacha;

  var style = gacha_button.style;
  function mouseover() {
    style.backgroundColor = "#a9a9a9";
    style.height = "25px";
  }
  function mouseout() {
    style.backgroundColor = "white";
    style.height = "20px";

    
  }
  gacha_button.onmouseover = mouseover;
  gacha_button.onmouseout = mouseout;
})();

</script>
