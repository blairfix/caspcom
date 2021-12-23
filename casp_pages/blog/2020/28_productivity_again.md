<b>Originally published on <a href="https://economicsfromthetopdown.com/">Economics from the Top Down</a></b>

<b>Blair Fix</b>

<p>Today I&rsquo;m going to revisit a topic that a month ago I <a href="https://economicsfromthetopdown.com/2020/04/11/one-year-o*f*-blogging/" target="_blank" rel="noopener noreferrer">committed</a> to stop writing about &mdash; the productivity-income quagmire. Neoclassical economists argue that income is proportional to productivity. The problem is that they have no way of measuring productivity that is independent of income. So in practice, they test their theory by assuming it&rsquo;s true. They show that one form of income &mdash; value added per worker &mdash; is correlated with another form of income &mdash; wages. </p>

<p>In <a href="https://economicsfromthetopdown.com/2019/07/08/no-productivity-does-not-explain-income/" target="_blank" rel="noopener noreferrer">No Productivity Does Not Explain Income</a>, I pointed out this circularity. And I haven&rsquo;t heard the end of it since. The problem, critics say, is that my argument is flawed. Yes, value added and wages are related by an accounting definition. But that doesn&rsquo;t &lsquo;guarantee&rsquo; (in strict mathematical terms) a correlation between the two. In an <a href="https://economicsfromthetopdown.com/2019/11/14/productivity-does-not-explain-wages/"" target="_blank">update post</a>, I admitted that the critics were correct. It is <em>possible</em> for wages and value added per worker to be uncorrelated.</p>

<p>Does this mean my argument is fatally flawed? No. But I will admit that the language in the original post was slightly overheated. The accounting definition between wages and value added doesn&rsquo;t <em>guarantee</em> a correlation between the two. It <em>virtually</em> guarantees one. </p>

<p>I&rsquo;m going to show you here that yes, it&rsquo;s possible for wages and value added per worker to be uncorrelated. But it&rsquo;s so unlikely that it&rsquo;s not worth considering. The reality is that because of the underlying accounting definition, it&rsquo;s virtually guaranteed that we&rsquo;ll find a &lsquo;statistically significant&rsquo; correlation between wages and value added per worker.</p>

<h3>The accounting definition</h3>

<p>Let&rsquo;s revisit how neoclassical economists test their theory of income. What they <em>should</em> do is measure the productivity of workers and see how it relates to income. But for a host of reasons, economists don&rsquo;t do this. The most basic problem is that workers do different activities. This makes it impossible to compare their outputs. How, for instance, do you compare the output of a musician with the output of a farmer? The only logical answer is that you <em>can&rsquo;t</em> &mdash; at least not objectively. </p>

<p>Realizing this problem should have caused neoclassical economists concern. It means that their theory is untestable. But instead of admitting defeat, neoclassical economists devised a loophole. To test their theory, they assume that one form of income (value added) actually measures <em>productivity</em>. Then they compare this income to another form of income (wages). The two types of income are correlated! Productivity explains income! </p>

<p>No. </p>

<p>The problem is that economists never actually measure productivity. Instead, they show that two types of income are correlated. But these two types of income are related by an accounting definition. And this accounting definition, I claim, (virtually) guarantees a correlation. </p>

<p>Let&rsquo;s dive into the math. </p>

<p>Economists want to show that wages correlate with productivity &mdash; a fundamental tenet of their theory of income. To do this, they measure productivity in terms of value added per labor hour (or sales per labor hour, if data for value added is unavailable). </p>

<p>Let&rsquo;s put this test in math form. Let <em>w</em> be the average wage of workers in a firm. Let <em>Y</em> be the value added of the firm. And let <em>L</em> be the labor hours worked by all workers in the firm. Economists look for a correlation between average wages (<em>w</em>) and value-added per labor hour (<em>Y/L</em>):</p>

<div align="center" >
[latex] \displaystyle w \longleftrightarrow \frac{Y}{L} [/latex]
</div>

<p>The problem is that the left-hand and right-hand sides of this comparison aren&rsquo;t independent from each other. Instead, they&rsquo;re connected by an accounting definition. Let&rsquo;s look at it.</p>

<p>Value added is, by definition, the sum of the wage bill (<em>W</em>) and profits (<em>P</em>): </p>

<div align="center" >
[latex] Y = W + P [/latex] 
</div>

<p>Now let&rsquo;s calculate value added per labor hour. We take value added <em>Y</em> and divide it by labor hours <em>L</em>. To maintain the equality, we also divide the right-hand side by <em>L</em>: </p>

<div align="center" >
[latex] \displaystyle \frac{Y}{L} = \frac{W + P}{L} [/latex] 
</div>

<p>Now let&rsquo;s distribute the <em>L</em> to the two terms in the numerator: </p>

<div align="center" >
[latex] \displaystyle \frac{Y}{L} = \frac{W }{L} + \frac{P}{L} [/latex] 
</div>

<p>What is <em>W / L</em>? It&rsquo;s the wage bill divided by the number of labor hours. This happens to be the average hourly wage, <em>w</em>. So value-added per worker is equivalent to the average wage plus some noise term: </p>

<div align="center" >
[latex] \displaystyle \frac{Y}{L} = w + \text{noise} [/latex] 
</div>

<p>Given this accounting definition, it&rsquo;s unsurprising that wages correlate with value added per labor hour. But do the two terms <em>have</em> to correlate? In strict math terms, no. If the noise term is large, it will drown out the correlation between wages and value added. </p>

<p>The problem is that the noise term is itself likely to correlate with value added per worker. Why? Because the noise term is actually profit per labor hour (<em>P/L</em>). It shares the same denominator (<em>L)</em> with value add per labor hour (<em>Y / L</em>). This codependency increases the chance of correlation. </p>

<p>So yes, it is possible for wages and value added to be uncorrelated. But it is also extremely improbable. </p>

<h3>Throwing numbers into the accounting formula</h3>

<p>I want to show you just how probable it is that we&rsquo;ll find a correlation between wages and value added per worker. Here&rsquo;s how I&rsquo;m going to do it. I&rsquo;m going to randomly generate values for the wage bill (<em>W</em>), profit (<em>P</em>) and labor hours (<em>L</em>) of imaginary firms. Then I&rsquo;ll throw these values into the accounting definition. Finally, I&rsquo;ll look for a correlation between the average wage and value added per labor hour. </p>

<p>Just so I&rsquo;m clear, here&rsquo;s the steps: </p>

<ol>
<li>Draw random values for the wage bill <em>W</em> and profit <em>P</em> of firms</li>
<li>Use these numbers to define value added: <em>Y = W + P</em></li>
<li>Randomly generate a value for the number of labor hours (<em>L</em>) worked in each firm</li>
<li>Compare value added per labor hour (<em>Y/L</em>) to the average wage (<em>w = W/L</em>)</li>
</ol>

<p>To generate the random numbers, we have to assume some sort of distribution. I&rsquo;ll assume that <em>W</em>, <em>P</em> and <em>L</em> come from a lognormal distribution &mdash; a distribution that is common among economic phenomena. Because I want a general test, I&rsquo;ll also assume that the parameters of this lognormal distribution are themselves random. See the <a href="#notes" target="_blank" rel="noopener noreferrer">notes</a> for the math details and code.</p>

<p>If you want a simple metaphor for this process, think of defining <em>W</em>, <em>P</em> and <em>L</em> by rolling a dice. But each time we roll, the number of dice varies. This means that <em>W</em>, <em>P</em> and <em>L</em> can vary over a large range. </p>

<h3>Judging correlation</h3>

<p>With our random numbers in hand, we plug them into our accounting definition and look for a correlation between value added per worker and the average wage. Here things get slightly more complicated. </p>

<p>It&rsquo;s easy to measure correlation &mdash; just calculate the <a href="https://en.wikipedia.org/wiki/Pearson_correlation_coefficient" target="_blank" rel="noopener noreferrer">correlation coefficient</a> (<em>r</em>) or the <a href="" title="https://en.wikipedia.org/wiki/Coefficient_of_determination" target="_blank" rel="noopener noreferrer">coefficient of determination</a> (<em>R<sup>2</sup></em>). The problem is that correlation exists on a scale. To say that two variables are &lsquo;correlated&rsquo;, we need to decide on some arbitrary threshold. This entails a value judgment. </p>

<p>For better or for worse (mostly for worse), the standard practice in econometrics is to hide this value judgment in more math. We define something called the <a href="https://en.wikipedia.org/wiki/p-value" target="_blank" rel="noopener noreferrer">&lsquo;<em>p</em>-value&rsquo;</a> of the correlation. Then we judge correlation (or lack thereof) based on an arbitrary threshold in the <em>p</em>-value. </p>

<p>What&rsquo;s a &lsquo;<em>p</em>-value&rsquo;? It&rsquo;s a probability. The <em>p</em>-value tells you the probability of getting your observed correlation (or greater) from random numbers. The lower the <em>p</em>-value, the more &lsquo;statistically significant&rsquo; your correlation. </p>

<p>Using <em>p</em>-values depends on a host of assumptions, many of which are violated when we study economic phenomena. Worse still, there are many ways to rig the game so you get better (i.e. lower) <em>p</em>-values. It&rsquo;s called <a href="https://www.wired.com/story/were-all-p-hacking-now/" target="_blank" rel="noopener noreferrer"><em>p</em>-hacking</a>, and it&rsquo;s a huge problem in the social sciences. </p>

<p>Despite these problems, I&rsquo;m going to use <em>p</em>-values to judge the correlation between simulated wages and value added per worker. I do so not because I like <em>p</em>-values (I don&rsquo;t), but because using them is the standard practice in econometrics. Getting a low <em>p</em>-value means your results are publishable. Your correlation is &lsquo;significant&rsquo;! (If you want to read about how silly this is, check out the book <a href="https://www.goodreads.com/book/show/2552158.The_Cult_of_Statistical_Significance" target="_blank" rel="noopener noreferrer">The cult of statistical significance</a>.)</p>

<h3>Correlation from randomness</h3>

<p>With our <em>p</em>-values in tow, here&rsquo;s the question we want to ask. If we plug random numbers into our accounting definition, how likely is it that the correlation between wages and value added per worker will be &lsquo;statistically significant&rsquo;? </p>

<p>The answer, it seems, is <em>very likely</em>. Although we&rsquo;re dealing with random numbers, a &lsquo;significant&rsquo; correlation between simulated wages and value added per worker seems to be in the cards. Table 1 tells the story.</p>

<p><figure></p>

<div align="center" ><b>Table 1: Correlation from randomness</b></div>

<p><table align="center">
<tr> <th> P-value (%) </th> <th> Portion of results below p-value (%) </th>  </tr>
  <tr> <td style="border: 0 !important; text-align:center; padding: 0px;"> 5.00 </td> <td style="border: 0 !important; text-align:center; padding: 0px;"> 99.96 </td> </tr>
  <tr> <td style="border: 0 !important; text-align:center; padding: 0px;"> 1.00 </td> <td style="border: 0 !important; text-align:center; padding: 0px;"> 99.94 </td> </tr>
  <tr> <td style="border: 0 !important; text-align:center; padding: 0px;"> 0.10 </td> <td style="border: 0 !important; text-align:center; padding: 0px;"> 99.91 </td> </tr>
  <tr> <td style="border: 0 !important; text-align:center; padding: 0px;"> 0.01 </td> <td style="border: 0 !important; text-align:center; padding: 0px;"> 99.89 </td> </tr>
   </table>
</figure></p>

<p>Let&rsquo;s unpack the results. I have a model that throws random numbers into our accounting definition. For each set of random numbers, I calculate the <em>p</em>-value of the correlation between wages and value added per labor hour. Then I look at how often these <em>p</em>-values are below some critical value. The left-hand column in Table 1 shows various thresholds for the <em>p</em>-value. The right-hand column shows the portion of the simulations in which the <em>p</em>-value is below this critical value for &lsquo;statistical significance&rsquo;. </p>

<p>By throwing random numbers into our accounting definition, we get a &lsquo;statistically significant&rsquo; correlation 99.9% of the time. Note that this holds no matter how stringent our level of statistical significance. Even for the very low (in the social sciences) <em>p</em>-value of 0.0001, some 99.89% of the results are &lsquo;statistically significant&rsquo;. It seems that by throwing numbers into our accounting definition, a &lsquo;statistically significant&rsquo; correlation between wages and value added per worker is virtually guaranteed. </p>

<p>Let&rsquo;s look at the simulation results another way. Figure 1 shows how the <em>p</em>-values are distributed across all of the simulations. Most of the <em>p</em>-values are so small (meaning the correlation is so &lsquo;significant&rsquo;) that I have to plot <em>p</em> on a log scale. The <em>x</em>-axis shows the logarithm of the <em>p</em>-value. The <em>y</em>-axis shows the relative frequency of each <em>p</em>-value. To get some perspective, the vertical red line shows the standard threshold for statistical significance, a <em>p</em>-value of 0.05. Virtually all of the results are below this value, meaning the correlation is &lsquo;statistically significant&rsquo;.</p>

<p><figure class="wp-block-image size-large" target="_blank"><img src="https://economicsfromthetopdown.files.wordpress.com/2020/05/p_plot.png?w=723" alt="" class="wp-image-1682"/><figcaption><strong>Figure 1: The distribution of <em>p</em>-values.</strong> Here&rsquo;s how the logarithm of <em>p</em> is distributed across 20,000 iterations of my simulation.</figcaption></figure></p>

<p>Figure 2 shows yet another way of looking at the simulation results. Instead of plotting <em>p</em>-values, here I look at the distribution of the <a href="https://en.wikipedia.org/wiki/F-test" target="_blank" rel="noopener noreferrer"><em>f</em>-statistic</a>. The <em>f</em>-statistic is another way of measuring &lsquo;statistical significance&rsquo; (<em>p</em>-values are actually derived from the <em>f</em>-statistic). But whereas a <em>lower</em> <em>p</em>-value is &lsquo;more significant&rsquo;, a <em>higher</em> <em>f</em>-statistic is &lsquo;more significant&rsquo;. </p>

<p><figure class="wp-block-image size-large" target="_blank"><img src="https://economicsfromthetopdown.files.wordpress.com/2020/05/f_plot.png?w=723" alt="" class="wp-image-1681"/><figcaption><strong>Figure 2: The distribution of <em>f</em>-statistics.</strong> Here&rsquo;s how the logarithm <em>f</em> is distributed across 20,000 iterations of my simulation.</figcaption></figure></p>

<p>As with <em>p</em>-values, the <em>f</em>-statistics are so extreme that I need to plot their logarithm. The vertical red line in Figure 2 shows the threshold for statistical significance at the 5% level. Results with an <em>f</em>-statistics above this value are deemed &lsquo;statistically significant&rsquo;. Again, we see that the vast majority of results are &lsquo;statistically significant&rsquo;. </p>

<p>It seems that by throwing random numbers into our accounting definition, we can&rsquo;t help but find a correlation between wages and value added per worker. </p>

<h3>Manufacturing correlation</h3>

<p>The charge that I&rsquo;ve laid against neoclassical economists is that when they test their theory of income, they&rsquo;re fooling themselves. Their method (virtually) guarantees a positive result. They regress two types of income &mdash; wages and value added per labor hour &mdash; that are related by an accounting definition. The problem is that this accounting definition (virtually) guarantees a statistically significant correlation. </p>

<p>Now the degree to which this correlation is guaranteed depends on the specifics of how the wage bill, profit and labor hours are distributed. But what I&rsquo;ve shown here is that across a huge class of numbers, a &lsquo;statistically significant&rsquo; correlation is almost unavoidable. It&rsquo;s manufactured by our accounting definition. </p>

<p>This result highlights a problem with how economists use <em>p</em>-values. The use of <em>p</em>-values has turned into a production function: run a regression &#8594; get a low <em>p</em>-value &#8594; get published. Rarely do economists question whether the assumptions behind <em>p</em>-values are actually met in the real-world data. </p>

<p>In my simulation, the assumptions behind <em>p</em>-values are systematically violated. To use them, we must assume that our data is &lsquo;statistically independent&rsquo;. Here, this means that wages and value added per labor hour can be treated as independent, random variables. The problem is that they&rsquo;re not independent. Wages and value add per labor hour are related by an accounting definition. This renders them highly <em>dependent</em>. So the use of <em>p</em>-values is moot. </p>

<p>Still, <em>p</em>-values are the standard by which economists judge correlation. By this standard, our accounting definition virtually guarantees a &lsquo;statistically significant&rsquo; correlation between wages and value added per labor hour. </p>

<h3>The larger problem</h3>

<p>The larger problem here is that the marginal productivity theory of income is untestable. Its core components &mdash; productivity and the &lsquo;quantity&rsquo; of capital &mdash; cannot be measured objectively. If you want to know more about these problems, I recommend John Pullen&rsquo;s book <a href="https://www.routledge.com/The-Marginal-Productivity-Theory-of-Distribution-A-Critical-History/Pullen/p/book/9781138804968" target="_blank" rel="noopener noreferrer">The Marginal Productivity Theory of Distribution: A Critical History</a>.</p>

<p>The reality is that when it comes to explaining income, there is a long and sordid history of political economists fooling themselves. Neoclassical economists may be the most visible fools, but they&rsquo;re by no means the only ones. Marxists too test their theory of income in circular terms. If you&rsquo;re interested in Marxist theory, check out the <a href="http://bnarchives.yorku.ca/308/2/20101200_cockshott_nitzan_bichler_testing_the_ltv_exchange_web.htm" target="_blank" rel="noopener noreferrer">debate</a> between Jonathan Nitzan, Shimshon Bichler and the Marxist Paul Cockshott. What appears to be evidence for the labor theory of value, Nitzan and Bichler show, is actually mathematical foolery. </p>

<p>This issue of circular testing cuts to a core problem in both neoclassical and Marxist theories of income. Both explain income in terms of quantities that are unobservable. Unsurprisingly, tests of these theories resort to circular logic. Such tests invariably show that two forms of income are correlated. Then they claim that one form of income is something other than what it seems. </p>

<p>Sadly, this foolery has been standard practice for a century. And that&rsquo;s not really surprising. There is perhaps no topic in which objectivity is more difficult than the distribution of income. Still, if we want a scientific theory of income, we need to do better. We need to stop fooling ourselves.</p>

<p><a name="notes" ></a></p>

<h3>Notes</h3>

<p>Here&rsquo;s my model. I assume that profit (<em>P</em>), the wage bill (<em>W</em>) and the number of labor hours (<em>L</em>) in firms are random variables that are lognormally distributed. If you&rsquo;re not familiar, the <a href="https://en.wikipedia.org/wiki/Log-normal_distribution" target="_blank" rel="noopener noreferrer">lognormal distribution</a> looks like a bell curve when you take the logarithm of its values. If the variable <em>x</em> is lognormally distributed, log(<em>x</em>) is normally distributed. Many quantities in economics are lognormally distributed, which is why I use this function here. </p>

<p>The lognormal distribution has two parameters, the &lsquo;location&rsquo; parameter mu and the &lsquo;scale&rsquo; parameter sigma. I&rsquo;ll denote the lognormal distribution with the notation used in R. If <em>x</em> is lognormally distributed with parameters mu and sigma, I denote it as: </p>

<p><code>x = lnorm(mu, sigma)</code></p>

<p>To assume almost nothing about the distribution of <em>P</em>, <em>W</em> and <em>L</em>, I let the parameters of the lognormal distribution vary randomly over a uniform distribution. I&rsquo;ll denote the uniform distribution using the notation used in R. If <em>x</em> is a uniformly distributed over the range 0 to 1, we write: </p>

<p><code>x = runif(0, 1)</code></p>

<p>I let the parameters of the lognormal distribution vary between 0 and 10. If you&rsquo;re familiar with the lognormal distribution, you&rsquo;ll know that this is a huge parameter space. So the values of <em>P</em>, <em>W</em> and <em>L</em> are: </p>

<p><code>P = lnorm( mu = runif(0, 10), sigma = runif(0, 10))</code></p>

<p><code>W = lnorm( mu = runif(0, 10), sigma = runif(0, 10))</code></p>

<p><code>L = lnorm( mu = runif(0, 10), sigma = runif(0, 10))</code></p>

<p>I take these values and throw them into the accounting definition. Average wages are then <em>W / L</em>. Value added per worker is <em>(W + P) / L</em>. To see how the correlation between wages and value added per worker varies, I run the algorithm several thousand times. </p>

<h3>Code</h3>

<p>Here&rsquo;s the R code for the model. Run it for yourself and see what you find. </p>

<pre><tt>library(doSNOW)

n_test = 20000
n_firms = 10^4

<i><font color="#9A1900"># cluster</font></i>
cl = makeCluster(4, type=<font color="#FF0000">"SOCK"</font>)
registerDoSNOW(cl)
clusterSetupRNG (cl, type = <font color="#FF0000">"RNGstream"</font>)

<i><font color="#9A1900"># progress Bar</font></i>
pb = txtProgressBar(max = n_test, style = 3)
progress = function(n) setTxtProgressBar(pb, n)
opts = list(progress = progress)

test = foreach(i = 1:n_test, .options.snow=opts, .combine=rbind)  <font color="#990000">%dopar%</font>  {
    
    <i><font color="#9A1900"># wagebill</font></i>
    mu = runif(1, 0, 10)
    sigma = runif(1, 0, 10)
    wagebill = rlnorm(n_firms, mu, sigma)
    
    <i><font color="#9A1900"># profit </font></i>
    mu = runif(1, 0, 10)
    sigma = runif(1, 0, 10)
    profit = rlnorm(n_firms, mu, sigma)
    
    <i><font color="#9A1900"># value added (sum of wagebill and profit)</font></i>
    value_added = wagebill + profit
    
    <i><font color="#9A1900"># labor hours</font></i>
    mu = runif(1, 0, 10)
    sigma = runif(1, 0, 10)
    labor_hours = rlnorm(n_firms, mu, sigma)
    
    <i><font color="#9A1900"># hourly wage</font></i>
    hourly_wage = wagebill / labor_hours
    
    <i><font color="#9A1900"># valued added per labor hour</font></i>
    va_per_hour = value_added / labor_hours

    <i><font color="#9A1900"># regress value added per hour and hourly wage</font></i>
    r = lm( log(va_per_hour) ~ log(hourly_wage) )
    
    f = summary(r)$fstatistic
    
    f_stat = f[1]
    p = pf(f[1],f[2],f[3],lower.tail=F)
    r2 = summary(r)$r.squared
  
    output = data.frame(f_stat, p, r2)
    
}
stopCluster(cl)

<i><font color="#9A1900"># portion that are significant</font></i>
sig_frac =  length(test$p[ test$p &lt; 0.05 ]) / length(test$p)

<i><font color="#9A1900"># f statistic</font></i>
hist(log10(test$f_stat), breaks = 100, xlim = c(0, 10))
abline(v = log10(3.85), col = <font color="#FF0000">"red"</font> )

<i><font color="#9A1900"># export</font></i>
write.csv(test, <font color="#FF0000">"test_data.csv"</font>)

</tt></pre>

<h3>Further reading</h3>
<div id="refs" class="references">
<div id="ref-cockshot_testing_2010">
<p>Cockshot, P., Shimshon, B., &amp; Nitzan, J. (2010). Testing the labour theory of value: An exchange. <a href="http://bnarchives.yorku.ca/308/02/20101200_cockshott_nitzan_bichler_testing_the_ltv_exchange_web.htm" class="uri">http://bnarchives.yorku.ca/308/02/20101200_cockshott_nitzan_bichler_testing_the_ltv_exchange_web.htm</a></p>
</div>
<div id="ref-pullen_marginal_2009">
<p>Pullen, J. (2009). <em>The marginal productivity theory of distribution: A critical history</em>. London: Routledge.</p>
</div>
<div id="ref-ziliak_cult_2008">
<p>Ziliak, S., &amp; McCloskey, D. N. (2008). <em>The cult of statistical significance: How the standard error costs us jobs, justice, and lives</em>. University of Michigan Press.</p>
</div>
</div>

