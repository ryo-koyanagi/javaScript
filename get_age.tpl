<h1>年齢算出プログラム</h1>
<p>誕生日：<input type="text" name="birthday" id="birthday" value="1992-02-05"></p>
<p><input type="button" value="計算" onclick="getAge();"></p>
<p>現在の年齢 <span id="age"> XXX</span>歳</p>


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

</script>

