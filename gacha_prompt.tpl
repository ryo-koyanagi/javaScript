<h1 id="title">ガチャ</h1>
<p><input type="button" value="召喚" id="gacha_button" title="召喚します" ></p>
<h3 id="result"></h3>


<script type="text/javascript">
var result = document.getElementById("result");
var gacha_button =document.getElementById('gacha_button');

function gacha () {
  var random_int = Math.floor(Math.random() * 10);
  var gacha_output;
  
  console.log(random_int);
  if (random_int < 4) {
    gacha_output = 'R';
    result.style.color = "dodgerblue";
  }else if (4 <= random_int && random_int < 7) {
    gacha_output = 'HR';
    result.style.color = "mediumblue";
  }else if (7 <= random_int && random_int < 9) {
    gacha_output = 'SR!';
    result.style.color = "coral";
  }else {
    var temp = prompt("水 or 秘薬");
    if (temp == "水") {
      gacha_output = "水をGETしました。";
    }else if(temp == "秘薬") {
      gacha_output = "秘薬をGETしました。";
    }else {
      gacha_output = "GETできず、、、";
    }
    //setTimeout("blink()", 500);
  }
  result.style.margin = "50px";
  result.innerHTML = gacha_output; 
}

function blink() {
  if (result.style.visibility == "visible") {
    result.style.visibility = "hidden";
  }else {
    //result.innerHTML = "";
    result.style.visibility = "visible";
  }
};
gacha_button.addEventListener('click',gacha,false);



(function () {
  //gacha_button.onclick = gacha;

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
