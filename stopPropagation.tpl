<h1 id="title">特設召喚</h1>
<p><b>~お試しガチャ~</p>
<div class="contents" id="contents_all">contents_all<br><br>
  <form id="gacha_contents">gacha_contents<br><br>
    <input type="button" value="召喚" id="gacha_button" title="召喚します" >
    <input type="submit" value="送信" id="submit">
  </form>
</div>
<h3 id="result"></h3>


<script type="text/javascript">
var result = document.getElementById("result"),
    gacha_button = document.getElementById('gacha_button'),
    gacha_contents = document.getElementById('gacha_contents'),
    contents_all = document.getElementById('contents_all');

function gacha (e) {
  var random_int = Math.floor(Math.random() * 10),
      gacha_output;
  
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
  }
  result.style.margin = "50px";
  result.innerHTML = gacha_output;
  }

gacha_button.addEventListener('click',gacha,false);
gacha_contents.addEventListener('click',function(e){e.stopPropagation();console.log("koyanagi");},false);
contents_all.addEventListener('click',function(){console.log(123)},false);


(function () {
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
