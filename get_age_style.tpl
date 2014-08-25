<h1 id="title">年齢算出プログラム</h1>
<p id="birthday_text">誕生日：</p><input type="text" name="birthday" id="birthday" value="1992-02-05">
<p><input type="button" value="計算" id="calc_button"></p>
<p id="age_text">現在の年齢 <span id="age"> XXX</span>歳</p>
<p><input type="button" value="style変更" id="css_button"></p>


<script type="text/javascript">
function getAge() {
  var birthday = document.getElementById('birthday').value;
  var d1 = new Date(birthday);
  var d2 = new Date();
  var diff = d2.getTime() - d1.getTime();
  var daysPast = Math.floor(diff / (1000 * 60 * 60 * 24));
  var age = Math.floor(daysPast / 365);
  document.getElementById('age').innerHTML = age;
}

function style() {
  var title = document.getElementById('title');
  var birthday = document.getElementById('birthday_text');
  var age = document.getElementById('age_text');
  title.style.color = "lime";
  birthday.style.borderStyle = "solid";
  birthday.style.borderColor = "lightgreen";
  birthday.style.width = "64px";
  age.style.height = "50px";
}

document.getElementById('calc_button').onclick = getAge;
style();
</script>

