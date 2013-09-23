<a id="Datasets"> </a>
#### Datasets

<a id="ius2008"> </a>
##### ius2008: Internet Usage Survey
###### Description:
<p>This dataset contains data gathered in a survey of Internet usage in Serbian population in the period from April to May 2008. During 90-day period, there were gathered 709 valid responses via on-line distributed questionnaire.</p>
###### Details:
<p>  However, this dataset does not contain the original data, as some random noise is added afterwards, in order to demonstrate functionality of  <em>rapport</em>  helpers. </p>
<p>  Dataset variables can be divided into 3 sets:  <em>demographic data</em>  ,  <em>Internet usage aspects</em>  and  <em>application usage/content preference</em>  . </p>
<p>  <strong>Demographic variables</strong> </p>
<ul>  <li>   <p>    <em>gender</em>    - respondent&apos;s gender (factor with 2 levels: &quot;male&quot; and &quot;female&quot;)   </p>  </li>  <li>   <p>    <em>age</em>    - respondent&apos;s age   </p>  </li>  <li>   <p>    <em>dwell</em>    - dwelling (factor with 3 levels: &quot;village&quot;, &quot;small town&quot; and &quot;city&quot;)   </p>  </li>  <li>   <p>    <em>student</em>    - is respondent a student? (factor with 2 levels: &quot;no&quot; and &quot;yes&quot;)   </p>  </li>  <li>   <p>    <em>partner</em>    - partnership status (factor with 3 levels: &quot;single&quot;, &quot;in a relationship&quot; and &quot;married&quot;)   </p>  </li> </ul>
<p>  <strong>Internet usage aspects</strong> </p>
<p>Following variables depict various aspects of Internet usage:</p>
<ul>  <li>   <p>    <em>edu</em>    - time spent on-line in educational purposes (expressed in hours)   </p>  </li>  <li>   <p>    <em>leisure</em>    - time spent on-line in leisure time (expressed in hours)   </p>  </li>  <li>   <p>    <em>net.required</em>    - is Internet access required for your profession? (factor with 5 levels: &quot;never&quot;, &quot;rarely&quot;, &quot;sometimes&quot;, &quot;often&quot; and &quot;always&quot;)   </p>  </li>  <li>   <p>    <em>net.pay</em>    - who pays for Internet access? (factor with 5 levels: &quot;parents&quot;, &quot;school/faculty&quot;, &quot;employer&quot;, &quot;self-funded&quot; and &quot;other&quot;)   </p>  </li>  <li>   <p>    <em>net.use</em>    - how long is respondent using Internet? (ordered factor with 7 levels, ranging from &quot;less than 6 months&quot; to &quot;more than 5 years&quot;)   </p>  </li> </ul>
<p>  <strong>Application usage and on-line content preference</strong> </p>
<p>These variables include data on the use of Internet applications and content available on the Internet. Practically, they contain responses from a set of 8 questions on a five-point Likert scale.</p>
<ul>  <li>   <p>    <em>chatim</em>    - usage of chat and/or instant messaging applications   </p>  </li>  <li>   <p>    <em>game</em>    - usage of on-line games   </p>  </li>  <li>   <p>    <em>surf</em>    - frequency of web-surfing   </p>  </li>  <li>   <p>    <em>email</em>    - usage of e-mail applications   </p>  </li>  <li>   <p>    <em>download</em>    - frequency of file downloading   </p>  </li>  <li>   <p>    <em>forum</em>    - attendance at web-forums   </p>  </li>  <li>   <p>    <em>socnet</em>    - usage of social networking services   </p>  </li>  <li>   <p>    <em>xxx</em>    - traffic to pornographic websites   </p>  </li> </ul> 
###### Examples:
<div class="highlight"><pre><code class="r">rapport(&quot;example&quot;, ius2008, var = &quot;it.leisure&quot;)
</code></pre>
</div>


<a id="Generic-graph-functions"> </a>
#### Generic graph functions

<a id="rp.barplot"> </a>
##### rp.barplot: Barplot
###### Description:
<p>  This function is a wrapper around  <code>barchart</code>  which operates only on factors with optional facet. </p>
###### Usage:
<div class="highlight">
	<pre><code class="r">rp.barplot(x, facet = NULL, data = NULL, groups = FALSE,    percent = FALSE, horizontal = TRUE, ...)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>x</code>
  </td>
  <td>
   <p>a numeric variable</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>facet</code>
  </td>
  <td>
   <p>an optional categorical variable to make
facets by</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>data</code>
  </td>
  <td>
   <p>an optional data frame from which the
variables should be taken</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>groups</code>
  </td>
  <td>
   <p>
    see
    <code>xyplot</code>
   </p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>percent</code>
  </td>
  <td>
   <p>
    an option to show percentages (100
category) instead of number of cases. Handy with
    <code>groups=TRUE</code>
    . Default value:
    <code>FALSE</code>
    without
groups,
    <code>TRUE</code>
    with groups.
   </p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>horizontal</code>
  </td>
  <td>
   <p>
    see
    <code>xyplot</code>
   </p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>...</code>
  </td>
  <td>
   <p>
    additional parameters to
    <code>barchart</code>
   </p>
  </td>
 </tr>
</table>
###### Examples:
<div class="highlight"><pre><code class="r">rp.barplot(ius2008$game)
rp.barplot(ius2008$game, horizontal = FALSE)
rp.barplot(ius2008$game, facet = ius2008$gender)
rp.barplot(ius2008$game, facet = ius2008$dwell, horizontal = FALSE, layout = c(1,3))
rp.barplot(ius2008$game, facet = ius2008$gender, groups = TRUE)
with(ius2008, rp.barplot(game, facet = gender))
rp.barplot(gender, data = ius2008)
rp.barplot(dwell, gender, ius2008)
</code></pre>
</div>

<a id="rp.boxplot"> </a>
##### rp.boxplot: Boxplot
###### Description:
<p>  This function is a wrapper around  <code>bwplot</code>  which operates only on numeric variables with optional facet. </p>
###### Usage:
<div class="highlight">
	<pre><code class="r">rp.boxplot(x, y = NULL, facet = NULL, data = NULL, ...)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>x</code>
  </td>
  <td>
   <p>a factor variable</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>y</code>
  </td>
  <td>
   <p>a numeric variable</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>facet</code>
  </td>
  <td>
   <p>an optional categorical variable to make
facets by</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>data</code>
  </td>
  <td>
   <p>an optional data frame from which the
variables should be taken</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>...</code>
  </td>
  <td>
   <p>
    additional parameters to
    <code>bwplot</code>
   </p>
  </td>
 </tr>
</table>
###### Examples:
<div class="highlight"><pre><code class="r">rp.boxplot(ius2008$age)
rp.boxplot(ius2008$age, ius2008$gender)
rp.boxplot(ius2008$age, ius2008$dwell, facet = ius2008$gender)
with(ius2008, rp.scatterplot(age, dwell, facet = gender))
rp.boxplot(age, dwell, data = ius2008)
rp.boxplot(age, dwell, gender, ius2008)
</code></pre>
</div>

<a id="rp.densityplot"> </a>
##### rp.densityplot: Density plot
###### Description:
<p>  This function is a wrapper around  <code>densityplot</code>  which operates only on numeric vectors with optional facet. </p>
###### Usage:
<div class="highlight">
	<pre><code class="r">rp.densityplot(x, facet = NULL, data = NULL, ...)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>x</code>
  </td>
  <td>
   <p>a numeric variable</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>facet</code>
  </td>
  <td>
   <p>an optional categorical variable to make
facets by</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>data</code>
  </td>
  <td>
   <p>an optional data frame from which the
variables should be taken</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>...</code>
  </td>
  <td>
   <p>
    additional parameters to
    <code>densityplot</code>
   </p>
  </td>
 </tr>
</table>
###### Examples:
<div class="highlight"><pre><code class="r">rp.densityplot(ius2008$edu)
rp.densityplot(ius2008$edu, facet = ius2008$gender)
rp.densityplot(ius2008$edu, ius2008$dwell)
with(ius2008, rp.densityplot(edu, facet = gender))
rp.densityplot(edu, data = ius2008)
rp.densityplot(edu, gender, ius2008)
</code></pre>
</div>

<a id="rp.dotplot"> </a>
##### rp.dotplot: Dotplot
###### Description:
<p>  This function is a wrapper around  <code>dotplot</code>  which operates only on factors with optional facet. </p>
###### Usage:
<div class="highlight">
	<pre><code class="r">rp.dotplot(x, facet = NULL, data = NULL, groups = FALSE,    horizontal = TRUE, ...)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>x</code>
  </td>
  <td>
   <p>a factor variable</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>facet</code>
  </td>
  <td>
   <p>an optional categorical variable to make
facets by</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>data</code>
  </td>
  <td>
   <p>an optional data frame from which the
variables should be taken</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>groups</code>
  </td>
  <td>
   <p>
    see
    <code>xyplot</code>
   </p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>horizontal</code>
  </td>
  <td>
   <p>
    see
    <code>xyplot</code>
   </p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>...</code>
  </td>
  <td>
   <p>
    additional parameters to
    <code>dotplot</code>
   </p>
  </td>
 </tr>
</table>
###### Examples:
<div class="highlight"><pre><code class="r">rp.dotplot(ius2008$game)
rp.dotplot(ius2008$game, horizontal = FALSE)
rp.dotplot(ius2008$game, facet = ius2008$dwell)
rp.dotplot(ius2008$dwell, facet = ius2008$gender, horizontal = FALSE)
rp.dotplot(ius2008$game, facet = ius2008$dwell, groups = TRUE)
with(ius2008, rp.dotplot(gender, facet = dwell))
rp.dotplot(game, data = ius2008)
rp.dotplot(dwell, gender, ius2008)
</code></pre>
</div>

<a id="rp.graph.check"> </a>
##### rp.graph.check: Input cheks (internal)
###### Description:
<p>  Internal function used by eg.  <code>rp.histogram</code>  . </p>
###### Usage:
<div class="highlight">
	<pre><code class="r">rp.graph.check(x, facet = NULL, subset = NULL, ...)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>x</code>
  </td>
  <td>
   <p>a variable</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>facet</code>
  </td>
  <td>
   <p>if facet set</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>subset</code>
  </td>
  <td>
   <p>if subset set</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>...</code>
  </td>
  <td>
   <p>other parameters</p>
  </td>
 </tr>
</table>
<a id="rp.hist"> </a>
##### rp.hist: Histogram
###### Description:
<p>  This function is a wrapper around  <code>histogram</code>  which operates only on numeric vectors with optional facet. </p>
###### Usage:
<div class="highlight">
	<pre><code class="r">rp.hist(x, facet = NULL, data = NULL,    kernel.smooth = FALSE, ...)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>x</code>
  </td>
  <td>
   <p>a numeric variable</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>facet</code>
  </td>
  <td>
   <p>an optional categorical variable to make
facets by</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>data</code>
  </td>
  <td>
   <p>an optional data frame from which the
variables should be taken</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>kernel.smooth</code>
  </td>
  <td>
   <p>add kernel density plot?</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>...</code>
  </td>
  <td>
   <p>
    additional parameters to
    <code>histogram</code>
   </p>
  </td>
 </tr>
</table>
###### Examples:
<div class="highlight"><pre><code class="r">rp.hist(ius2008$edu)
rp.hist(ius2008$edu, facet=ius2008$gender)
rp.hist(ius2008$edu, ius2008$dwell)
rp.hist(ius2008$edu, kernel.smooth=TRUE)
with(ius2008, rp.hist(edu, facet = gender))
rp.hist(edu, data = ius2008)
rp.hist(edu, gender, ius2008)
</code></pre>
</div>

<a id="rp.lineplot"> </a>
##### rp.lineplot: Lineplot
###### Description:
<p>  This function is a wrapper around  <code>xyplot</code>  with custom panel. Only numeric variables are accepted with optional facet. </p>
###### Usage:
<div class="highlight">
	<pre><code class="r">rp.lineplot(x, y, facet = NULL, data = NULL,    groups = NULL, ...)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>x</code>
  </td>
  <td>
   <p>a numeric variable</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>y</code>
  </td>
  <td>
   <p>a numeric variable</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>facet</code>
  </td>
  <td>
   <p>an optional categorical variable to make
facets by</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>groups</code>
  </td>
  <td>
   <p>an optional categorical grouping variable</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>data</code>
  </td>
  <td>
   <p>an optional data frame from which the
variables should be taken</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>...</code>
  </td>
  <td>
   <p>
    additional parameters to
    <code>xyplot</code>
   </p>
  </td>
 </tr>
</table>
###### Examples:
<div class="highlight"><pre><code class="r">a &lt;- aggregate(wt~gear, mtcars, mean)
rp.lineplot(a$gear, a$wt)
rp.lineplot(gear, wt, data=a)
## lame demo:
rp.lineplot(1:length(mtcars$hp), mtcars$hp, facet=mtcars$cyl)
## advanced usage
rp.lineplot(partner, age, data = rp.desc(&apos;age&apos;, &apos;partner&apos;, fn = &apos;mean&apos;, data=ius2008)) ## TODO: fix....
rp.lineplot(partner, age, gender, data = rp.desc(&apos;age&apos;, c(&apos;gender&apos;, &apos;partner&apos;), fn = &apos;mean&apos;, data=ius2008))
rp.lineplot(partner, age, groups = gender, data=rp.desc(&apos;age&apos;, c(&apos;gender&apos;, &apos;partner&apos;), fn = &apos;mean&apos;, data = ius2008))
## Did you noticed the nasty axis titles? Why not correct those? :)
df &lt;- rp.desc(&apos;age&apos;, &apos;partner&apos;, fn = &apos;mean&apos;, data = ius2008)
lapply(names(df), function(x) rp.label(df[, x]) &lt;&lt;- x)   # nasty solution!
rp.lineplot(partner, age, data = df)
df &lt;- rp.desc(&apos;age&apos;, c(&apos;gender&apos;, &apos;partner&apos;), fn = &apos;mean&apos;, data = ius2008)
lapply(names(df), function(x) rp.label(df[, x]) &lt;&lt;- x)  # nasty solution!
rp.lineplot(partner, age, gender, data = df)
df &lt;- rp.desc(&apos;age&apos;, c(&apos;gender&apos;, &apos;partner&apos;), fn = &apos;mean&apos;, data = ius2008)
lapply(names(df), function(x) rp.label(df[, x]) &lt;&lt;- x)  # nasty solution!
rp.lineplot(partner, age, groups = gender, data = df)
</code></pre>
</div>

<a id="rp.qqplot"> </a>
##### rp.qqplot: Q-Q plot with Theoretical Distribution
###### Description:
<p>  This function is a wrapper around  <code>qqmath</code>  which operates only on a numeric variable with optional facet. </p>
###### Usage:
<div class="highlight">
	<pre><code class="r">rp.qqplot(x, dist = qnorm, facet = NULL, data = NULL,    ...)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>x</code>
  </td>
  <td>
   <p>a numeric variable</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>dist</code>
  </td>
  <td>
   <p>a theoretical distribution</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>facet</code>
  </td>
  <td>
   <p>an optional categorical variable to make
facets by</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>data</code>
  </td>
  <td>
   <p>an optional data frame from which the
variables should be taken</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>...</code>
  </td>
  <td>
   <p>
    additional parameters to
    <code>qqmath</code>
   </p>
  </td>
 </tr>
</table>
###### Examples:
<div class="highlight"><pre><code class="r">rp.qqplot(ius2008$age)
rp.qqplot(ius2008$age, qunif)
rp.qqplot(ius2008$age, qunif, facet = ius2008$gender)
with(ius2008, rp.qqplot(age))
rp.qqplot(age, data = ius2008)
rp.qqplot(age, facet = gender, data = ius2008)
rp.qqplot(age, qunif, gender, ius2008)
rp.qqplot(ius2008$age, panel = function(x) {panel.qqmath(x); panel.qqmathline(x, distribution = qnorm)} )
</code></pre>
</div>

<a id="rp.scatterplot"> </a>
##### rp.scatterplot: Scatterplot
###### Description:
<p>  This function is a wrapper around  <code>xyplot</code>  which operates only on numeric variables with optional facet. </p>
###### Usage:
<div class="highlight">
	<pre><code class="r">rp.scatterplot(x, y, facet = NULL, data = NULL, ...)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>x</code>
  </td>
  <td>
   <p>a numeric variable</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>y</code>
  </td>
  <td>
   <p>a numeric variable</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>facet</code>
  </td>
  <td>
   <p>an optional categorical variable to make
facets by</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>data</code>
  </td>
  <td>
   <p>an optional data frame from which the
variables should be taken</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>...</code>
  </td>
  <td>
   <p>
    additional parameters to
    <code>xyplot</code>
   </p>
  </td>
 </tr>
</table>
###### Examples:
<div class="highlight"><pre><code class="r">rp.scatterplot(ius2008$edu, ius2008$age)
rp.scatterplot(ius2008$edu, ius2008$age, facet=ius2008$gender)
with(ius2008, rp.scatterplot(edu, age, facet = gender))
rp.scatterplot(edu, age, data=ius2008)
rp.scatterplot(edu, age, gender, ius2008)
</code></pre>
</div>


<a id="Generic-helper-functions"> </a>
#### Generic helper functions

<a id="adj.rle"> </a>
##### adj.rle: Adjacent Values Run Length Encoding
###### Description:
<p>  Similar to  <code>rle</code>  function, this function detects &quot;runs&quot; of adjacent integers, and displays vector of run lengths and list of corresponding integer sequences. </p>
###### Usage:
<div class="highlight">
	<pre><code class="r">adj.rle(x)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>x</code>
  </td>
  <td>
   <p>a numeric vector with</p>
  </td>
 </tr>
</table>
###### Returned value:
<p>a list with two elements: vector of run lengths, and
another list of values corresponding to generated
sequences&apos; lengths.</p>
###### References:
<p>
 See original thread for more details
 <a href="http://stackoverflow.com/a/8467446/457898">http://stackoverflow.com/a/8467446/457898</a>
 . Special
thanks to Gabor Grothendieck for this one!
</p>
<a id="alike.integer"> </a>
##### alike.integer: Check integers
###### Description:
<p>  This function tests if given variable &quot;appears&quot; to be an integer. To qualify as such, two conditions need to be satisfied: it should be stored as  <code>numeric</code>  object, and it should pass regular expression test if it consists only of digits. </p>
###### Usage:
<div class="highlight">
	<pre><code class="r">alike.integer(x)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>x</code>
  </td>
  <td>
   <p>a numeric variable that is to be tested</p>
  </td>
 </tr>
</table>
###### Returned value:
<p>a logical value that indicates that tested variable
&quot;looks like&quot; integer</p>
<a id="capitalise"> </a>
##### capitalise: Capitalise String
###### Description:
<p>Capitalises strings in provided character vector</p>
###### Usage:
<div class="highlight">
	<pre><code class="r">capitalise(x)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>x</code>
  </td>
  <td>
   <p>a character vector to capitalise</p>
  </td>
 </tr>
</table>
###### Returned value:
<p>character vector with capitalised string elements</p>
###### Examples:
<div class="highlight"><pre><code class="r">capitalise(c(&quot;foo&quot;, &quot;bar&quot;)) # [1] &quot;Foo&quot; &quot;Bar&quot;</code></pre>
</div>

<a id="catn"> </a>
##### catn: Concatenate with newline
###### Description:
<p>  A simple wrapper for  <code>cat</code>  function that appends newline to output. </p>
###### Usage:
<div class="highlight">
	<pre><code class="r">catn(...)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>...</code>
  </td>
  <td>
   <p>
    arguments to be passed to
    <code>cat</code>
    function
   </p>
  </td>
 </tr>
</table>
###### Returned value:
<p>
 None (invisible
 <code>NULL</code>
 ).
</p>
<a id="is.boolean"> </a>
##### is.boolean: Boolean
###### Description:
<p>Checks if provided object is a boolean i.e. a length-one logical vector.</p>
###### Usage:
<div class="highlight">
	<pre><code class="r">is.boolean(x)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>x</code>
  </td>
  <td>
   <p>an object to check</p>
  </td>
 </tr>
</table>
###### Returned value:
<p>a logical value indicating whether provided object is a
boolean</p>
###### Examples:
<div class="highlight"><pre><code class="r">    is.boolean(TRUE)                # [1] TRUE
    # the following will work on most systems, unless you have tweaked global Rprofile
    is.boolean(T)                   # [1] TRUE
    is.boolean(1)                   # [1] FALSE
    is.string(c(&quot;foo&quot;, &quot;bar&quot;))      # [1] FALSE
</code></pre>
</div>

<a id="is.empty"> </a>
##### is.empty: Empty Value
###### Description:
<p>  Rails-inspired helper that checks if vector values are &quot;empty&quot;, i.e. if it&apos;s:  <code>NULL</code>  , zero-length,  <code>NA</code>  ,  <code>NaN</code>  ,  <code>FALSE</code>  , an empty string or  <code>0</code>  . Note that unlike its native R  <code>is.&lt;something&gt;</code>  sibling functions,  <code>is.empty</code>  is vectorised (hence the &quot;values&quot;). </p>
###### Usage:
<div class="highlight">
	<pre><code class="r">is.empty(x, trim = TRUE, ...)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>x</code>
  </td>
  <td>
   <p>an object to check its emptiness</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>trim</code>
  </td>
  <td>
   <p>
    trim whitespace? (
    <code>TRUE</code>
    by default)
   </p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>...</code>
  </td>
  <td>
   <p>
    additional arguments for
    <code>sapply</code>
   </p>
  </td>
 </tr>
</table>
###### Examples:
<div class="highlight"><pre><code class="r">is.empty(NULL)     # [1] TRUE
is.empty(c())      # [1] TRUE
is.empty(NA)       # [1] TRUE
is.empty(NaN)      # [1] TRUE
is.empty(&quot;&quot;)       # [1] TRUE
is.empty(0)        # [1] TRUE
is.empty(0.00)     # [1] TRUE
is.empty(&quot;    &quot;)   # [1] TRUE
is.empty(&quot;foobar&quot;) # [1] FALSE
is.empty(&quot;    &quot;, trim = FALSE)   # [1] FALSE</code></pre>
</div>

<a id="is.number"> </a>
##### is.number: Numbers
###### Description:
<p>Checks if provided object is a number, i.e. a length-one numeric vector.</p>
###### Usage:
<div class="highlight">
	<pre><code class="r">is.number(x, integer = FALSE)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>x</code>
  </td>
  <td>
   <p>an object to check</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>integer</code>
  </td>
  <td>
   <p>logical: check if number is integer</p>
  </td>
 </tr>
</table>
###### Returned value:
<p>a logical value indicating whether provided object is a
string</p>
###### Examples:
<div class="highlight"><pre><code class="r">is.number(3)              # [1] TRUE
is.number(3:4)            # [1] FALSE
is.number(&quot;3&quot;)            # [1] FALSE
is.number(NaN)            # [1] TRUE
is.number(NA_integer_)    # [1] TRUE</code></pre>
</div>

<a id="is.string"> </a>
##### is.string: Strings
###### Description:
<p>Checks if provided object is a string i.e. a length-one character vector.</p>
###### Usage:
<div class="highlight">
	<pre><code class="r">is.string(x)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>x</code>
  </td>
  <td>
   <p>an object to check</p>
  </td>
 </tr>
</table>
###### Returned value:
<p>a logical value indicating whether provided object is a
string</p>
###### Examples:
<div class="highlight"><pre><code class="r">is.string(&quot;foobar&quot;)          # [1] TRUE
    is.string(1)                 # [1] FALSE
    is.string(c(&quot;foo&quot;, &quot;bar&quot;))   # [1] FALSE</code></pre>
</div>

<a id="messagef"> </a>
##### messagef: Send Message with String Interpolated Messages
###### Description:
<p>  Combines  <code>warning</code>  with  <code>sprintf</code>  thus allowing string interpolated diagnostic messages. </p>
###### Usage:
<div class="highlight">
	<pre><code class="r">messagef(s, ...)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>s</code>
  </td>
  <td>
   <p>a character vector of format strings</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>...</code>
  </td>
  <td>
   <p>values to be interpolated</p>
  </td>
 </tr>
</table>
###### Examples:
<div class="highlight"><pre><code class="r">messagef(&quot;%.3f is not larger than %d and/or smaller than %d&quot;, pi, 10, 40)
</code></pre>
</div>

<a id="stopf"> </a>
##### stopf: Stop Execution with String Interpolated Messages
###### Description:
<p>  This helper combines  <code>stop</code>  function with  <code>sprintf</code>  thus allowing string interpolated messages when execution is halted. </p>
###### Usage:
<div class="highlight">
	<pre><code class="r">stopf(s, ...)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>s</code>
  </td>
  <td>
   <p>a character vector of format strings</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>...</code>
  </td>
  <td>
   <p>values to be interpolated</p>
  </td>
 </tr>
</table>
###### Returned value:
<p>a string containing message that follows execution
termination</p>
###### Examples:
<div class="highlight"><pre><code class="r">stopf(&quot;%.3f is not larger than %d and/or smaller than %d&quot;, pi, 10, 40)
</code></pre>
</div>

<a id="tocamel"> </a>
##### tocamel: CamelCase
###### Description:
<p>Convert character vector to camelcase - capitalise first letter of each word.</p>
###### Usage:
<div class="highlight">
	<pre><code class="r">tocamel(x, sep = &quot;[^[:alnum:]]&quot;, upper = FALSE, ...)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>x</code>
  </td>
  <td>
   <p>a character vector to be converted to camelcase</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>sep</code>
  </td>
  <td>
   <p>a string containing regular expression word
delimiter</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>upper</code>
  </td>
  <td>
   <p>
    a logical value indicating if the first
letter of the first word should be capitalised (defaults
to
    <code>FALSE</code>
    )
   </p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>...</code>
  </td>
  <td>
   <p>
    additional arguments to be passed to
    <code>strsplit</code>
   </p>
  </td>
 </tr>
</table>
###### Returned value:
<p>a character vector with strings put in camelcase</p>
###### Examples:
<div class="highlight"><pre><code class="r">tocamel(&quot;foo.bar&quot;)
    ## [1] &quot;fooBar&quot;
    tocamel(&quot;foo.bar&quot;, upper = TRUE)
    ## [1] &quot;FooBar&quot;
    tocamel(c(&quot;foobar&quot;, &quot;foo.bar&quot;, &quot;camel_case&quot;, &quot;a.b.c.d&quot;))
    ## [1] &quot;foobar&quot;    &quot;fooBar&quot;    &quot;camelCase&quot; &quot;aBCD&quot;</code></pre>
</div>

<a id="trim.space"> </a>
##### trim.space: Trim Spaces
###### Description:
<p>Removes leading and/or trailing space(s) from a character vector. By default, it removes both leading and trailing spaces.</p>
###### Usage:
<div class="highlight">
	<pre><code class="r">trim.space(x,    what = c(&quot;both&quot;, &quot;leading&quot;, &quot;trailing&quot;, &quot;none&quot;),    space.regex = &quot;[:space:]&quot;, ...)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>x</code>
  </td>
  <td>
   <p>a character vector which values need whitespace
trimming</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>what</code>
  </td>
  <td>
   <p>
    which part of the string should be trimmed.
Defaults to
    <code>both</code>
    which removes trailing and
leading spaces. If
    <code>none</code>
    , no trimming will be
performed.
   </p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>space.regex</code>
  </td>
  <td>
   <p>a character value containing a regex
that defines a space character</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>...</code>
  </td>
  <td>
   <p>
    additional arguments for
    <code>gsub</code>
    function
   </p>
  </td>
 </tr>
</table>
###### Returned value:
<p>a character vector with (hopefully) trimmed spaces</p>
<a id="vgsub"> </a>
##### vgsub: Vectorised String Replacement
###### Description:
<p>  A simple wrapper for  <code>gsub</code>  that replaces all patterns from  <code>pattern</code>  argument with ones in  <code>replacement</code>  over vector provided in argument  <code>x</code>  . </p>
###### Usage:
<div class="highlight">
	<pre><code class="r">vgsub(pattern, replacement, x, ...)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>pattern</code>
  </td>
  <td>
   <p>
    see eponymous argument for
    <code>gsub</code>
    function
   </p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>replacement</code>
  </td>
  <td>
   <p>
    see eponymous argument for
    <code>gsub</code>
    function
   </p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>x</code>
  </td>
  <td>
   <p>
    see eponymous argument for
    <code>gsub</code>
    function
   </p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>...</code>
  </td>
  <td>
   <p>
    additional arguments for
    <code>gsub</code>
    function
   </p>
  </td>
 </tr>
</table>
###### Returned value:
<p>a character vector with string replacements</p>
###### References:
<p>
 See original thread for more details
 <a href="http://stackoverflow.com/a/6954308/457898">http://stackoverflow.com/a/6954308/457898</a>
 . Special
thanks to user Jean-Robert for this one!
</p>
<a id="warningf"> </a>
##### warningf: Send Warning with String Interpolated Messages
###### Description:
<p>  Combines  <code>warning</code>  with  <code>sprintf</code>  thus allowing string interpolated warnings. </p>
###### Usage:
<div class="highlight">
	<pre><code class="r">warningf(s, ...)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>s</code>
  </td>
  <td>
   <p>a character vector of format strings</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>...</code>
  </td>
  <td>
   <p>values to be interpolated</p>
  </td>
 </tr>
</table>
###### Examples:
<div class="highlight"><pre><code class="r">warningf(&quot;%.3f is not larger than %d and/or smaller than %d&quot;, pi, 10, 40)
</code></pre>
</div>


<a id="Generic-helpers-functions"> </a>
#### Generic helpers functions

<a id="is.tabular"> </a>
##### is.tabular: Tabular Structure
###### Description:
<p>  Checks if object has &quot;tabular&quot; structure (not to confuse with  <code>table</code>  ) - in this particular case, that means  <code>matrix</code>  and  <code>data.frame</code>  objects only. </p>
###### Usage:
<div class="highlight">
	<pre><code class="r">is.tabular(x)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>x</code>
  </td>
  <td>
   <p>an object to be checked for &quot;tabular&quot; format</p>
  </td>
 </tr>
</table>
###### Returned value:
<p>a logical value indicating that provided object has
tabular structure</p>
###### Examples:
<div class="highlight"><pre><code class="r">is.tabular(HairEyeColor[, , 1])  # [1] TRUE
is.tabular(mtcars)               # [1] TRUE
is.tabular(table(mtcars$cyl))    # [1] FALSE
is.tabular(rnorm(100))           # [1] FALSE
is.tabular(LETTERS)              # [1] FALSE
is.tabular(pi)                   # [1] FALSE</code></pre>
</div>

<a id="is.variable"> </a>
##### is.variable: Variables
###### Description:
<p>  From  <em>rapport</em>  &apos;s point of view, a  <code>variable</code>  is a non-  <code>NULL</code>  atomic vector that has no dimension attribute (see  <code>dim</code>  for details). This approach bypasses  <code>factor</code>  issues with  <code>is.vector</code>  , and also eliminates multidimensional vectors, such as matrices and arrays. </p>
###### Usage:
<div class="highlight">
	<pre><code class="r">is.variable(x)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>x</code>
  </td>
  <td>
   <p>an object to be checked for &quot;variable&quot; format</p>
  </td>
 </tr>
</table>
###### Returned value:
<p>a logical value indicating that provided object is a
&quot;variable&quot;</p>
###### Examples:
<div class="highlight"><pre><code class="r">is.variable(rnorm(100))  # [1] TRUE
is.variable(LETTERS)     # [1] TRUE
is.variable(NULL)        # [1] FALSE
is.variable(mtcars)      # [1] FALSE
is.variable(HairEyeColor[, , 1])  # [1] FALSE
is.variable(list())      # [1] FALSE</code></pre>
</div>


<a id="Generic-stat-functions"> </a>
#### Generic stat functions

<a id="fml"> </a>
##### fml: Create Formula from Strings
###### Description:
<p>Takes multiple character arguments as left and right-hand side arguments of a formula, and concatenates them in a single string.</p>
###### Usage:
<div class="highlight">
	<pre><code class="r">fml(left, right, join.left = &quot; + &quot;, join.right = &quot; + &quot;)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>left</code>
  </td>
  <td>
   <p>a string with left-hand side formula
argument</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>right</code>
  </td>
  <td>
   <p>a character vector with right-hand side
formula arguments</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>join.left</code>
  </td>
  <td>
   <p>
    concatenation string for elements of
character vector specified in
    <code>left</code>
   </p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>join.right</code>
  </td>
  <td>
   <p>
    concatenation string for elements of
character vector specified in
    <code>right</code>
   </p>
  </td>
 </tr>
</table>
###### Examples:
<div class="highlight"><pre><code class="r">fml(&quot;hp&quot;, c(&quot;am&quot;, &quot;cyl&quot;))    # &quot;hp ~ am + cyl&quot;</code></pre>
</div>

<a id="pct"> </a>
##### pct: Percent
###### Description:
<p>  Appends a percent sign to provided numerical value. Rounding is carried out according to value passed in  <code>decimals</code>  formal argument (defaults to value specified in  <code>panderOptions(&apos;digits&apos;)</code>  ). </p>
###### Usage:
<div class="highlight">
	<pre><code class="r">pct(x, digits = panderOptions(&quot;digits&quot;),    type = c(&quot;percent&quot;, &quot;%&quot;, &quot;proportion&quot;),    check.value = TRUE)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>x</code>
  </td>
  <td>
   <p>a numeric value that is to be rendered to
percent</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>digits</code>
  </td>
  <td>
   <p>an integer value indicating number of
decimal places</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>type</code>
  </td>
  <td>
   <p>a character value indicating whether percent
or proportion value was provided (partial match is
allowed)</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>check.value</code>
  </td>
  <td>
   <p>
    perform a sanity check to see if
provided numeric value is correct (defaults to
    <code>TRUE</code>
    )
   </p>
  </td>
 </tr>
</table>
###### Returned value:
<p>a character value with formatted percent</p>
<a id="rp.desc"> </a>
##### rp.desc: Descriptive Statistics
###### Description:
<p>  Aggregate table of descriptives according to functions provided in  <code>fn</code>  argument. This function follows melt/cast approach used in  <code>reshape</code>  package. Variable names specified in  <code>measure.vars</code>  argument are treated as  <code>measure.vars</code>  , while the ones in  <code>id.vars</code>  are treated as  <code>id.vars</code>  (see  <code>melt.data.frame</code>  for details). Other its formal arguments match with corresponding arguments for  <code>cast</code>  function. Some post-processing is done after reshaping, in order to get pretty row and column labels. </p>
###### Usage:
<div class="highlight">
	<pre><code class="r">rp.desc(measure.vars, id.vars = NULL, fn, data = NULL,    na.rm = TRUE, margins = NULL, subset = TRUE, fill = NA,    add.missing = FALSE, total.name = &quot;Total&quot;,    varcol.name = &quot;Variable&quot;,    use.labels = getOption(&quot;rp.use.labels&quot;),    remove.duplicate = TRUE)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>measure.vars</code>
  </td>
  <td>
   <p>
    either a character vector with
variable names from
    <code>data</code>
    , a numeric vector, or a
    <code>data.frame</code>
   </p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>id.vars</code>
  </td>
  <td>
   <p>
    same rules apply as in
    <code>measure.vars</code>
    , but defaults to
    <code>NULL</code>
   </p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>fn</code>
  </td>
  <td>
   <p>a list with functions or a character vector
with function names</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>data</code>
  </td>
  <td>
   <p>
    a
    <code>data.frame</code>
    holding variables
specified in
    <code>id.vars</code>
    and
    <code>measure.vars</code>
   </p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>na.rm</code>
  </td>
  <td>
   <p>
    a logical value indicating whether
    <code>NA</code>
    values should be removed
   </p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>margins</code>
  </td>
  <td>
   <p>
    should margins be included? (see
documentation for eponymous argument in
    <code>melt.data.frame</code>
    )
   </p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>subset</code>
  </td>
  <td>
   <p>a logical vector to subset the data before
aggregating</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>fill</code>
  </td>
  <td>
   <p>
    value to replace missing level combinations
(see documentation for eponymous argument in
    <code>melt.data.frame</code>
    )
   </p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>add.missing</code>
  </td>
  <td>
   <p>show missing level combinations</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>total.name</code>
  </td>
  <td>
   <p>a character string with name for
&quot;grand&quot; margin (defaults to &quot;Total&quot;)</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>varcol.name</code>
  </td>
  <td>
   <p>
    character string for column that
contains summarised variables (defaults to
    <code>&quot;Variable&quot;</code>
    )
   </p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>use.labels</code>
  </td>
  <td>
   <p>
    use labels instead of variable names in
table header (handle with care, especially if you have
lengthy labels). Defaults to value specified in
    <code>rp.use.labels</code>
    option.
   </p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>remove.duplicate</code>
  </td>
  <td>
   <p>
    should name/label of the variable
provided in
    <code>measure.vars</code>
    be removed from each
column if only one
    <code>measure.var</code>
    is provided
(defaults to
    <code>TRUE</code>
    )
   </p>
  </td>
 </tr>
</table>
###### Returned value:
<p>
 a
 <code>data.frame</code>
 with aggregated data
</p>
###### Examples:
<div class="highlight"><pre><code class="r">rp.desc(&quot;cyl&quot;, &quot;am&quot;, c(mean, sd), mtcars, margins = TRUE)
## c
rp.desc(&quot;age&quot;, c(&quot;gender&quot;, &quot;student&quot;), c(&quot;Average&quot; = mean, &quot;Deviation&quot; = sd), ius2008, remove.duplicate = FALSE)</code></pre>
</div>

<a id="rp.freq"> </a>
##### rp.freq: Frequency Table
###### Description:
<p>Display frequency table with counts, percentage, and cumulatives.</p>
###### Usage:
<div class="highlight">
	<pre><code class="r">rp.freq(f.vars, data, na.rm = TRUE, include.na = FALSE,    drop.unused.levels = FALSE, count = TRUE, pct = TRUE,    cumul.count = TRUE, cumul.pct = TRUE,    total.name = &quot;Total&quot;, reorder = FALSE)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>f.vars</code>
  </td>
  <td>
   <p>a character vector with variable names</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>data</code>
  </td>
  <td>
   <p>
    a
    <code>data.frame</code>
   </p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>na.rm</code>
  </td>
  <td>
   <p>should missing values be removed?</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>include.na</code>
  </td>
  <td>
   <p>should missing values be included in
frequency table?</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>drop.unused.levels</code>
  </td>
  <td>
   <p>should empty level combinations
be left out</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>count</code>
  </td>
  <td>
   <p>show frequencies?</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>pct</code>
  </td>
  <td>
   <p>show percentage?</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>cumul.count</code>
  </td>
  <td>
   <p>show cumulative frequencies?</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>cumul.pct</code>
  </td>
  <td>
   <p>show cumulative percentage?</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>total.name</code>
  </td>
  <td>
   <p>a sting containing footer label
(defaults to &quot;Total&quot;)</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>reorder</code>
  </td>
  <td>
   <p>reorder the table based on frequencies?</p>
  </td>
 </tr>
</table>
###### Returned value:
<p>
 a
 <code>data.frame</code>
 with a frequency table
</p>
###### Examples:
<div class="highlight"><pre><code class="r">rp.freq(c(&quot;am&quot;, &quot;cyl&quot;, &quot;vs&quot;), mtcars)
</code></pre>
</div>

<a id="rp.iqr"> </a>
##### rp.iqr: Interquartile Range
###### Description:
<p>  Calculates interquartile range of given variable. See  <code>rp.univar</code>  for details. </p>
###### Usage:
<div class="highlight">
	<pre><code class="r">rp.iqr(...)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>...</code>
  </td>
  <td>
   <p>
    parameters to be passed to
    <code>rp.univar</code>
    function
   </p>
  </td>
 </tr>
</table>
###### Returned value:
<p>a numeric value with variable&apos;s interquartile range</p>
<a id="rp.kurtosis"> </a>
##### rp.kurtosis: Kurtosis
###### Description:
<p>  Calculates kurtosis of given variable. See  <code>rp.univar</code>  for details. </p>
###### Usage:
<div class="highlight">
	<pre><code class="r">rp.kurtosis(...)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>...</code>
  </td>
  <td>
   <p>
    parameters to be passed to
    <code>rp.univar</code>
    function
   </p>
  </td>
 </tr>
</table>
###### Returned value:
<p>a numeric value with variable&apos;s kurtosis</p>
<a id="rp.max"> </a>
##### rp.max: Maximum
###### Description:
<p>  Returns the maximum of all values in a vector by passing {codemax as  <code>fn</code>  argument to  <code>rp.univar</code>  function. </p>
###### Usage:
<div class="highlight">
	<pre><code class="r">rp.max(...)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>...</code>
  </td>
  <td>
   <p>
    parameters to be passed to
    <code>rp.univar</code>
    function
   </p>
  </td>
 </tr>
</table>
###### Returned value:
<p>a numeric value with maximum value</p>
<a id="rp.mean"> </a>
##### rp.mean: Mean
###### Description:
<p>  Calculates mean of given variable by passing  <code>sum</code>  as  <code>fn</code>  argument to  <code>rp.univar</code>  function. </p>
###### Usage:
<div class="highlight">
	<pre><code class="r">rp.mean(...)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>...</code>
  </td>
  <td>
   <p>
    parameters to be passed to
    <code>rp.univar</code>
    function
   </p>
  </td>
 </tr>
</table>
###### Returned value:
<p>a numeric value with variable&apos;s mean</p>
<a id="rp.median"> </a>
##### rp.median: Median
###### Description:
<p>  Calculates median of given variable. See  <code>rp.univar</code>  for details. </p>
###### Usage:
<div class="highlight">
	<pre><code class="r">rp.median(...)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>...</code>
  </td>
  <td>
   <p>
    parameters to be passed to
    <code>rp.univar</code>
    function
   </p>
  </td>
 </tr>
</table>
###### Returned value:
<p>a numeric value with variable&apos;s median</p>
<a id="rp.min"> </a>
##### rp.min: Minimum
###### Description:
<p>  Returns the minimum of all values in a vector by passing {codemin as  <code>fn</code>  argument to  <code>rp.univar</code>  function. </p>
###### Usage:
<div class="highlight">
	<pre><code class="r">rp.min(...)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>...</code>
  </td>
  <td>
   <p>
    parameters to be passed to
    <code>rp.univar</code>
    function
   </p>
  </td>
 </tr>
</table>
###### Returned value:
<p>a numeric value with minimum value</p>
<a id="rp.missing"> </a>
##### rp.missing: Missing Cases
###### Description:
<p>  Returns a number of missing (  <code>NA</code>  ) values in a variable. This is a wrapper around  <code>rp.univar</code>  function with anonymous function passed to count number of  <code>NA</code>  elements in a variable. </p>
###### Usage:
<div class="highlight">
	<pre><code class="r">rp.missing(...)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>...</code>
  </td>
  <td>
   <p>
    parameters to be passed to
    <code>rp.univar</code>
    function
   </p>
  </td>
 </tr>
</table>
###### Returned value:
<p>a numeric value with number of missing vector elements</p>
<a id="rp.percent"> </a>
##### rp.percent: Percent
###### Description:
<p>  Calculates percentage of cases for provided variable and criteria specified in  <code>subset</code>  argument. Function accepts numeric, factor and logical variables for  <code>x</code>  parameter. If numeric and/or factor is provided, subsetting can be achieved via  <code>subset</code>  argument. Depending on value of  <code>na.rm</code>  argument, either valid (  <code>na.rm = TRUE</code>  ) or all cases (  <code>na.rm = FALSE</code>  ) are taken into account. By passing logical variable to  <code>x</code>  , a sum of (  <code>TRUE</code>  ) elements is calculated instead, and valid percents are used (  <code>NA</code>  are excluded). </p>
###### Usage:
<div class="highlight">
	<pre><code class="r">rp.percent(x, subset = NULL, na.rm = TRUE, pct = FALSE,    ...)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>x</code>
  </td>
  <td>
   <p>a numeric variable to be summarised</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>subset</code>
  </td>
  <td>
   <p>
    an expression that evaluates to logical
vector (defaults to
    <code>NULL</code>
    )
   </p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>na.rm</code>
  </td>
  <td>
   <p>should missing values be</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>pct</code>
  </td>
  <td>
   <p>print percent string too?</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>...</code>
  </td>
  <td>
   <p>
    additional arguments for
    <code>pct</code>
    function
   </p>
  </td>
 </tr>
</table>
###### Returned value:
<p>
 a numeric or string depending on the value of
 <code>pct</code>
</p>
###### Examples:
<div class="highlight"><pre><code class="r">set.seed(0)
x &lt;- sample(5, 100, replace = TRUE)
rp.percent(x &gt; 2)
</code></pre>
</div>

<a id="rp.range"> </a>
##### rp.range: Range
###### Description:
<p>  Calculates difference between the largest and the smallest value in a vector. See  <code>rp.univar</code>  for details. </p>
###### Usage:
<div class="highlight">
	<pre><code class="r">rp.range(...)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>...</code>
  </td>
  <td>
   <p>
    parameters to be passed to
    <code>rp.univar</code>
    function
   </p>
  </td>
 </tr>
</table>
###### Returned value:
<p>a numeric value with calculated range</p>
<a id="rp.sd"> </a>
##### rp.sd: Standard Deviation
###### Description:
<p>  Calculates standard deviation of given variable. See  <code>rp.univar</code>  for details. </p>
###### Usage:
<div class="highlight">
	<pre><code class="r">rp.sd(...)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>...</code>
  </td>
  <td>
   <p>
    parameters to be passed to
    <code>rp.univar</code>
    function
   </p>
  </td>
 </tr>
</table>
###### Returned value:
<p>a numeric value with variable&apos;s standard deviation</p>
<a id="rp.se.mean"> </a>
##### rp.se.mean: Standard Error of Mean
###### Description:
<p>  Calculates standard error of mean for given variable. See  <code>rp.univar</code>  for details. </p>
###### Usage:
<div class="highlight">
	<pre><code class="r">rp.se.mean(...)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>...</code>
  </td>
  <td>
   <p>
    parameters to be passed to
    <code>rp.univar</code>
    function
   </p>
  </td>
 </tr>
</table>
###### Returned value:
<p>a numeric value with standard error of mean</p>
<a id="rp.skewness"> </a>
##### rp.skewness: Skewness
###### Description:
<p>  Calculates skewness of given variable. See  <code>rp.univar</code>  for details. </p>
###### Usage:
<div class="highlight">
	<pre><code class="r">rp.skewness(...)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>...</code>
  </td>
  <td>
   <p>
    parameters to be passed to
    <code>rp.univar</code>
    function
   </p>
  </td>
 </tr>
</table>
###### Returned value:
<p>a numeric value with variable&apos;s skewness</p>
<a id="rp.sum"> </a>
##### rp.sum: Sum
###### Description:
<p>  Returns the sum of variable&apos;s elements, by passing  <code>sum</code>  as  <code>fn</code>  argument to  <code>rp.univar</code>  function. </p>
###### Usage:
<div class="highlight">
	<pre><code class="r">rp.sum(...)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>...</code>
  </td>
  <td>
   <p>
    parameters to be passed to
    <code>rp.univar</code>
    function
   </p>
  </td>
 </tr>
</table>
###### Returned value:
<p>a numeric value with sum of vector elements</p>
<a id="rp.univar"> </a>
##### rp.univar: Descriptive Statistics
###### Description:
<p>  This function operates only on vectors or their subsets, by calculating a descriptive statistic specified in  <code>fn</code>  argument. </p>
###### Usage:
<div class="highlight">
	<pre><code class="r">rp.univar(x, subset = NULL, fn, na.rm = TRUE, ...)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>x</code>
  </td>
  <td>
   <p>a numeric variable to be summarised</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>subset</code>
  </td>
  <td>
   <p>
    an expression that evaluates to logical
vector (defaults to
    <code>NULL</code>
    , in which case the
function specified in
    <code>fun</code>
    is applied on a vector)
   </p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>fn</code>
  </td>
  <td>
   <p>a function or a function name to be applied on
a variable or it&apos;s subset</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>na.rm</code>
  </td>
  <td>
   <p>
    a logical value indicating whether
    <code>NA</code>
    &apos;s should be removed (defaults to
    <code>TRUE</code>
    )
   </p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>...</code>
  </td>
  <td>
   <p>
    additional arguments for function specified in
    <code>fn</code>
   </p>
  </td>
 </tr>
</table>
###### Returned value:
<p>a numeric</p>
<a id="rp.valid"> </a>
##### rp.valid: Valid Cases
###### Description:
<p>  Returns a number of valid (non-  <code>NA</code>  ) values in a variable. This is a wrapper around  <code>rp.univar</code>  function with  <code>length</code>  function passed in  <code>fn</code>  argument, but with missing values previously removed. However, it&apos;s not possible to cancel  <code>NA</code>  omission with this function (doing so will yield error). </p>
###### Usage:
<div class="highlight">
	<pre><code class="r">rp.valid(...)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>...</code>
  </td>
  <td>
   <p>
    parameters to be passed to
    <code>rp.univar</code>
    function
   </p>
  </td>
 </tr>
</table>
###### Returned value:
<p>a numeric value with number of valid (non-NA) vector
elements</p>
<a id="rp.var"> </a>
##### rp.var: Variance
###### Description:
<p>  Calculates variance of given variable. See  <code>rp.univar</code>  for details. </p>
###### Usage:
<div class="highlight">
	<pre><code class="r">rp.var(...)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>...</code>
  </td>
  <td>
   <p>
    parameters to be passed to
    <code>rp.univar</code>
    function
   </p>
  </td>
 </tr>
</table>
###### Returned value:
<p>a numeric value with variable&apos;s variance</p>

<a id="Generic-stat-helper-functions"> </a>
#### Generic stat helper functions

<a id="htest"> </a>
##### htest: Hypothesis Tests
###### Description:
<p>  This function uses  <code>htest.short</code>  , to extract statistic and p-value from  <code>htest</code>  -classed object. Main advantage of using  <code>htest</code>  is that it&apos;s vectorised, and can accept multiple methods. </p>
###### Details:
<p>  Default parameters are read from  <code>options</code>  : </p>
<ul>  <li>   <p>&apos;rp.use.labels&apos;.</p>  </li> </ul> 
###### Usage:
<div class="highlight">
	<pre><code class="r">htest(x, ..., use.labels = getOption(&quot;rp.use.labels&quot;),    use.method.names = TRUE,    colnames = c(&quot;Method&quot;, &quot;Statistic&quot;, &quot;p-value&quot;))</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>x</code>
  </td>
  <td>
   <p>
    arguments to be passed to function specified in
    <code>test</code>
   </p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>...</code>
  </td>
  <td>
   <p>
    additional arguments for function specified in
    <code>test</code>
   </p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>use.labels</code>
  </td>
  <td>
   <p>
    a logical value indicating whether
variable labels should be placed in row names. If set to
    <code>FALSE</code>
    , output of
    <code>deparse(substitute(x))</code>
    will be used.
   </p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>use.method.names</code>
  </td>
  <td>
   <p>
    use the string provided in
    <code>method</code>
    attribute of
    <code>htest</code>
    object
   </p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>colnames</code>
  </td>
  <td>
   <p>a character string containing column
names</p>
  </td>
 </tr>
</table>
###### Returned value:
<p>
 a
 <code>data.frame</code>
 with applied tests in rows, and their
results (statistic and p-value) in columns
</p>
###### Examples:
<div class="highlight"><pre><code class="r">library(nortest)
htest(rnorm(100), shapiro.test)
htest(rnorm(100), lillie.test, ad.test, shapiro.test)
htest(mtcars, lillie.test)
htest(mtcars, lillie.test, ad.test, shapiro.test)
</code></pre>
</div>

<a id="htest.short"> </a>
##### htest.short:  Extract Values from <code>htest</code> Objects
###### Description:
<p>  Extract value of statistic and its p-value from  <code>htest</code>  object. </p>
###### Usage:
<div class="highlight">
	<pre><code class="r">htest.short(x)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>x</code>
  </td>
  <td>
   <p>
    <code>htest</code>
    -class object
   </p>
  </td>
 </tr>
</table>
###### Returned value:
<p>named numeric vector with the value of statistic and its
p-value</p>
###### Examples:
<div class="highlight"><pre><code class="r">htest.short(shapiro.test(rnorm(100)))
</code></pre>
</div>

<a id="kurtosis"> </a>
##### kurtosis: Kurtosis
###### Description:
<p>  Calculates kurtosis coefficient for given variable (see  <code>is.variable</code>  ),  <code>matrix</code>  or a  <code>data.frame</code>  . </p>
###### Usage:
<div class="highlight">
	<pre><code class="r">kurtosis(x, na.rm = FALSE)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>x</code>
  </td>
  <td>
   <p>
    a
    <code>variable</code>
    ,
    <code>matrix</code>
    or a
    <code>data.frame</code>
   </p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>na.rm</code>
  </td>
  <td>
   <p>
    should
    <code>NA</code>
    s be removed before
computation?
   </p>
  </td>
 </tr>
</table>
###### References:
<p>Tenjovic, L. (2000). Statistika u psihologiji -
prirucnik. Centar za primenjenu psihologiju.</p>
###### Examples:
<div class="highlight"><pre><code class="r">set.seed(0)
x &lt;- rnorm(100)
kurtosis(x)
kurtosis(matrix(x, 10))
kurtosis(mtcars)
rm(x)</code></pre>
</div>

<a id="lambda.test"> </a>
##### lambda.test: Goodman and Kruskal&apos;s lambda
###### Description:
<p>Computes Goodman and Kruskal&apos;s lambda for given table.</p>
###### Usage:
<div class="highlight">
	<pre><code class="r">lambda.test(table, direction = 0)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>table</code>
  </td>
  <td>
   <p>
    a
    <code>table</code>
    of two variables or a
    <code>data.frame</code>
    representation of the cross-table of
the two variables without marginals
   </p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>direction</code>
  </td>
  <td>
   <p>
    numeric value of
    <code>c(0, 1, 2)</code>
    where
1 means the lambda value computed for row, 2 for columns
and 0 for both
   </p>
  </td>
 </tr>
</table>
###### Returned value:
<p>computed lambda value(s) for row/col of given table</p>
###### References:
<ul>
 <li>
  <p>
   Goodman, L.A., Kruskal, W.H. (1954)
Measures of association for cross classifications. Part
I.
   <em>Journal of the American Statistical Association</em>
   <b>49</b>
   , 732–764
  </p>
 </li>
</ul>
###### Examples:
<div class="highlight"><pre><code class="r">## quick example
x &lt;- data.frame(x = c(5, 4, 3), y = c(9, 8, 7), z = c(7, 11, 22), zz = c(1, 15, 8))
lambda.test(x)    # 0.1 and 0.18333
lambda.test(t(x)) # 0.18333 and 0.1
## historical data (see the references above: p. 744)
men.hair.color &lt;- data.frame(
b1 = c(1768, 946, 115),
b2 = c(807, 1387, 438),
b3 = c(189, 746, 288),
b4 = c(47, 53, 16)
)
row.names(men.hair.color) &lt;- paste0(&apos;a&apos;, 1:3)
lambda.test(men.hair.color)
lambda.test(t(men.hair.color))
## some examples on mtcars
lambda.test(table(mtcars$am, mtcars$gear))
lambda.test(table(mtcars$gear, mtcars$am))
lambda.test(table(mtcars$am, mtcars$gear), 1)
lambda.test(table(mtcars$am, mtcars$gear), 2)
</code></pre>
</div>

<a id="rp.outlier"> </a>
##### rp.outlier: Outlier test
###### Description:
<p>A simple test for outliers. This functions returns all extreme values (if any) found in the specified vector.</p>
###### Usage:
<div class="highlight">
	<pre><code class="r">rp.outlier(x)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>x</code>
  </td>
  <td>
   <p>a numeric vector of values</p>
  </td>
 </tr>
</table>
###### Returned value:
<p>vector of outlier values</p>
###### References:
<p>
 Credit goes to PaulHurleyuk:
 <a href="http://stackoverflow.com/a/1444548/564164">http://stackoverflow.com/a/1444548/564164</a>
</p>
###### Examples:
<div class="highlight"><pre><code class="r">rp.outlier(mtcars$hp)
rp.outlier(c(rep(1,100), 200))
rp.outlier(c(rep(1,100), 200,201))
</code></pre>
</div>

<a id="skewness"> </a>
##### skewness: Skewness
###### Description:
<p>  Calculates skewness coefficient for given variable (see  <code>is.variable</code>  ),  <code>matrix</code>  or a  <code>data.frame</code>  . </p>
###### Usage:
<div class="highlight">
	<pre><code class="r">skewness(x, na.rm = FALSE)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>x</code>
  </td>
  <td>
   <p>
    a
    <code>variable</code>
    ,
    <code>matrix</code>
    or a
    <code>data.frame</code>
   </p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>na.rm</code>
  </td>
  <td>
   <p>
    should
    <code>NA</code>
    s be removed before
computation?
   </p>
  </td>
 </tr>
</table>
###### References:
<p>Tenjovic, L. (2000). Statistika u psihologiji -
prirucnik. Centar za primenjenu psihologiju.</p>
###### Examples:
<div class="highlight"><pre><code class="r">set.seed(0)
x &lt;- rnorm(100)
skewness(x)
skewness(matrix(x, 10))
skewness(mtcars)
rm(x)</code></pre>
</div>


<a id="Template-related-functions"> </a>
#### Template related functions

<a id="as.character.rp.inputs"> </a>
##### as.character.rp.inputs: Convert Inputs to Character
###### Description:
<p>Converts template inputs to character vector with YAML strings.</p>
###### Usage:
<div class="highlight">
	<pre><code class="r">## S3 method for class &apos;rp.inputs&apos; as.character(x, ...)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>x</code>
  </td>
  <td>
   <p>template inputs object</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>...</code>
  </td>
  <td>
   <p>ignored</p>
  </td>
 </tr>
</table>
<a id="as.character.rp.meta"> </a>
##### as.character.rp.meta: Convert Metadata to Character
###### Description:
<p>Converts template metadata to character vector with YAML strings.</p>
###### Usage:
<div class="highlight">
	<pre><code class="r">## S3 method for class &apos;rp.meta&apos; as.character(x, ...)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>x</code>
  </td>
  <td>
   <p>template metadata object</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>...</code>
  </td>
  <td>
   <p>ignored</p>
  </td>
 </tr>
</table>
<a id="check.input.value.class"> </a>
##### check.input.value.class: Check Input Value Class
###### Description:
<p>Checks the class of an input value.</p>
###### Usage:
<div class="highlight">
	<pre><code class="r">check.input.value.class(value,    class = c(&quot;character&quot;, &quot;complex&quot;, &quot;factor&quot;, &quot;integer&quot;, &quot;logical&quot;, &quot;numeric&quot;, &quot;raw&quot;),    input.name = NULL)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>value</code>
  </td>
  <td>
   <p>input value</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>class</code>
  </td>
  <td>
   <p>
    input class (defaults to
    <code>NULL</code>
    )
   </p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>input.name</code>
  </td>
  <td>
   <p>input name (used in messages)</p>
  </td>
 </tr>
</table>
<a id="check.input.value"> </a>
##### check.input.value: Check input value
###### Description:
<p>  Validates input values, according to rules set in general input attributes (  <code>length</code>  ) or class-specific ones (  <code>nchar</code>  ,  <code>nlevels</code>  or  <code>limit</code>  ). </p>
###### Usage:
<div class="highlight">
	<pre><code class="r">check.input.value(input, value = NULL,    attribute.name = c(&quot;length&quot;, &quot;nchar&quot;, &quot;nlevels&quot;, &quot;limit&quot;))</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>input</code>
  </td>
  <td>
   <p>input item</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>value</code>
  </td>
  <td>
   <p>input value, either template-defined, or set
by the user</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>attribute.name</code>
  </td>
  <td>
   <p>
    input attributes containing
validation rules (defaults to
    <code>length</code>
    )
   </p>
  </td>
 </tr>
</table>
<a id="check.report.chunks"> </a>
##### check.report.chunks: Check Report Chunks
###### Description:
<p>Checks for warnings and errors in report chunks.</p>
###### Usage:
<div class="highlight">
	<pre><code class="r">check.report.chunks(rp,    what = c(&quot;errors&quot;, &quot;warnings&quot;, &quot;messages&quot;))</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>rp</code>
  </td>
  <td>
   <p>
    <code>rapport</code>
    object
   </p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>what</code>
  </td>
  <td>
   <p>what fields to check. defaults to all</p>
  </td>
 </tr>
</table>
<a id="extract.meta"> </a>
##### extract.meta: Extract Template Metadata
###### Description:
<p>Check if template metadata field matches provided format, and return matched value in a list.</p>
###### Usage:
<div class="highlight">
	<pre><code class="r">extract.meta(x, title, regex, short = NULL,    trim.white = TRUE, mandatory = TRUE,    default.value = NULL, field.length = 1000, ...)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>x</code>
  </td>
  <td>
   <p>a string containing template metadata</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>title</code>
  </td>
  <td>
   <p>a string containing metadata field title
(can be regex-powered)</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>regex</code>
  </td>
  <td>
   <p>a string with regular expression to match
field value</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>short</code>
  </td>
  <td>
   <p>a string with a short name for given
metadata field</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>trim.white</code>
  </td>
  <td>
   <p>a logical value indicating whether
trailing and leading spaces of the given string should be
removed before extraction</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>mandatory</code>
  </td>
  <td>
   <p>a logical value indicating required
field</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>default.value</code>
  </td>
  <td>
   <p>fallback to this value if
non-mandatory field is not found/malformed</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>field.length</code>
  </td>
  <td>
   <p>maximum number of field characters
(defaults to 1000)</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>...</code>
  </td>
  <td>
   <p>
    additional parameters for
    <code>grepl</code>
    function
   </p>
  </td>
 </tr>
</table>
###### Returned value:
<p>
 a list with matched content, or
 <code>NULL</code>
 if the field
is not required
</p>
###### Examples:
<div class="highlight"><pre><code class="r">    rapport:::extract.meta(&quot;Name: John Smith&quot;, &quot;Name&quot;, &quot;[[:alpha:]]+( [[:alpha:]]+)?&quot;)
    ## $name
    ## [1] &quot;John Smith&quot;
    rapport:::extract.meta(&quot;Name: John&quot;, &quot;Name&quot;, &quot;[[:alpha:]]+( [[:alpha:]]+)?&quot;)
    ## $name
    ## [1] &quot;John&quot;
</code></pre>
</div>

<a id="get.tags"> </a>
##### get.tags: Tag Values
###### Description:
<p>Returns report tag vales (usually regexes): either user-defined, or the default ones.</p>
###### Details:
<p>  Default parameters are read from  <code>options</code>  : </p>
<ul>  <li>   <p>&apos;header.open&apos;,</p>  </li>  <li>   <p>&apos;header.close&apos;,</p>  </li>  <li>   <p>&apos;comment.open&apos;,</p>  </li>  <li>   <p>&apos;comment.close&apos;.</p>  </li> </ul> 
###### Usage:
<div class="highlight">
	<pre><code class="r">get.tags(tag.type = c(&quot;all&quot;, &quot;header.open&quot;, &quot;header.close&quot;, &quot;comment.open&quot;, &quot;comment.close&quot;),    preset = c(&quot;user&quot;, &quot;default&quot;))</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>tag.type</code>
  </td>
  <td>
   <p>a character value with tag value name</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>preset</code>
  </td>
  <td>
   <p>a character value specifying which preset
to return</p>
  </td>
 </tr>
</table>
###### Returned value:
<p>either a list (default) or a character value with tag
regexes</p>
###### Examples:
<div class="highlight"><pre><code class="r">get.tags()        # same as &apos;get.tags(&quot;all&quot;)&apos;
get.tags(&quot;header.open&quot;)
</code></pre>
</div>

<a id="guess.input.description"> </a>
##### guess.input.description: Input Description
###### Description:
<p>Checks input description.</p>
###### Usage:
<div class="highlight">
	<pre><code class="r">guess.input.description(description, ...)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>description</code>
  </td>
  <td>
   <p>a character string containing input
description</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>...</code>
  </td>
  <td>
   <p>
    additional arguments to be passed to
    <code>grepl</code>
   </p>
  </td>
 </tr>
</table>
<a id="guess.input.label"> </a>
##### guess.input.label: Input Label
###### Description:
<p>Checks input label.</p>
###### Usage:
<div class="highlight">
	<pre><code class="r">guess.input.label(label, ...)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>label</code>
  </td>
  <td>
   <p>a character string containing input label</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>...</code>
  </td>
  <td>
   <p>
    additional arguments to be passed to
    <code>grepl</code>
   </p>
  </td>
 </tr>
</table>
<a id="guess.input.length"> </a>
##### guess.input.length: Guess input length
###### Description:
<p>  Performs sanity checks on input  <code>length</code>  attribute. </p>
###### Usage:
<div class="highlight">
	<pre><code class="r">guess.input.length(len)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>len</code>
  </td>
  <td>
   <p>eiher an integer value or a named list
containing input length definition</p>
  </td>
 </tr>
</table>
<a id="guess.input.limit"> </a>
##### guess.input.limit: Guess input limits
###### Description:
<p>  Guess input limits for  <code>integer</code>  and  <code>numeric</code>  inputs. </p>
###### Usage:
<div class="highlight">
	<pre><code class="r">guess.input.limit(input)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>input</code>
  </td>
  <td>
   <p>a named list containing input definition</p>
  </td>
 </tr>
</table>
<a id="guess.input.name"> </a>
##### guess.input.name: Input Name Validation
###### Description:
<p>  Checks  <code>rapport</code>  input naming conventions: input names should start with a letter, followed either by a letter or a digit, while the words should be separated with dots or underscores. </p>
###### Usage:
<div class="highlight">
	<pre><code class="r">guess.input.name(x, min.size = 1L, max.size = 30L, ...)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>x</code>
  </td>
  <td>
   <p>a character vector to test names</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>min.size</code>
  </td>
  <td>
   <p>an integer value that indicates minimum
name length</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>max.size</code>
  </td>
  <td>
   <p>an integer value that indicates maximum
name length</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>...</code>
  </td>
  <td>
   <p>
    additional arguments to be passed to
    <code>grepl</code>
    function
   </p>
  </td>
 </tr>
</table>
###### Returned value:
<p>a logical vector indicating which values satisfy the
naming conventions</p>
<a id="guess.input"> </a>
##### guess.input: Guess Input
###### Description:
<p>Checks and returns valid input from YAML input definition.</p>
###### Usage:
<div class="highlight">
	<pre><code class="r">guess.input(input)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>input</code>
  </td>
  <td>
   <p>a named list containing input definition</p>
  </td>
 </tr>
</table>
<a id="guess.old.input.length"> </a>
##### guess.old.input.length: Deprecated input limits
###### Description:
<p>Guess deprecated input length.</p>
###### Usage:
<div class="highlight">
	<pre><code class="r">guess.old.input.length(x, input.type)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>x</code>
  </td>
  <td>
   <p>a character string containing input length
definition</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>input.type</code>
  </td>
  <td>
   <p>a character string containing input
type</p>
  </td>
 </tr>
</table>
<a id="guess.old.input.type"> </a>
##### guess.old.input.type: Check Type
###### Description:
<p>Checks type of template input, based on provided sting. If input definition is syntactically correct, a list is returned, containing input type, size limits, and default value (for CSV options and boolean types only).</p>
###### Usage:
<div class="highlight">
	<pre><code class="r">guess.old.input.type(x)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>x</code>
  </td>
  <td>
   <p>a character string containing input definition</p>
  </td>
 </tr>
</table>
<a id="is.heading"> </a>
##### is.heading: Pandoc Heading
###### Description:
<p>Checks if provided string is a valid ATX-style pandoc heading.</p>
###### Usage:
<div class="highlight">
	<pre><code class="r">is.heading(x)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>x</code>
  </td>
  <td>
   <p>a string to test for pandoc heading format</p>
  </td>
 </tr>
</table>
###### Returned value:
<p>a logical value indicating the string is (not) a pandoc
heading</p>
<a id="is.rapport"> </a>
##### is.rapport: Rapport Object
###### Description:
<p>  Checks if provided R object is of  <code>rapport</code>  class. </p>
###### Usage:
<div class="highlight">
	<pre><code class="r">is.rapport(x)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>x</code>
  </td>
  <td>
   <p>any R object to check</p>
  </td>
 </tr>
</table>
###### Returned value:
<p>
 a logical value indicating whether provided object is a
 <code>rapport</code>
 object
</p>
<a id="is.rp.heading"> </a>
##### is.rp.heading: Rapport Heading Element
###### Description:
<p>  Checks if provided R object is a  <code>rapport</code>  heading element. </p>
###### Usage:
<div class="highlight">
	<pre><code class="r">is.rp.heading(x)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>x</code>
  </td>
  <td>
   <p>any R object to check</p>
  </td>
 </tr>
</table>
###### Returned value:
<p>
 a logical value indicating whether provided object is a
 <code>rp.heading</code>
 object
</p>
<a id="print.rapport"> </a>
##### print.rapport: Prints rapport
###### Description:
<p>  Default print method for  <code>rapport</code>  class objects that shows evaluated report contents. </p>
###### Usage:
<div class="highlight">
	<pre><code class="r">## S3 method for class &apos;rapport&apos; print(x, ...)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>x</code>
  </td>
  <td>
   <p>any &quot;rapport&quot; class object</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>...</code>
  </td>
  <td>
   <p>ignored</p>
  </td>
 </tr>
</table>
###### Examples:
<div class="highlight"><pre><code class="r">rapport(&apos;example&apos;, data = mtcars, var=&apos;hp&apos;)
</code></pre>
</div>

<a id="print.rp.info"> </a>
##### print.rp.info: Print Template Header
###### Description:
<p>Prints out the contents of template header (both metadata and inputs) in human-readable format, so you can get insight about the template requirements.</p>
###### Usage:
<div class="highlight">
	<pre><code class="r">## S3 method for class &apos;rp.info&apos; print(x, ...)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>x</code>
  </td>
  <td>
   <p>
    object of class
    <code>rp.header</code>
    . See
    <code>tpl.header</code>
    for details.
   </p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>...</code>
  </td>
  <td>
   <p>ignored</p>
  </td>
 </tr>
</table>
<a id="print.rp.inputs"> </a>
##### print.rp.inputs: Print Template Inputs
###### Description:
<p>Prints out the contents of template inputs in human-readable format.</p>
###### Usage:
<div class="highlight">
	<pre><code class="r">## S3 method for class &apos;rp.inputs&apos; print(x, ...)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>x</code>
  </td>
  <td>
   <p>
    object of class
    <code>rp.inputs</code>
    . See
    <code>tpl.inputs</code>
    for details.
   </p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>...</code>
  </td>
  <td>
   <p>ignored</p>
  </td>
 </tr>
</table>
<a id="print.rp.meta"> </a>
##### print.rp.meta: Print Template Metadata
###### Description:
<p>Prints out the contents of template metadata in human-readable format.</p>
###### Usage:
<div class="highlight">
	<pre><code class="r">## S3 method for class &apos;rp.meta&apos; print(x, ...)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>x</code>
  </td>
  <td>
   <p>
    object of class
    <code>rp.meta</code>
    . See
    <code>tpl.meta</code>
    for details.
   </p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>...</code>
  </td>
  <td>
   <p>ignored</p>
  </td>
 </tr>
</table>
<a id="purge.comments"> </a>
##### purge.comments: Purge Comments
###### Description:
<p>Remove comments from provided character vector.</p>
###### Details:
<p>  Default parameters are read from  <code>options</code>  : </p>
<ul>  <li>   <p>&apos;comment.open&apos;,</p>  </li>  <li>   <p>&apos;comment.close&apos;.</p>  </li> </ul> 
###### Usage:
<div class="highlight">
	<pre><code class="r">purge.comments(x,    comment.open = get.tags(&quot;comment.open&quot;),    comment.close = get.tags(&quot;comment.close&quot;))</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>x</code>
  </td>
  <td>
   <p>a character string to remove comments from</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>comment.open</code>
  </td>
  <td>
   <p>a string containing opening tag</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>comment.close</code>
  </td>
  <td>
   <p>a string containing closing tag</p>
  </td>
 </tr>
</table>
###### Returned value:
<p>a string with removed pandoc comments</p>
<a id="rapport.docx"> </a>
##### rapport.docx: Rapport to DOCX
###### Description:
<p>  This is a simple wrapper around  <code>rapport</code>  and  <code>tpl.export</code>  . Basically it works like  <code>rapport</code>  but the returned class is exported at one go. </p>
###### Usage:
<div class="highlight">
	<pre><code class="r">rapport.docx(...)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>...</code>
  </td>
  <td>
   <p>
    parameters passed directly to
    <code>rapport</code>
   </p>
  </td>
 </tr>
</table>
<a id="rapport.html"> </a>
##### rapport.html: Rapport to HTML
###### Description:
<p>  This is a simple wrapper around  <code>rapport</code>  and  <code>tpl.export</code>  . Basically it works like  <code>rapport</code>  but the returned class is exported at one go. </p>
###### Usage:
<div class="highlight">
	<pre><code class="r">rapport.html(...)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>...</code>
  </td>
  <td>
   <p>
    parameters passed directly to
    <code>rapport</code>
   </p>
  </td>
 </tr>
</table>
<a id="rapport.odt"> </a>
##### rapport.odt: Rapport to ODT
###### Description:
<p>  This is a simple wrapper around  <code>rapport</code>  and  <code>tpl.export</code>  . Basically it works like  <code>rapport</code>  but the returned class is exported at one go. </p>
###### Usage:
<div class="highlight">
	<pre><code class="r">rapport.odt(...)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>...</code>
  </td>
  <td>
   <p>
    parameters passed directly to
    <code>rapport</code>
   </p>
  </td>
 </tr>
</table>
<a id="rapport.pdf"> </a>
##### rapport.pdf: Rapport to PDF
###### Description:
<p>  This is a simple wrapper around  <code>rapport</code>  and  <code>tpl.export</code>  . Basically it works like  <code>rapport</code>  but the returned class is exported at one go. </p>
###### Usage:
<div class="highlight">
	<pre><code class="r">rapport.pdf(...)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>...</code>
  </td>
  <td>
   <p>
    parameters passed directly to
    <code>rapport</code>
   </p>
  </td>
 </tr>
</table>
<a id="rapport"> </a>
##### rapport: Evaluate Template
###### Description:
<p>  This is the central function in the  <code>rapport</code>  package, and hence eponymous. In following lines we&apos;ll use  <code>rapport</code>  to denote the function, not the package.  <code>rapport</code>  requires a template file, while dataset (  <code>data</code>  argument) can be optional, depending on the value of  <code>Data required</code>  field in template header. Template inputs are matched with  <code>...</code>  argument, and should be provided in  <code>x = value</code>  format, where  <code>x</code>  matches input name and  <code>value</code>  , wait for it... input value! See  <code>tpl.inputs</code>  for more details on template inputs. </p>
###### Details:
<p>  Default parameters are read from  <code>evalsOptions()</code>  and the following  <code>options</code>  : </p>
<ul>  <li>   <p>&apos;rp.file.name&apos;,</p>  </li>  <li>   <p>&apos;rp.file.path&apos;,</p>  </li> </ul> 
###### Usage:
<div class="highlight">
	<pre><code class="r">rapport(fp, data = NULL, ..., env = new.env(),    reproducible = FALSE, header.levels.offset = 0,    graph.output = evalsOptions(&quot;graph.output&quot;),    file.name = getOption(&quot;rp.file.name&quot;),    file.path = getOption(&quot;rp.file.path&quot;),    graph.width = evalsOptions(&quot;width&quot;),    graph.height = evalsOptions(&quot;height&quot;),    graph.res = evalsOptions(&quot;res&quot;),    graph.hi.res = evalsOptions(&quot;hi.res&quot;),    graph.replay = evalsOptions(&quot;graph.recordplot&quot;))</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>fp</code>
  </td>
  <td>
   <p>
    a template file pointer (see
    <code>tpl.find</code>
    for details)
   </p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>data</code>
  </td>
  <td>
   <p>
    a
    <code>data.frame</code>
    to be used in template
   </p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>...</code>
  </td>
  <td>
   <p>matches template inputs in format &apos;key =
&quot;value&quot;&apos;</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>env</code>
  </td>
  <td>
   <p>
    an environment where template commands be
evaluated (defaults to
    <code>new.env()</code>
   </p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>reproducible</code>
  </td>
  <td>
   <p>
    a logical value indicating if the
call and data should be stored in template object, thus
making it reproducible (see
    <code>tpl.rerun</code>
    for
details)
   </p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>header.levels.offset</code>
  </td>
  <td>
   <p>number added to header levels
(handy when using nested templates)</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>file.name</code>
  </td>
  <td>
   <p>
    set the file name of saved plots and
exported documents. A simple character string might be
provided where
    <code>%N</code>
    would be replaced by an
auto-increment integer based on similar exported
document&apos;s file name ,
    <code>%n</code>
    an auto-increment
integer based on similar (plot) file names (see:
    <code>?evalsOptions</code>
    ),
    <code>%T</code>
    by the name of the
template in action and
    <code>%t</code>
    by some uniqe random
characters based on
    <code>tempfile</code>
    .
   </p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>file.path</code>
  </td>
  <td>
   <p>path of a directory where to store
generated images and exported reports</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>graph.output</code>
  </td>
  <td>
   <p>the required file format of saved
plots (optional)</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>graph.width</code>
  </td>
  <td>
   <p>the required width of saved plots
(optional)</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>graph.height</code>
  </td>
  <td>
   <p>the required height of saved plots
(optional)</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>graph.res</code>
  </td>
  <td>
   <p>the required nominal resolution in ppi
of saved plots (optional)</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>graph.hi.res</code>
  </td>
  <td>
   <p>logical value indicating if high
resolution (1280x~1280) images would be also generated</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>graph.replay</code>
  </td>
  <td>
   <p>
    logical value indicating if plots
need to be recorded for later replay (eg. while
    <code>print</code>
    ing
    <code>rapport</code>
    objects in R console)
   </p>
  </td>
 </tr>
</table>
###### Returned value:
<p>
 a list with
 <code>rapport</code>
 class.
</p>
###### Examples:
<div class="highlight"><pre><code class="r">rapport(&quot;example&quot;, ius2008, var = &quot;leisure&quot;)
rapport(&quot;example&quot;, ius2008, var = &quot;leisure&quot;, desc = FALSE, hist = TRUE, theme = &quot;Set1&quot;)
## generating high resolution images also
rapport(&quot;example&quot;, ius2008, var=&quot;leisure&quot;, hist = TRUE, graph.hi.res = TRUE)
rapport.html(&quot;nortest&quot;, ius2008, var = &quot;leisure&quot;, graph.hi.res=T)
## generating only high resolution image
rapport(&quot;example&quot;, ius2008, var=&quot;leisure&quot;, hist = TRUE, graph.width = 1280, graph.height = 1280)
## nested templates cannot get custom setting, use custom rapport option:
options(&apos;graph.hi.res&apos; = TRUE)
rapport(&apos;descriptives-multivar&apos;, data=ius2008, vars=c(&quot;gender&quot;, &apos;age&apos;))
</code></pre>
</div>

<a id="rp.label-set"> </a>
##### rp.label-set: Set Variable Label
###### Description:
<p>  This function sets a label to a variable, by storing a character string to its  <code>label</code>  attribute. </p>
###### Usage:
<div class="highlight">
	<pre><code class="r">rp.label(var) &lt;- value</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>var</code>
  </td>
  <td>
   <p>
    a variable (see
    <code>is.variable</code>
    for
details)
   </p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>value</code>
  </td>
  <td>
   <p>a character value that is to be set as
variable label</p>
  </td>
 </tr>
</table>
###### Examples:
<div class="highlight"><pre><code class="r">rp.label(mtcars$mpg) &lt;- &quot;fuel consumption&quot;
x &lt;- rnorm(100); ( rp.label(x) &lt;- &quot;pseudo-random normal variable&quot; )
</code></pre>
</div>

<a id="rp.label"> </a>
##### rp.label: Get Variable Label
###### Description:
<p>  This function returns character value previously stored in variable&apos;s  <code>label</code>  attribute. If none found, and  <code>fallback</code>  argument is set to  <code>TRUE</code>  (default), the function returns object&apos;s name (retrieved by  <code>deparse(substitute(x))</code>  ), otherwise  <code>NA</code>  is returned with a warning notice. </p>
###### Usage:
<div class="highlight">
	<pre><code class="r">rp.label(x, fallback = TRUE, simplify = TRUE)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>x</code>
  </td>
  <td>
   <p>an R object to extract labels from</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>fallback</code>
  </td>
  <td>
   <p>a logical value indicating if labels
should fallback to object name(s)</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>simplify</code>
  </td>
  <td>
   <p>
    coerce results to a vector (
    <code>TRUE</code>
    by default), otherwise, a
    <code>list</code>
    is returned
   </p>
  </td>
 </tr>
</table>
###### Returned value:
<p>a character vector with variable&apos;s label(s)</p>
###### Examples:
<div class="highlight"><pre><code class="r">x &lt;- rnorm(100)
rp.label(x)         # returns &quot;x&quot;
rp.label(x, FALSE)  # returns NA and issues a warning
rp.label(mtcars$hp) &lt;- &quot;Horsepower&quot;
rp.label(mtcars)         # returns &quot;Horsepower&quot; instead of &quot;hp&quot;
rp.label(mtcars, FALSE)  # returns NA where no labels are found
rp.label(sleep, FALSE)   # returns NA for each variable and issues a warning
</code></pre>
</div>

<a id="rp.name"> </a>
##### rp.name: Variable Name
###### Description:
<p>  This function returns character value previously stored in variable&apos;s  <code>name</code>  attribute. If none found, the function defaults to object&apos;s name. </p>
###### Usage:
<div class="highlight">
	<pre><code class="r">rp.name(x)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>x</code>
  </td>
  <td>
   <p>an R (atomic or data.frame/list) object to
extract names from</p>
  </td>
 </tr>
</table>
###### Returned value:
<p>a character value with variable&apos;s label</p>
###### Examples:
<div class="highlight"><pre><code class="r">rp.name(mtcars$am)
x &lt;- 1:10; rp.name(x)
</code></pre>
</div>

<a id="tpl.body"> </a>
##### tpl.body: Template Body
###### Description:
<p>Returns contents of the template body.</p>
###### Usage:
<div class="highlight">
	<pre><code class="r">tpl.body(fp, htag = get.tags(&quot;header.close&quot;), ...)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>fp</code>
  </td>
  <td>
   <p>
    a template file pointer (see
    <code>tpl.find</code>
    for details)
   </p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>htag</code>
  </td>
  <td>
   <p>a string with closing body tag</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>...</code>
  </td>
  <td>
   <p>
    additional arguments to be passed to
    <code>grep</code>
    function
   </p>
  </td>
 </tr>
</table>
###### Returned value:
<p>a character vector with template body contents</p>
<a id="tpl.check"> </a>
##### tpl.check: Check Template
###### Description:
<p>Checks if the examples of given template can be run without any error.</p>
###### Details:
<p>  If everything went fine and you get a list of  <code>success</code>  equals to  <code>TRUE</code>  values, otherwise  <code>success</code>  returns  <code>FALSE</code>  with additional  <code>message</code> </p> 
###### Usage:
<div class="highlight">
	<pre><code class="r">tpl.check(fp)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>fp</code>
  </td>
  <td>
   <p>a character vector containing template name
(&quot;.tpl&quot; extension is optional), file path or a text to be
split by line breaks</p>
  </td>
 </tr>
</table>
###### Examples:
<div class="highlight"><pre><code class="r">tpl.check(&apos;example&apos;)
</code></pre>
</div>

<a id="tpl.example"> </a>
##### tpl.example: Template Examples
###### Description:
<p>  Displays template examples defined in  <code>Example</code>  section. Handy to check out what template does and how does it look like once it&apos;s rendered. If multiple examples are available, and  <code>index</code>  argument is  <code>NULL</code>  , you will be prompted for input. If only one example is available in the header, user is not prompted for input action, and given template is evaluated automatically. At any time you can provide an integer vector with example indices to  <code>index</code>  argument, and specified examples will be evaluated without prompting, thus returning a list of  <code>rapport</code>  objects. Example output can be easily exported to various formats (HTML, ODT, etc.) - check out documentation for  <code>tpl.export</code>  for more info. </p>
###### Usage:
<div class="highlight">
	<pre><code class="r">tpl.example(fp, index = NULL, env = .GlobalEnv)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>fp</code>
  </td>
  <td>
   <p>
    a template file pointer (see
    <code>tpl.find</code>
    for details)
   </p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>index</code>
  </td>
  <td>
   <p>a numeric vector indicating the example
index - meaningful only for templates with multiple
examples. Accepts vector of integers to match IDs of
template example. Using &apos;all&apos; (character string) as index
will return all examples.</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>env</code>
  </td>
  <td>
   <p>
    an environment where example will be evaluated
(defaults to
    <code>.GlobalEnv</code>
    )
   </p>
  </td>
 </tr>
</table>
###### Examples:
<div class="highlight"><pre><code class="r">tpl.example(&apos;example&apos;)
tpl.example(&apos;example&apos;, 1:2)
tpl.example(&apos;example&apos;, &apos;all&apos;)
tpl.example(&apos;crosstable&apos;)
tpl.export(tpl.example(&apos;crosstable&apos;))
</code></pre>
</div>

<a id="tpl.export"> </a>
##### tpl.export: Export rapport object
###### Description:
<p>This function exports rapport class objects to various formats based on ascii package.</p>
###### Details:
<p>  By default this function tries to export the report to HTML with pandoc. Some default styles are applied. If you do not like those default settings, use your own  <code>options</code>  . </p>
<p>  Default parameters are read from  <code>options</code>  : </p>
<ul>  <li>   <p>&apos;tpl.user&apos;</p>  </li> </ul>
<p>  Please be sure to set  <code>&apos;tpl.user&apos;</code>  option with  <code>options()</code>  to get your name in the head of your generated reports! </p> 
###### Usage:
<div class="highlight">
	<pre><code class="r">tpl.export(rp = NULL, file, append = FALSE,    create = TRUE, open = TRUE,    date = pander.return(Sys.time()), description = TRUE,    format = &quot;html&quot;, options = &quot;&quot;, logo = TRUE)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>rp</code>
  </td>
  <td>
   <p>a rapport class object or list of rapport class
objects</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>file</code>
  </td>
  <td>
   <p>
    filename of the generated document. Inherited
from rapport class if not set. If
    <code>file</code>
    is set with
path (not equal to
    <code>getwd()</code>
    ), please set an
absolute path for images (see:
    <code>evalsOptions()</code>
    ).
   </p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>append</code>
  </td>
  <td>
   <p>FALSE (new report created) or an R object
(class of &quot;Report&quot;) to which the new report will be
added</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>create</code>
  </td>
  <td>
   <p>should export really happen? It might be
handy if you want to append several reports.</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>open</code>
  </td>
  <td>
   <p>open the exported document? Default set to
TRUE.</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>date</code>
  </td>
  <td>
   <p>character string as the date field of the
report. If not set, current time will be set.</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>description</code>
  </td>
  <td>
   <p>
    add
    <code>Description</code>
    of the rapport
class (template)? Default set to TRUE.
   </p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>format</code>
  </td>
  <td>
   <p>
    format of the wanted report. See Pandoc&apos;s
user manual for details. In short, choose something like:
    <code>html</code>
    ,
    <code>pdf</code>
    ,
    <code>odt</code>
    or
    <code>docx</code>
    .
   </p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>options</code>
  </td>
  <td>
   <p>
    options passed to
    <code>Pandoc.convert</code>
    .
   </p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>logo</code>
  </td>
  <td>
   <p>add rapport logo</p>
  </td>
 </tr>
</table>
###### Returned value:
<p>
 filepath on
 <code>create = TRUE</code>
 ,
 <code>Report</code>
 class
otherwise
</p>
###### References:
<p>
 John MacFarlane (2012): _Pandoc User&apos;s Guide_.
 <a href="http://johnmacfarlane.net/pandoc/README.html">http://johnmacfarlane.net/pandoc/README.html</a>
</p>
###### Examples:
<div class="highlight"><pre><code class="r">## eval some template
x &lt;- rapport(&apos;example&apos;, data = mtcars, var=&quot;hp&quot;)
## try basic parameters
tpl.export(x)
tpl.export(x, file=&apos;demo&apos;)
tpl.export(x, file=&apos;demo&apos;, format=&apos;odt&apos;)
### append reports
# 1) Create a report object with the first report and do not export (optional)
report &lt;- tpl.export(x, create=F)
# 2) Append some other reports without exporting (optional)
report &lt;- tpl.export(x, create=F, append=report)
# 3) Export it!
tpl.export(append=report)
# 4) Export it to other formats too! (optional)
tpl.export(append=report, format=&apos;rst&apos;)
### exporting multiple reports at once
tpl.export(tpl.example(&apos;example&apos;, &apos;all&apos;))
tpl.export(tpl.example(&apos;example&apos;, &apos;all&apos;), format=&apos;odt&apos;)
tpl.export(list(rapport(&apos;univar-descriptive&apos;, data = mtcars, var=&quot;hp&quot;),
    rapport(&apos;univar-descriptive&apos;, data = mtcars, var=&quot;mpg&quot;)))
### Never do this as being dumb:
tpl.export()
### Using other backends
## asciidoc
tpl.export(tpl.example(&apos;example&apos;, &apos;all&apos;), backend=&apos;asciidoc&apos;)
## txt2tags
tpl.export(tpl.example(&apos;example&apos;, &apos;all&apos;), backend=&apos;t2t&apos;)
### Adding own custom CSS to exported HTML
tpl.export(x, options=sprintf(&apos;-c %s&apos;, system.file(&apos;templates/css/default.css&apos;, package=&apos;rapport&apos;)))
</code></pre>
</div>

<a id="tpl.find"> </a>
##### tpl.find: Read Template
###### Description:
<p>  Reads file either from template name in system folder, file path or remote URL, and splits it into lines for easier handling by  <em>rapport</em>  internal parser. &quot;find&quot; in  <code>tpl.find</code>  is borrowed from Emacs parlance - this function actually reads the template. </p>
###### Usage:
<div class="highlight">
	<pre><code class="r">tpl.find(fp)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>fp</code>
  </td>
  <td>
   <p>
    a character string containing a template path,
a template name (for package-bundled templates only),
template contents separated by newline (
    <code>\n</code>
    ), or a
character vector with template contents.
   </p>
  </td>
 </tr>
</table>
###### Returned value:
<p>a character vector with template contents</p>
<a id="tpl.header"> </a>
##### tpl.header: Template Header
###### Description:
<p>  Returns  <code>rapport</code>  template header from provided path or a character vector. </p>
###### Usage:
<div class="highlight">
	<pre><code class="r">tpl.header(fp, open.tag = get.tags(&quot;header.open&quot;),    close.tag = get.tags(&quot;header.close&quot;), ...)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>fp</code>
  </td>
  <td>
   <p>
    a template file pointer (see
    <code>tpl.find</code>
    for details)
   </p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>open.tag</code>
  </td>
  <td>
   <p>
    a string with opening tag (defaults to
value of user-defined
    <code>&quot;header.open&quot;</code>
    tag)
   </p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>close.tag</code>
  </td>
  <td>
   <p>
    a string with closing tag (defaults to
value of user-defined
    <code>&quot;header.close&quot;</code>
    tag)
   </p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>...</code>
  </td>
  <td>
   <p>
    additional arguments to be passed to
    <code>grep</code>
    function
   </p>
  </td>
 </tr>
</table>
###### Returned value:
<p>a character vector with template header contents</p>
<a id="tpl.info"> </a>
##### tpl.info: Template Info
###### Description:
<p>  Provides information about template metadata and/or inputs. See  <code>tpl.meta</code>  and  <code>tpl.inputs</code>  for details. </p>
###### Usage:
<div class="highlight">
	<pre><code class="r">tpl.info(fp, meta = TRUE, inputs = TRUE)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>fp</code>
  </td>
  <td>
   <p>
    a template file pointer (see
    <code>tpl.find</code>
    for details)
   </p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>meta</code>
  </td>
  <td>
   <p>
    return template metadata? (defaults to
    <code>TRUE</code>
    )
   </p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>inputs</code>
  </td>
  <td>
   <p>
    return template inputs? (defaults to
    <code>TRUE</code>
    )
   </p>
  </td>
 </tr>
</table>
###### Examples:
<div class="highlight"><pre><code class="r">tpl.info(&apos;example&apos;)  # return both metadata and inputs
tpl.info(&apos;crosstable&apos;, inputs = FALSE)  # return only template metadata
tpl.info(&apos;correlations&apos;, meta = FALSE)  # return only template inputs
</code></pre>
</div>

<a id="tpl.inputs"> </a>
##### tpl.inputs: Template Inputs
###### Description:
<p>  Displays summary for template inputs (if any). Note that as of version  <code>0.5</code>  ,  <code>rapport</code>  template inputs should be defined using YAML syntax. See  <code>deprecated-inputs</code>  for details on old input syntax. The following sections describe new YAML input definition style. </p>
###### Details:
<p>  <strong>Introduction</strong> </p>
<p>  The full power of  <code>rapport</code>  comes into play with  <em>template inputs</em>  . One can match inputs against dataset variables or custom  <code>R</code>  objects. The inputs provide means of assigning  <code>R</code>  objects to  <code>symbol</code>  s in the template evaluation environment. Inputs themselves do not handle only the template names, but also provide an extensive set of rules that each dataset variable/user-provided  <code>R</code>  object has to satisfy. The new YAML input specification takes advantage of  <code>R</code>  class system. The input attributes should resemble common  <code>R</code>  object attributes and methods. </p>
<p>Inputs can be divided into two categories:</p>
<ul>  <li>   <p>    <em>dataset inputs</em>    , i.e. the inputs that refer to named element of an |codeR object provided in    <code>data</code>    argument in    <code>rapport</code>    call. Currently,    <code>rapport</code>    supports only    <code>data.frame</code>    objects, but that may change in the (near) future.   </p>  </li>  <li>   <p>    <em>standalone inputs</em>    - the inputs that do not depend on the dataset. The user can just provide an    <code>R</code>    object of an appropriate class (and other input attributes) to match a    <em>standalone</em>    input.   </p>  </li> </ul>
<p>  <strong>General input attributes</strong> </p>
<p>Following attributes are available for all inputs:</p>
<ul>  <li>   <p>    <code>name</code>    (character string, required) - input name. It acts as an identifier for a given input, and is required as such. Template cannot contain duplicate names.    <code>rapport</code>    inputs currently have custom naming conventions - see    <code>guess.input.name</code>    for details.   </p>  </li>  <li>   <p>    <code>label</code>    (character string) - input label. It can be blank, but it&apos;s useful to provide input label as    <code>rapport</code>    helpers use that information in plot labels and/or exported HTML tables. Defaults to empty string.   </p>  </li>  <li>   <p>    <code>description</code>    (character string) - similar to    <code>label</code>    , but should contain long description of given input.   </p>  </li>  <li>   <p>    <code>class</code>    (character string) - defines an input class. Currently supported input classes are:    <code>character</code>    ,    <code>complex</code>    ,    <code>factor</code>    ,    <code>integer</code>    ,    <code>logical</code>    ,    <code>numeric</code>    and    <code>raw</code>    (all atomic vector classes are supported). Class attribute should usually be provided, but it can also be    <code>NULL</code>    (default) - in that case the input class will be guessed based on matched    <code>R</code>    object&apos;s value.   </p>  </li>  <li>   <p>    <code>required</code>    (logical value) - does the input require a value? Defaults to    <code>FALSE</code>    .   </p>  </li>  <li>   <p>    <code>standalone</code>    (logical value) - indicates that the input depends on a dataset. Defaults to    <code>FALSE</code>    .   </p>  </li>  <li>   <p>    <code>length</code>    (either an integer value or a named list with integer values) - provides a set of rules for input value&apos;s length.    <code>length</code>    attribute can be defined via:   </p>   <ul>    <li>     <p>      an integer value, e.g.      <code>length: 10</code>      , which is identical to:      <code>exactly:   10</code>      nested within      <code>length</code>      attribute. In this case input length has to be equal to the provided integer value.     </p>    </li>    <li>     <p>      named list with      <code>min</code>      and/or      <code>max</code>      attributes nested under      <code>length</code>      attribute. This will define a range of values in which input length must must fall. Note that range limits are inclusive. Either      <code>min</code>      or      <code>max</code>      attribute can be omitted, and they will default to      <code>1</code>      and      <code>Inf</code>      , respectively.     </p>    </li>   </ul>   <p>    <strong>IMPORTANT!</strong>    Note that    <code>rapport</code>    treats input length in a bit different manner. If you match a subset of 10 character vectors from the dataset, input length will be    <code>10</code>    , as you might expect. But if you select only one variable, length will be equal to    <code>1</code>    , and not to the number of vector elements. This stands both for standalone and dataset inputs. However, if you match a character vector against a standalone input, length will be stored correctly - as the number of vector elements.   </p>  </li>  <li>   <p>    <code>value</code>    (a vector of an appropriate class). This attribute only exists for standalone inputs. Provided value must satisfy rules defined in    <code>class</code>    and    <code>length</code>    attributes, as well as any other class-specific rules (see below).   </p>  </li> </ul>
<p>  <strong>Class-specific attributes</strong> </p>
<p>  <em>character</em> </p>
<ul>  <li>   <p>    <code>nchar</code>    - restricts the number of characters of the input value. It accepts the same attribute format as    <code>length</code>    . If    <code>NULL</code>    (default), no checks will be performed.   </p>  </li>  <li>   <p>    <code>regexp</code>    (character string) - contains a string with regular expression. If non-    <code>NULL</code>    , all strings in a character vector must match the given regular expression. Defaults to    <code>NULL</code>    - no checks are applied.   </p>  </li>  <li>   <p>    <code>matchable</code>    (logical value) - if    <code>TRUE</code>    ,    <code>value</code>    attribute must be provided. In that case,    <code>value</code>    will contain a set of values that will be passed to    <code>link{match.arg}</code>    function    <code>choices</code>    argument. Matching will be performed on the elements of user-specified vector, i.e. provided vector will be passed to    <code>arg</code>    argument. Multiple matches    <code>several.ok</code>    are allowed, and will be computed based on the    <code>length</code>    attribute.   </p>  </li> </ul>
<p>  <em>numeric</em>  ,  <em>integer</em> </p>
<ul>  <li>   <p>    <code>limit</code>    - accepts the same format as    <code>length</code>    attribute, only that in this case it checks input values rather than input length.    <code>limit</code>    attribute is    <code>NULL</code>    by default and checks are performed only when    <code>limit</code>    is defined.   </p>  </li> </ul>
<p>  <em>factor</em> </p>
<ul>  <li>   <p>    <code>nlevels</code>    - accepts the same format as    <code>length</code>    attribute, but the check is performed rather on the number of factor levels.   </p>  </li>  <li>   <p>    <code>matchable</code>    -    <em>ibid</em>    as in character inputs, but this time it&apos;s the factor levels that get passed to    <code>arg</code>    argument in    <code>match.arg</code>    .   </p>  </li> </ul> 
###### Usage:
<div class="highlight">
	<pre><code class="r">tpl.inputs(fp, use.header = FALSE)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>fp</code>
  </td>
  <td>
   <p>
    a template file pointer (see
    <code>tpl.find</code>
    for details)
   </p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>use.header</code>
  </td>
  <td>
   <p>
    a logical value indicating whether the
header section is provided in
    <code>h</code>
    argument
   </p>
  </td>
 </tr>
</table>
<a id="tpl.list"> </a>
##### tpl.list: Package Templates
###### Description:
<p>  Lists all templates bundled with current package build. By default, it will search for all  <code>.tpl</code>  files in current directory, path specified in  <code>tpl.paths</code>  option and package library path. </p>
###### Usage:
<div class="highlight">
	<pre><code class="r">tpl.list(...)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>...</code>
  </td>
  <td>
   <p>
    additional parameters for
    <code>dir</code>
    function
   </p>
  </td>
 </tr>
</table>
###### Returned value:
<p>a character vector with template files</p>
<a id="tpl.meta"> </a>
##### tpl.meta: Header Metadata
###### Description:
<p>  Displays summary of template metadata stored in a header section. This part of template header consists of several YAML  <code>key: value</code>  pairs, which contain some basic information about the template, just much like the  <code>DESCRIPTION</code>  file in  <code>R</code>  packages does. Current implementation supports following fields: </p>
###### Details:
<ul>  <li>   <p>    <code>title</code>    - a template title (required)   </p>  </li>  <li>   <p>    <code>author</code>    - author&apos;s (nick)name (required)   </p>  </li>  <li>   <p>    <code>description</code>    - template description (required)   </p>  </li>  <li>   <p>    <code>email</code>    - author&apos;s email address   </p>  </li>  <li>   <p>    <code>packages</code>    - YAML list of packages required by the template (if any)   </p>  </li>  <li>   <p>    <code>example</code>    - example calls to    <code>rapport</code>    function, including template data and inputs   </p>  </li> </ul>
<p>  As of version  <code>0.5</code>  ,  <code>dataRequired</code>  field is deprecated.  <code>rapport</code>  function will automatically detect if the template requires a dataset based on the presence of  <em>standalone</em>  inputs. </p> 
###### Usage:
<div class="highlight">
	<pre><code class="r">tpl.meta(fp, fields = NULL, use.header = FALSE,    trim.white = TRUE)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>fp</code>
  </td>
  <td>
   <p>
    a template file pointer (see
    <code>tpl.find</code>
    for details)
   </p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>fields</code>
  </td>
  <td>
   <p>a list of named lists containing key-value
pairs of field titles and corresponding regexes</p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>use.header</code>
  </td>
  <td>
   <p>
    a logical value indicating if the
character vector provided in
    <code>fp</code>
    argument contains
only header data and not the whole template
   </p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>trim.white</code>
  </td>
  <td>
   <p>a logical value indicating if the extra
spaces should removed from header fields before
extraction</p>
  </td>
 </tr>
</table>
###### Returned value:
<p>a named list with template metadata</p>
<a id="tpl.paths.add"> </a>
##### tpl.paths.add: Add Template Path
###### Description:
<p>Adds a new element to custom paths&apos; list where rapport will look for templates.</p>
###### Usage:
<div class="highlight">
	<pre><code class="r">tpl.paths.add(...)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>...</code>
  </td>
  <td>
   <p>character vector of paths</p>
  </td>
 </tr>
</table>
###### Returned value:
<p>TRUE on success (invisibly)</p>
###### Examples:
<div class="highlight"><pre><code class="r">tpl.paths.add(&apos;/tmp&apos;)
tpl.list()
## might trigger an error:
tpl.paths.add(&apos;/home&apos;, &apos;/rapport&apos;)
</code></pre>
</div>

<a id="tpl.paths"> </a>
##### tpl.paths: Template Paths
###### Description:
<p>List all custom paths where rapport will look for templates.</p>
###### Usage:
<div class="highlight">
	<pre><code class="r">tpl.paths()</code></pre>
</div>
###### Returned value:
<p>a character vector with paths</p>
###### Examples:
<div class="highlight"><pre><code class="r">tpl.paths()
</code></pre>
</div>

<a id="tpl.paths.remove"> </a>
##### tpl.paths.remove: Remove Template Path
###### Description:
<p>Removes an element from custom paths&apos; list where rapport will look for templates.</p>
###### Usage:
<div class="highlight">
	<pre><code class="r">tpl.paths.remove(...)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>...</code>
  </td>
  <td>
   <p>character vector of paths</p>
  </td>
 </tr>
</table>
###### Returned value:
<p>TRUE on success (invisibly)</p>
###### Examples:
<div class="highlight"><pre><code class="r">tpl.paths()
tpl.paths.add(&apos;/tmp&apos;)
tpl.paths()
tpl.paths.remove(&apos;/tmp&apos;)
tpl.paths()
## might trigger an error:
tpl.paths.remove(&apos;/root&apos;)
</code></pre>
</div>

<a id="tpl.paths.reset"> </a>
##### tpl.paths.reset: Reset Template Paths
###### Description:
<p>Resets to default (NULL) all custom paths where rapport will look for templates.</p>
###### Usage:
<div class="highlight">
	<pre><code class="r">tpl.paths.reset()</code></pre>
</div>
###### Examples:
<div class="highlight"><pre><code class="r">tpl.paths.reset()
</code></pre>
</div>

<a id="tpl.renew"> </a>
##### tpl.renew: Renew deprecated template
###### Description:
<p>Convert old-style template to new-style one (what we really do is just replacing old header syntax with YAML one).</p>
###### Usage:
<div class="highlight">
	<pre><code class="r">tpl.renew(fp, file = NULL)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>fp</code>
  </td>
  <td>
   <p>
    pointer to an old template (see
    <code>tpl.find</code>
    for details)
   </p>
  </td>
 </tr>
 <tr valign="top">
  <td>
   <code>file</code>
  </td>
  <td>
   <p>
    a path to output file. If
    <code>NULL</code>
    , result
will be flushed to stdout.
   </p>
  </td>
 </tr>
</table>
<a id="tpl.rerun"> </a>
##### tpl.rerun: Reproduce Template
###### Description:
<p>  Runs template with data and arguments included in  <code>rapport</code>  object. In order to get reproducible example, you have to make sure that  <code>reproducible</code>  argument is set to  <code>TRUE</code>  in  <code>rapport</code>  function. </p>
###### Usage:
<div class="highlight">
	<pre><code class="r">tpl.rerun(tpl)</code></pre>
</div>
###### Arguments:
<table summary="R argblock">
 <tr valign="top">
  <td>
   <code>tpl</code>
  </td>
  <td>
   <p>
    a
    <code>rapport</code>
    object
   </p>
  </td>
 </tr>
</table>
###### Examples:
<div class="highlight"><pre><code class="r">tmp &lt;- rapport(&quot;example&quot;, mtcars, x = &quot;hp&quot;, y = &quot;mpg&quot;, reproducible = TRUE)
tpl.rerun(tmp)
</code></pre>
</div>

