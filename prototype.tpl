<script>

var C = function (name) {
      this.name = name;
};

C.prototype.x ='xxx';

var c1 = new C('hoge');
var c2 = new C('fuge');

C.prototype.y = 'yyy';

C.prototype = {z: 'zzz'};
var c3 = new C('piyo');



function SampleA() {}
SampleA.prototype.a = 'a';

var SampleB = function() {}
SampleB.prototype = new SampleA();

var sample_obj = new SampleB();

console.log(sample_obj);

</script>

