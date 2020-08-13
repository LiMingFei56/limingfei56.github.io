<map version="freeplane 1.8.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="Dart" FOLDED="false" ID="ID_481777079" CREATED="1597307210965" MODIFIED="1597307221394" STYLE="oval">
<font SIZE="18"/>
<hook NAME="MapStyle">
    <properties edgeColorConfiguration="#808080ff,#ff0000ff,#0000ffff,#00ff00ff,#ff00ffff,#00ffffff,#7c0000ff,#00007cff,#007c00ff,#7c007cff,#007c7cff,#7c7c00ff" fit_to_viewport="false"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node" STYLE="oval" UNIFORM_SHAPE="true" VGAP_QUANTITY="24.0 pt">
<font SIZE="24"/>
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="default" ICON_SIZE="12.0 pt" COLOR="#000000" STYLE="fork">
<font NAME="SansSerif" SIZE="10" BOLD="false" ITALIC="false"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details"/>
<stylenode LOCALIZED_TEXT="defaultstyle.attributes">
<font SIZE="9"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.note" COLOR="#000000" BACKGROUND_COLOR="#ffffff" TEXT_ALIGN="LEFT"/>
<stylenode LOCALIZED_TEXT="defaultstyle.floating">
<edge STYLE="hide_edge"/>
<cloud COLOR="#f0f0f0" SHAPE="ROUND_RECT"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="styles.topic" COLOR="#18898b" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subtopic" COLOR="#cc3300" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subsubtopic" COLOR="#669900">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.important">
<icon BUILTIN="yes"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" COLOR="#000000" STYLE="oval" SHAPE_HORIZONTAL_MARGIN="10.0 pt" SHAPE_VERTICAL_MARGIN="10.0 pt">
<font SIZE="18"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,1" COLOR="#0033ff">
<font SIZE="16"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,2" COLOR="#00b439">
<font SIZE="14"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,3" COLOR="#990000">
<font SIZE="12"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,4" COLOR="#111111">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,5"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,6"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,7"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,8"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,9"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,10"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,11"/>
</stylenode>
</stylenode>
</map_styles>
</hook>
<hook NAME="AutomaticEdgeColor" COUNTER="20" RULE="ON_BRANCH_CREATION"/>
<node TEXT="classes" POSITION="left" ID="ID_1838809241" CREATED="1594882919388" MODIFIED="1597307366099">
<edge COLOR="#ff0000"/>
<node TEXT=" constant constructors." ID="ID_633935361" CREATED="1594882952254" MODIFIED="1594882952957">
<node TEXT="const ImmutablePoint(2, 2)" ID="ID_1806467373" CREATED="1594882960445" MODIFIED="1594882961069"/>
</node>
<node TEXT="runtimeType" ID="ID_1483319605" CREATED="1594882988801" MODIFIED="1594882989374"/>
<node TEXT="Instance variables " FOLDED="true" ID="ID_137892256" CREATED="1594883029034" MODIFIED="1594883038360">
<node TEXT="initialized null" ID="ID_959512353" CREATED="1594883061449" MODIFIED="1594883072008"/>
<node TEXT="implicit getter and setter" ID="ID_1512568903" CREATED="1594883072823" MODIFIED="1594883091399"/>
</node>
<node TEXT="Constructors" FOLDED="true" ID="ID_1496236651" CREATED="1594883095769" MODIFIED="1594883101609">
<node TEXT=" Named constructors" FOLDED="true" ID="ID_1918194361" CREATED="1594883175389" MODIFIED="1594883176748">
<node TEXT="  Point.origin() {     x = 0;     y = 0;   }" ID="ID_956582006" CREATED="1594883201166" MODIFIED="1594883254855"/>
</node>
<node TEXT="Default constructors" ID="ID_1895291596" CREATED="1594883211296" MODIFIED="1594883211557"/>
<node TEXT="Constructors aren’t inherited" ID="ID_1776163317" CREATED="1594883212559" MODIFIED="1594883219029"/>
<node TEXT="Point(this.x, this.y);" ID="ID_1898802914" CREATED="1594883238895" MODIFIED="1594883239574"/>
<node TEXT="Invoking a non-default superclass constructor" FOLDED="true" ID="ID_244109798" CREATED="1594883405365" MODIFIED="1594883406099">
<node TEXT="initializer list" FOLDED="true" ID="ID_1333411798" CREATED="1594883414276" MODIFIED="1594883415053">
<node TEXT="Employee.fromJson(Map data) : i = data[&apos;i&apos;], super.fromJson(data[&apos;name&apos;])" ID="ID_1179903755" CREATED="1594883460997" MODIFIED="1594883737469"/>
</node>
<node TEXT="superclass’s no-arg constructor" ID="ID_726407907" CREATED="1594883415483" MODIFIED="1594883421099"/>
<node TEXT="main class’s no-arg constructor" ID="ID_262971631" CREATED="1594883421622" MODIFIED="1594883426612"/>
</node>
<node TEXT="Redirecting constructors" FOLDED="true" ID="ID_560149536" CREATED="1594883761804" MODIFIED="1594883762179">
<node TEXT="this" ID="ID_78983993" CREATED="1594883780447" MODIFIED="1594883781232"/>
</node>
<node TEXT="Constant constructors" ID="ID_1934982101" CREATED="1594883775790" MODIFIED="1594883776181"/>
<node TEXT="Factory constructors" FOLDED="true" ID="ID_1630108994" CREATED="1594883800177" MODIFIED="1594883800514">
<node TEXT="factory" ID="ID_57314945" CREATED="1594883801786" MODIFIED="1594883803898"/>
</node>
</node>
<node TEXT="Methods" FOLDED="true" ID="ID_71324402" CREATED="1594883834860" MODIFIED="1594883835588">
<node TEXT="Instance methods" ID="ID_1048078771" CREATED="1594883841058" MODIFIED="1594883841700"/>
<node TEXT="Getters and setters" FOLDED="true" ID="ID_1873302023" CREATED="1594883842342" MODIFIED="1594883847436">
<node TEXT="double get right =&gt; left + width" ID="ID_741160689" CREATED="1594883852006" MODIFIED="1594883852860"/>
<node TEXT="set right(double value) =&gt; left = value - width" ID="ID_32490123" CREATED="1594883853372" MODIFIED="1594883861205"/>
</node>
<node TEXT="Abstract methods" ID="ID_500024044" CREATED="1594883889181" MODIFIED="1594883889654"/>
</node>
<node TEXT="Abstract classes" ID="ID_714528684" CREATED="1594883898800" MODIFIED="1594883899102"/>
<node TEXT="Implicit interfaces" ID="ID_1677205333" CREATED="1594883910515" MODIFIED="1594883911046"/>
<node TEXT="Extending a class" ID="ID_606164856" CREATED="1594883923800" MODIFIED="1594883924215"/>
<node TEXT="Overriding members" ID="ID_141201134" CREATED="1594883930845" MODIFIED="1594883931423"/>
<node TEXT="Overridable operators" FOLDED="true" ID="ID_1873516983" CREATED="1594883932002" MODIFIED="1594883936287">
<node TEXT=" Vector operator +(Vector v) =&gt; Vector(x + v.x, y + v.y)" ID="ID_368170421" CREATED="1594883949604" MODIFIED="1594883950535"/>
</node>
<node TEXT="noSuchMethod" ID="ID_1451018662" CREATED="1594883964597" MODIFIED="1594883964912"/>
<node TEXT="Extension methods" FOLDED="true" ID="ID_1684740786" CREATED="1594883971057" MODIFIED="1594883971312">
<node ID="ID_961931833" CREATED="1594884055473" MODIFIED="1594884071916"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      extension NumberParsing on String {
    </p>
    <p>
      &#160;&#160;int parseInt() {
    </p>
    <p>
      &#160;&#160;&#160;&#160;return int.parse(this);
    </p>
    <p>
      &#160;&#160;}
    </p>
    <p>
      &#160;&#160;// &#183;&#183;&#183;
    </p>
    <p>
      }
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="Class variables and methods" FOLDED="true" ID="ID_1679052671" CREATED="1594884292579" MODIFIED="1594884293242">
<node TEXT="static" ID="ID_560142020" CREATED="1594884294271" MODIFIED="1594884296226"/>
</node>
</node>
<node TEXT="Enumerated types" FOLDED="true" POSITION="left" ID="ID_113951292" CREATED="1594884085937" MODIFIED="1597307366100">
<edge COLOR="#0000ff"/>
<node TEXT="enum Color { red, green, blue }" ID="ID_141165060" CREATED="1594884092485" MODIFIED="1594884093132"/>
</node>
<node TEXT="Adding features to a class: mixins" FOLDED="true" POSITION="left" ID="ID_1819163937" CREATED="1594884120397" MODIFIED="1597307366101">
<edge COLOR="#00ff00"/>
<node TEXT="with MixinsClassName" ID="ID_1551872390" CREATED="1594884230898" MODIFIED="1594884261897"/>
<node TEXT="mixin ClassName" ID="ID_668343424" CREATED="1594884240539" MODIFIED="1594884249233"/>
<node TEXT="mixin MusicalPerformer on Musician" ID="ID_259336234" CREATED="1594884275411" MODIFIED="1594884276985"/>
</node>
<node TEXT="Generics" FOLDED="true" POSITION="left" ID="ID_1696013113" CREATED="1594884308408" MODIFIED="1597307366101">
<edge COLOR="#ff00ff"/>
<node TEXT="Restricting the parameterized type" ID="ID_1253829782" CREATED="1594884524947" MODIFIED="1594884525713"/>
</node>
<node TEXT="Libraries and visibility" FOLDED="true" POSITION="left" ID="ID_1825680645" CREATED="1594884549466" MODIFIED="1597307366102">
<edge COLOR="#00ffff"/>
<node TEXT="import" ID="ID_84359822" CREATED="1594884558415" MODIFIED="1594884559082"/>
<node TEXT="import as" ID="ID_1911803684" CREATED="1594884563660" MODIFIED="1594884565330"/>
<node TEXT="import show" ID="ID_1399054585" CREATED="1594884568691" MODIFIED="1594884570362"/>
<node TEXT="import hide" ID="ID_1445062114" CREATED="1594884570789" MODIFIED="1594884574074"/>
<node TEXT="import deferred as" ID="ID_559981016" CREATED="1594884579955" MODIFIED="1594884589027"/>
</node>
<node TEXT="Asynchrony support" FOLDED="true" POSITION="left" ID="ID_1268901685" CREATED="1594884596579" MODIFIED="1597307366103">
<edge COLOR="#7c0000"/>
<node TEXT="Future" ID="ID_1694337093" CREATED="1594884598208" MODIFIED="1594884600995"/>
<node TEXT="Stream" ID="ID_1494564812" CREATED="1594884601525" MODIFIED="1594884605635"/>
</node>
<node TEXT="Generators" FOLDED="true" POSITION="left" ID="ID_732328554" CREATED="1594884618483" MODIFIED="1597307366103">
<edge COLOR="#00007c"/>
<node TEXT="Synchronous - Iterable" ID="ID_308621994" CREATED="1594884636211" MODIFIED="1594884651101"/>
<node TEXT="Asynchronous - Stream" ID="ID_1887476656" CREATED="1594884637623" MODIFIED="1594884658173"/>
</node>
<node TEXT="Callable classes" FOLDED="true" POSITION="left" ID="ID_1701698985" CREATED="1594884682783" MODIFIED="1597307366104">
<edge COLOR="#007c00"/>
<node TEXT="实现call函数" ID="ID_577787135" CREATED="1594884684437" MODIFIED="1594884699408"/>
<node TEXT="Class() 返回call函数" ID="ID_1713611319" CREATED="1594884711757" MODIFIED="1594884724031"/>
</node>
<node TEXT="Isolates" POSITION="left" ID="ID_891689620" CREATED="1594884730097" MODIFIED="1597307366105">
<edge COLOR="#7c007c"/>
</node>
<node TEXT="Typedefs" POSITION="left" ID="ID_562169281" CREATED="1594884731058" MODIFIED="1597307366105">
<edge COLOR="#007c7c"/>
</node>
<node TEXT="Metadata" POSITION="left" ID="ID_918564618" CREATED="1594884744497" MODIFIED="1597307366106">
<edge COLOR="#7c7c00"/>
</node>
<node TEXT="Comments" FOLDED="true" POSITION="left" ID="ID_1549459156" CREATED="1594884753225" MODIFIED="1597307366108">
<edge COLOR="#ff0000"/>
<node TEXT="//" ID="ID_1908099907" CREATED="1594884774483" MODIFIED="1594884775723"/>
<node TEXT="/* */" ID="ID_1665131837" CREATED="1594884767825" MODIFIED="1594884772186"/>
<node TEXT="///" ID="ID_298620346" CREATED="1594884754128" MODIFIED="1594884755681"/>
</node>
<node TEXT="https://dart.dev/guides/language/language-tour" POSITION="right" ID="ID_1085541971" CREATED="1594878978742" MODIFIED="1597307384586">
<edge COLOR="#0000ff"/>
</node>
<node TEXT="concepts" FOLDED="true" POSITION="right" ID="ID_292003435" CREATED="1594878899005" MODIFIED="1597307384593">
<edge COLOR="#00ff00"/>
<node TEXT="所有都是对象, 继承自Object" ID="ID_1535113733" CREATED="1594878907347" MODIFIED="1594878920525"/>
<node TEXT="infer types" ID="ID_1000564342" CREATED="1594878955764" MODIFIED="1594878990335"/>
<node TEXT="type safety" ID="ID_563737492" CREATED="1594888047999" MODIFIED="1594888053739"/>
<node TEXT="null safety" ID="ID_1160708008" CREATED="1594888061833" MODIFIED="1594888066898"/>
<node TEXT="generic type" ID="ID_1434943509" CREATED="1594879203715" MODIFIED="1594879212976"/>
<node TEXT="top-level functions and variables" ID="ID_1818267784" CREATED="1594879217026" MODIFIED="1594879275201"/>
<node TEXT="not support public, protected, private" FOLDED="true" ID="ID_513653389" CREATED="1594879284140" MODIFIED="1594879330454">
<node TEXT="使用`_`开头, 代表私有" ID="ID_1797862884" CREATED="1594879344181" MODIFIED="1594879356549"/>
</node>
<node TEXT="expressions and statement" ID="ID_1559949167" CREATED="1594879518688" MODIFIED="1594879531850"/>
<node TEXT="warnings and errors" ID="ID_1185021455" CREATED="1594879572874" MODIFIED="1594879582829"/>
<node TEXT="支持位运算" ID="ID_580072127" CREATED="1594880682541" MODIFIED="1594880688491"/>
</node>
<node TEXT="Variables" FOLDED="true" POSITION="right" ID="ID_1394258505" CREATED="1594879589641" MODIFIED="1597307384594">
<edge COLOR="#ff00ff"/>
<node TEXT="var" ID="ID_682070002" CREATED="1594879741257" MODIFIED="1594879744481"/>
<node TEXT="dynamic" ID="ID_1714197612" CREATED="1594879744979" MODIFIED="1594879747665"/>
<node TEXT="String" ID="ID_643925883" CREATED="1594879748322" MODIFIED="1594879750353"/>
<node TEXT="final" ID="ID_1886359043" CREATED="1594879802742" MODIFIED="1594879806291"/>
<node TEXT="const 编译时常量" FOLDED="true" ID="ID_623748628" CREATED="1594879808803" MODIFIED="1594879816620">
<node TEXT="如果是class-level, 那么被视为static const" ID="ID_1692864966" CREATED="1594879928435" MODIFIED="1594879954502"/>
<node TEXT="create constant values" FOLDED="true" ID="ID_800103627" CREATED="1594880016561" MODIFIED="1594880017864">
<node TEXT=" const [];" ID="ID_1207973954" CREATED="1594880018311" MODIFIED="1594880029769"/>
<node TEXT=" [1, 2, 3]; // Was const []" ID="ID_1801594843" CREATED="1594880051180" MODIFIED="1594880051874"/>
<node ID="ID_1683832940" CREATED="1594880198587" MODIFIED="1594880280556"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      // Valid compile-time constants as of Dart 2.5.
    </p>
    <p>
      const Object i = 3; // Where i is a const Object with an int value...
    </p>
    <p>
      const list = [i as int]; // Use a typecast.
    </p>
    <p>
      const map = {if (i is int) i: &quot;int&quot;}; // Use is and collection if.
    </p>
    <p>
      const set = {if (list is List&lt;int&gt;) ...list}; // ...and a spread.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node TEXT="默认不初始化 为null" ID="ID_754457876" CREATED="1594879823729" MODIFIED="1594879836259"/>
</node>
<node TEXT="Built-in types" FOLDED="true" POSITION="right" ID="ID_988410773" CREATED="1594880339643" MODIFIED="1597307384596">
<edge COLOR="#00ffff"/>
<node TEXT="numbers" FOLDED="true" ID="ID_1359263795" CREATED="1594880341035" MODIFIED="1594880348161">
<node TEXT="int" FOLDED="true" ID="ID_973531911" CREATED="1594880480310" MODIFIED="1594880482821">
<node TEXT="dart -2^63~-2^63-1" ID="ID_387937184" CREATED="1594880483189" MODIFIED="1594880507206"/>
<node TEXT="js -2^53~-2^53-1" ID="ID_76357030" CREATED="1594880508200" MODIFIED="1594880523438"/>
</node>
<node TEXT="double" FOLDED="true" ID="ID_1310593410" CREATED="1594880527155" MODIFIED="1594880528679">
<node TEXT="IEEE 754 standard." ID="ID_1829169216" CREATED="1594880539049" MODIFIED="1594880540431"/>
<node TEXT="64位" ID="ID_696960950" CREATED="1594880540991" MODIFIED="1594880544943"/>
</node>
</node>
<node TEXT="strings" FOLDED="true" ID="ID_1919995076" CREATED="1594880348472" MODIFIED="1594880351329">
<node TEXT="${expression}" ID="ID_1275510686" CREATED="1594880716629" MODIFIED="1594880718524"/>
<node TEXT="raw string" ID="ID_22617106" CREATED="1594880756654" MODIFIED="1594880865816"/>
<node TEXT="UTF-16 code " ID="ID_1860049232" CREATED="1595398961357" MODIFIED="1595398962602"/>
</node>
<node TEXT="booleans" ID="ID_21767114" CREATED="1594880351941" MODIFIED="1594880354105"/>
<node TEXT="collection" FOLDED="true" ID="ID_166372986" CREATED="1594881224068" MODIFIED="1594881232419">
<node TEXT="spread operator" FOLDED="true" ID="ID_1661178135" CREATED="1594880866158" MODIFIED="1594880869856">
<node TEXT="...list" ID="ID_1695078399" CREATED="1594881344031" MODIFIED="1594881346143"/>
</node>
<node TEXT="null-aware spread operator" FOLDED="true" ID="ID_1900460065" CREATED="1594880870217" MODIFIED="1594880885424">
<node TEXT="...?list" ID="ID_994055872" CREATED="1594881348304" MODIFIED="1594881352439"/>
</node>
<node TEXT="collection if" ID="ID_1869137557" CREATED="1594880933787" MODIFIED="1594880939970"/>
<node TEXT="collection for" ID="ID_1576259448" CREATED="1594880940476" MODIFIED="1594880946276"/>
</node>
<node TEXT="lists" FOLDED="true" ID="ID_819394164" CREATED="1594880354521" MODIFIED="1594880358241">
<node TEXT="[]" ID="ID_650204044" CREATED="1594881240416" MODIFIED="1594881241939"/>
</node>
<node TEXT="sets" FOLDED="true" ID="ID_1346945169" CREATED="1594880362195" MODIFIED="1594880364674">
<node TEXT="{}" ID="ID_1399804312" CREATED="1594881245032" MODIFIED="1594881246859"/>
</node>
<node TEXT="maps" FOLDED="true" ID="ID_1438578285" CREATED="1594880364987" MODIFIED="1594880366450">
<node TEXT="{}" ID="ID_83443793" CREATED="1594881248466" MODIFIED="1594881250061"/>
</node>
<node TEXT="runes" FOLDED="true" ID="ID_38273322" CREATED="1594880366984" MODIFIED="1594880378307">
<node TEXT="Unicode code points of a string" ID="ID_1813017844" CREATED="1594881324574" MODIFIED="1594881325278"/>
</node>
<node TEXT="symbols" FOLDED="true" ID="ID_189096791" CREATED="1594880378740" MODIFIED="1594880381314">
<node TEXT="#radix" ID="ID_1836965290" CREATED="1594881340581" MODIFIED="1594881341798"/>
</node>
</node>
<node TEXT="Function" FOLDED="true" POSITION="right" ID="ID_855925350" CREATED="1594881500564" MODIFIED="1597307384597">
<edge COLOR="#7c0000"/>
<node ID="ID_1545834462" CREATED="1594881505176" MODIFIED="1594881522811"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      bool isNoble(int atomicNumber) {
    </p>
    <p>
      &#160;&#160;return _nobleGases[atomicNumber] != null;
    </p>
    <p>
      }
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="bool isNoble(int atomicNumber) =&gt; {return expr;}" ID="ID_501798601" CREATED="1594881525796" MODIFIED="1594881557021"/>
<node TEXT="Optional parameters" FOLDED="true" ID="ID_57842980" CREATED="1594881663788" MODIFIED="1594881664536">
<node TEXT="Named parameters" ID="ID_1506276706" CREATED="1594881695314" MODIFIED="1594881696081"/>
<node TEXT=" {param1, param2, …}" FOLDED="true" ID="ID_1034536515" CREATED="1594881666615" MODIFIED="1594881724158">
<node TEXT=" @required" ID="ID_1193752100" CREATED="1594881729227" MODIFIED="1594881737914"/>
</node>
<node TEXT="Positional parameters" FOLDED="true" ID="ID_1375866525" CREATED="1594881863974" MODIFIED="1594881864958">
<node TEXT="String say(String from, String msg, [String device])" ID="ID_1929127894" CREATED="1594881866599" MODIFIED="1594881877158"/>
</node>
<node TEXT="Default parameter values" ID="ID_1982659079" CREATED="1594881889097" MODIFIED="1594881889394"/>
</node>
<node TEXT="Functions as first-class objects" ID="ID_1617301212" CREATED="1594882059448" MODIFIED="1594882060432"/>
<node TEXT="Anonymous functions" FOLDED="true" ID="ID_717802802" CREATED="1594882069947" MODIFIED="1594882071104">
<node ID="ID_1699312184" CREATED="1594882071560" MODIFIED="1594882087615"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ([[Type] param1[, &#8230;]]) {
    </p>
    <p>
      &#160;&#160;codeBlock;
    </p>
    <p>
      };
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node TEXT="Scope" FOLDED="true" POSITION="right" ID="ID_1847229385" CREATED="1594882227199" MODIFIED="1597307384597">
<edge COLOR="#00007c"/>
<node TEXT="Lexical scope" ID="ID_675486895" CREATED="1594882251301" MODIFIED="1594882256581"/>
<node TEXT="Lexical closures" ID="ID_1428368622" CREATED="1594882256967" MODIFIED="1594882262309"/>
</node>
<node TEXT="Operators" FOLDED="true" POSITION="right" ID="ID_515181780" CREATED="1594882448164" MODIFIED="1597307384598">
<edge COLOR="#007c00"/>
<node TEXT="Arithmetic operators" ID="ID_1813540100" CREATED="1594882456465" MODIFIED="1594882457147"/>
<node TEXT="Equality and relational operators" ID="ID_1874540787" CREATED="1594882469099" MODIFIED="1594882469396"/>
<node TEXT="Type test operators" FOLDED="true" ID="ID_292597670" CREATED="1594882478804" MODIFIED="1594882479116">
<node TEXT="as" ID="ID_1357725070" CREATED="1594882479827" MODIFIED="1594882481628"/>
<node TEXT="is" ID="ID_446045584" CREATED="1594882481991" MODIFIED="1594882482756"/>
<node TEXT="is!" ID="ID_793094046" CREATED="1594882483383" MODIFIED="1594882492052"/>
</node>
<node TEXT="Assignment operators" ID="ID_721172375" CREATED="1594882510214" MODIFIED="1594882510581"/>
<node TEXT="Logical operators" ID="ID_226750956" CREATED="1594882520461" MODIFIED="1594882520749"/>
<node TEXT="Bitwise and shift operators" ID="ID_1538203278" CREATED="1594882526350" MODIFIED="1594882526565"/>
<node TEXT="Conditional expressions" FOLDED="true" ID="ID_1659161170" CREATED="1594882533020" MODIFIED="1594882533598">
<node TEXT="condition ? expr1 : expr2" ID="ID_1571304079" CREATED="1594882534754" MODIFIED="1594882541422"/>
<node TEXT="expr1 ?? expr2" ID="ID_1997649778" CREATED="1594882542272" MODIFIED="1594882546478"/>
</node>
<node TEXT="Cascade notation (..)" ID="ID_586904715" CREATED="1594882562002" MODIFIED="1594882562303"/>
<node TEXT="Other operators" FOLDED="true" ID="ID_164805291" CREATED="1594882582809" MODIFIED="1594882583135">
<node TEXT="()" ID="ID_843595357" CREATED="1594882583693" MODIFIED="1594882585911"/>
<node TEXT="[]" ID="ID_239720024" CREATED="1594882586190" MODIFIED="1594882588368"/>
<node TEXT="." ID="ID_1554368428" CREATED="1594882589968" MODIFIED="1594882591632"/>
<node TEXT="?." ID="ID_792247538" CREATED="1594882592026" MODIFIED="1594882595000"/>
</node>
</node>
<node TEXT="Control flow statements" FOLDED="true" POSITION="right" ID="ID_1488269877" CREATED="1594882610291" MODIFIED="1597307384599">
<edge COLOR="#7c007c"/>
<node TEXT="if and else" ID="ID_889106131" CREATED="1594882612894" MODIFIED="1594882616104"/>
<node TEXT="for loops" FOLDED="true" ID="ID_301472849" CREATED="1594882616377" MODIFIED="1594882619376">
<node TEXT="for ( ; ;)" ID="ID_1608256607" CREATED="1594882783373" MODIFIED="1594882787941"/>
<node TEXT="for (var in) each" ID="ID_437741187" CREATED="1594882788456" MODIFIED="1594882806486"/>
</node>
<node TEXT="while and do-while loops" ID="ID_1809362901" CREATED="1594882619651" MODIFIED="1594882626126"/>
<node TEXT="break and continue" ID="ID_837433255" CREATED="1594882626422" MODIFIED="1594882635625"/>
<node TEXT="switch and case" FOLDED="true" ID="ID_1423290824" CREATED="1594882636130" MODIFIED="1594882640489">
<node TEXT="Empty case falls through" ID="ID_168496411" CREATED="1594882729052" MODIFIED="1594882751572"/>
<node TEXT="continue statement" ID="ID_1031436044" CREATED="1594882761443" MODIFIED="1594882765501"/>
</node>
<node TEXT="assert" ID="ID_1584453161" CREATED="1594882640754" MODIFIED="1594882649089"/>
<node TEXT="try-catch" FOLDED="true" ID="ID_614108124" CREATED="1594882655218" MODIFIED="1594882659681">
<node TEXT="try {} on Ecception catch (e) {} catch (e) {} finally {}" ID="ID_1945482551" CREATED="1594882860504" MODIFIED="1595487466483"/>
</node>
<node TEXT="throw" FOLDED="true" ID="ID_1246940630" CREATED="1594882660348" MODIFIED="1594882661625">
<node TEXT="throw &apos;Out of llamas!&apos;;" ID="ID_29620608" CREATED="1594882852349" MODIFIED="1594882853287"/>
<node TEXT="throw FormatException(&apos;Expected at least 1 section&apos;);" ID="ID_1960866700" CREATED="1594882853877" MODIFIED="1594882857976"/>
</node>
</node>
</node>
</map>
