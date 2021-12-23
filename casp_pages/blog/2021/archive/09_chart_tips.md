<b>Originally published on <a href="https://economicsfromthetopdown.com/">Economics from the Top Down</a></b>

<b>Blair Fix</b>

<p>They say that a picture is worth a thousand words. In science, the corollary is that a good chart is worth a whole article.</p>

<p>Okay, that’s probably an exaggeration … but only slightly. Millions of words are spilled each day communicating science. Yet people have finite time to read. The consequence is that most people skim articles, looking for things that interest them. What’s going to catch their eye as they skim? In a word, <em>charts</em>.</p>

<p>I speak from personal experience. When I discover an interesting-looking article, the first thing I do is look at the charts. If they’re intriguing, I read the article in more detail. I suspect that many scientists (and general readers) do the same. So I don’t think it’s an exaggeration to say that the best way to improve your scientific communication is to learn how to make charts that <em>pop</em>.</p>

<h3 id="software" target="_blank">Software</h3>
<p>The ten chart-making tips below are about aesthetics, so they’re software agnostic. That being said, choosing the right software makes the job easier. I use the R <a href="https://ggplot2.tidyverse.org/" target="_blank" rel="noopener">ggplot package</a> for all of my charts. (R users: I’ve included footnotes with ggplot coding tips. Also, see <a href="https://economicsfromthetopdown.com/2019/07/30/making-beautiful-charts-using-r-ggplot/" target="_blank" rel="noopener">this post</a> for a brief ggplot tutorial.)</p>

<p>Although I use R, you can likely achieve the same results using any scripting language. If you’re a <em>spreadsheet</em> user, however, be aware that this software is limiting. It may be possible to use Excel to implement the tips described below. But it would probably be painful. Spreadsheet software is just not designed for complex graphics.</p>

<p>Scripting languages, on the other hand, allow fine-grain control over your charts. They also make it easier for you (and others) to keep track of what you’ve done. That’s an important part of <a href="https://economicsfromthetopdown.com/2019/11/28/ten-tips-for-doing-open-science/" target="_blank" rel="noopener">doing open science</a>. Scripting languages also make it easy to reuse the same chart design. That way you only have to do the time-consuming design work once.</p>

<p>Alright, enough about software. On to the 10 aesthetic tips for making great charts.</p>

<h3 id="make-your-charts-big" target="_blank">1. Make your charts <em>big</em></h3>
<p>Here’s one of my pet peeves: <em>small charts</em>. It annoys me when scientists make nice-looking charts, but format them to be inexplicably small.</p>

<p>Now, I understand the motivation for small charts. In the past, articles were designed to be printed. That made space a scarce commodity. So it made sense to make charts that were relatively small. But today, the vast majority of reading is done online, where space is unlimited. So there is no reason to make the reader strain their eye. Charts can (and should) be big.</p>

<p>Compare the two charts below. One is cartoonishly small. The other is large. Which one do you prefer?</p>

<figure class="wp-block-image size-large" target="_blank">
<img src="https://economicsfromthetopdown.files.wordpress.com/2020/01/employment_hierarchy.png?w=200" alt="" class="aligncenter"/>
<figcaption>
<strong>Membership in each rank in the US military.</strong> [<a href="https://economicsfromthetopdown.com/2019/12/20/how-hierarchy-can-mediate-the-returns-to-education/" target="_blank" rel="noopener">Source</a>]
</figcaption>
</figure>
<figure class="wp-block-image size-large" target="_blank">
<img src="https://economicsfromthetopdown.files.wordpress.com/2020/01/employment_hierarchy.png?w=723" alt="" class="wp-image-1909"/>
<figcaption>
<strong>Membership in each rank in the US military.</strong> [<a href="https://economicsfromthetopdown.com/2019/12/20/how-hierarchy-can-mediate-the-returns-to-education/" target="_blank" rel="noopener">Source</a>]
</figcaption>
</figure>
<p>If you’re writing online, most hosting sites (like WordPress, Medium or Substack) have a good default image size. <em>Use these defaults</em>.</p>

<p>If you’re creating a pdf, a good rule of thumb is to size your chart so that it’s roughly the same width as the text. Often, this means that the chart (and accompanying description) will take up a whole page. That’s okay. Remember, in the digital universe you have unlimited space. So don’t sell yourself short by making a great chart and then sizing it too small. Make your charts big.</p>

<h3 id="pay-attention-to-plot-dimensions" target="_blank">2. Pay attention to plot dimensions</h3>
<p>The corollary of plot size is <em>plot dimension</em>. Should the chart be square? Tall and thin? Short and wide? The answer depends on what you’re trying to emphasize.</p>

<p>A chart that is short and wide emphasizes the <em>horizontal</em> axis. The chart below, for instance, shows the rise and fall of the British Empire, as measured by relative energy use. Because the chart is short and wide, it emphasizes the passage of time on the <em>x</em>-axis.</p>

<figure class="wp-block-image size-large" target="_blank">
<img src="https://economicsfromthetopdown.files.wordpress.com/2020/07/britain_flat.png?w=723" alt="" class="wp-image-1909"/>
<figcaption>
<strong>The rise and fall of the British Empire.</strong> [<a href="https://economicsfromthetopdown.com/2020/07/11/why-america-wont-be-great-again/" target="_blank" rel="noopener">Source</a>]
</figcaption>
</figure>
<p>Now let’s look at the same chart, but this time make the vertical axis taller. Although the data is identical, this taller chart (below) feels different. Why? Because it emphasizes the <em>y</em>-axis. Rather than highlight the passage of time, the taller chart highlights the rise and fall of relative energy use.</p>

<figure class="wp-block-image size-large" target="_blank">
<img src="https://economicsfromthetopdown.files.wordpress.com/2020/07/britain.png?w=723" alt="" class="wp-image-1909"/>
<figcaption>
<strong>The rise and fall of the British Empire.</strong> [<a href="https://economicsfromthetopdown.com/2020/07/11/why-america-wont-be-great-again/" target="_blank" rel="noopener">Source</a>]
</figcaption>
</figure>
<p>The choice of chart dimensions depends on what you’re trying to emphasize. But as a rule, I prefer charts that are nearly square. In contrast, many scientists make charts that are short and wide, perhaps because that’s the default shape in Excel. The problem with this shape is that it tends to de-emphasize the <em>y</em>-axis. Yet it’s usually the <em>y</em>-axis that we want the reader to focus on. So don’t sell your <em>y</em>-axis short. Make tall charts!</p>

<h3 id="use-color-to-show-a-3rd-dimension" target="_blank">3. Use color to show a 3rd dimension</h3>
<p>The <a href="https://en.wikipedia.org/wiki/Cartesian_coordinate_system" target="_blank" rel="noopener">coordinate plane</a> is the most basic element of plotting. This plane is great for visualizing 2 variables. But how do you visualize 3 or more variables?</p>

<p>One possibility is to make a 3D chart. You <a href="https://en.wikipedia.org/wiki/3D_projection" target="_blank" rel="noopener">project a 3rd dimension</a> onto the 2D page.<a href="#fn1" class="footnote-ref" id="fnref1" ><sup>1</sup></a> The problem with this approach, though, is that the reader is still looking at a 2D surface. That can make the 3rd dimension difficult to interpret.</p>

<p>A better approach is to use <em>color</em> to show a 3rd dimension. This allows you to display 3 variables while retaining the clarity of a 2D plot. The chart below, for instance, shows the growth of US GDP per capita over time. I’ve put time on the <em>x</em>-axis and indexed growth on the <em>y</em>-axis. I’ve used color to show a 3rd dimension — the ‘base year’ used to estimate the growth of GDP.<a href="#fn2" class="footnote-ref" id="fnref2" ><sup>2</sup></a></p>

<figure class="wp-block-image size-large" target="_blank">
<img src="https://economicsfromthetopdown.files.wordpress.com/2019/12/gdp.png?w=723" alt="" class="wp-image-1909"/>
<figcaption>
<strong>Uncertainty in the growth of US real GDP.</strong> [<a href="https://economicsfromthetopdown.com/2019/12/15/why-we-should-abandon-real-gdp-as-a-measure-of-economic-activity/" target="_blank" rel="noopener">Source</a>]
</figcaption>
</figure>
<p>Besides color, another possibility is to use <em>varying point size</em> to show an extra dimension. The <a href="https://www.gapminder.org/tools/#$chart-type=bubbles" target="_blank" rel="noopener">Gapminder app</a> does this to great effect. It plots countries as circles, with circle size indicating population. Study this software. It’s one of the best examples of scientific visualization.</p>

<h3 id="show-regression-confidence-intervals" target="_blank">4. Show regression confidence intervals</h3>
<p>Scientific charts usually do two things:</p>

<ol type="1" target="_blank">
<li>Show the raw data</li>
<li>Show the <em>trend</em> in the data</li>
</ol>
<p>Most often, you’ll plot the raw data using a scatter plot. Then you’ll draw a line through it to show the trend. In statistical jargon, we call this trend a <a href="https://en.wikipedia.org/wiki/Regression_analysis" target="_blank" rel="noopener">‘regression’</a>. In addition to plotting the trend line, I like to plot the regression ‘confidence interval’. (If you’re wondering what this is, I’ll explain in a bit.)</p>

<p>The chart shows how average firm size grows with energy use per capita. I’ve plotted the best-fit line for the regression. I’ve also plotted the <em>regression confidence interval</em>, shown as the gray region around the line.<a href="#fn3" class="footnote-ref" id="fnref3" ><sup>3</sup></a></p>

<figure class="wp-block-image size-large" target="_blank">
<img src="https://economicsfromthetopdown.files.wordpress.com/2020/02/energy_firm.png?w=723" alt="" class="wp-image-1909"/>
<figcaption>
<strong>Average firm size vs. energy use per capita.</strong> [<a href="https://economicsfromthetopdown.com/2020/02/28/what-if-the-government-is-just-another-firm-part-2/" target="_blank" rel="noopener">Source</a>]
</figcaption>
</figure>
<p>What is a ‘regression confidence interval’? It’s the uncertainty in your best-fit line caused by the limited size of your sample of data. The smaller the data sample, the larger the regression uncertainty (and vice versa). The regression confidence interval shows the probable range for your line of best fit.</p>

<p>I like to show the regression confidence interval for two reasons. First, it <em>looks cool</em>. It adds curves to an otherwise straight line. Second, the regression confidence interval visualizes important information. It tells the reader how much uncertainty there is in the data trend. Of course, this information could be summarized in a table. But my rule of thumb is this: if there’s a simple way to visualize data, <em>do it</em>. Plot your regression confidence intervals!</p>

<h3 id="pay-attention-to-point-size" target="_blank">5. Pay attention to point size</h3>
<p>The <a href="https://en.wikipedia.org/wiki/Scatter_plot" target="_blank" rel="noopener">scatter plot</a> is the most important tool in your chart-making repertoire. It’s the best way to visualize correlation.</p>

<p>A simple way to improve your scatter plots is to pay attention to the size of your data points. The size should be <em>inversely proportional</em> to the number of observations. In a chart with a few dozen observations (like the one below), the point size should be relatively large.</p>

<figure class="wp-block-image size-large" target="_blank">
<img src="https://economicsfromthetopdown.files.wordpress.com/2019/10/income_v_power-3.png?w=723" alt="" class="wp-image-1909"/>
<figcaption>
<strong>Income vs. hierarchical power in case-study firms.</strong> [<a href="https://economicsfromthetopdown.com/2019/10/17/an-evolutionary-theory-of-resource-distribution-part-3/" target="_blank" rel="noopener">Source</a>]
</figcaption>
</figure>
<p>As you add more data to a chart, you should shrink the point size. Doing so keeps the trend visible, allowing the reader to distinguish the forest from the trees. Consider the chart below, which contains roughly 50,000 observations. To clearly show the trend, I’ve shrunk the point size to a bare minimum. This way the sparse data on the outer edges of the scatter plot doesn’t distract from the trend in the middle. So here’s my rule of thumb: <em>the more data, the smaller the point size</em>.</p>

<figure class="wp-block-image size-large" target="_blank">
<img src="https://economicsfromthetopdown.files.wordpress.com/2019/11/sales_wages.png?w=723" alt="" class="wp-image-1909"/>
<figcaption>
<strong>Average wage vs. firm’s sales per worker.</strong> [<a href="https://economicsfromthetopdown.com/2019/11/14/productivity-does-not-explain-wages/" target="_blank" rel="noopener">Source</a>]
</figcaption>
</figure>
<h3 id="to-show-the-forest-not-the-trees-use-transparency" target="_blank">6. To show the forest (not the trees), use transparency</h3>
<p>Whenever you’re making a chart, think about what you want to emphasize. In the chart below, I wanted to emphasize the price change between different commodities. But I also wanted to clearly show each commodity.</p>

<figure class="wp-block-image size-large" target="_blank">
<img src="https://economicsfromthetopdown.files.wordpress.com/2019/12/prices_select.png?w=723" alt="" class="wp-image-1909"/>
<figcaption>
<strong>Price change of 10 commodities on the US Consumer Price Index.</strong> [<a href="https://economicsfromthetopdown.com/2019/12/15/why-we-should-abandon-real-gdp-as-a-measure-of-economic-activity/" target="_blank" rel="noopener">Source</a>]
</figcaption>
</figure>
<p>As you plot more data, the emphasis should change. You become less concerned with individual data points, and more concerned with the overall trend. A good way to emphasize this trend is to use <em>transparency</em>.<a href="#fn4" class="footnote-ref" id="fnref4" ><sup>4</sup></a></p>

<p>The chart below shows the price change of <em>every</em> commodity on the US Consumer Price Index. The goal here is not to emphasize any single commodity, but rather to show the trend. To emphasize the trend, I’ve made each price series fairly transparent. This makes the chart look gray where the data is thin, and black where the data is dense. Without transparency, these details would be lost.</p>

<figure class="wp-block-image size-large" target="_blank">
<img src="https://economicsfromthetopdown.files.wordpress.com/2019/12/prices_all.png?w=723" alt="" class="wp-image-1909"/>
<figcaption>
<strong>Price change of all commodities on the US Consumer Price Index.</strong> [<a href="https://economicsfromthetopdown.com/2019/12/15/why-we-should-abandon-real-gdp-as-a-measure-of-economic-activity/" target="_blank" rel="noopener">Source</a>]
</figcaption>
</figure>
<p>When you’re making a chart, see how much data you have. If there are over 10,000 data points, transparency is your friend.</p>

<h3 id="label-significant-data-points" target="_blank">7. Label significant data points</h3>
<p>A good way to make your chart more informative is to add labels to the data. The caveat is that your labels need to be <em>significant</em>. Nobody wants to read a scatter plot where each data point is labeled ‘observation 1’, ‘observation 2’, and so on. But if information about the data points is interesting, put it in the chart.<a href="#fn5" class="footnote-ref" id="fnref5" ><sup>5</sup></a></p>

<p>Countries names are a good example. I’ve found that whenever I plot data about countries, people want to know which country is which. You can satisfy this curiosity by labeling your data. Below, for instance, I’ve labeled countries of the world that have (or once had) a communist government. (I’ve also used color to distinguish between the two types of regimes.) Notice that I didn’t label <em>all</em> the countries in the chart. Doing so would have been cluttered. And when it comes to making pretty charts, clutter is your enemy.</p>

<figure class="wp-block-image size-large" target="_blank">
<img src="https://economicsfromthetopdown.files.wordpress.com/2020/02/energy_government_communist.png?w=723" alt="" class="wp-image-1909"/>
<figcaption>
<strong>Government share of employment vs energy use per capita.</strong> [<a href="https://economicsfromthetopdown.com/2020/02/28/what-if-the-government-is-just-another-firm-part-2/" target="_blank" rel="noopener">Source</a>]
</figcaption>
</figure>
<p>Labels need not be text. Below, for instance, I’ve used pictures to show where different organisms sit on the ‘biomass spectrum’.<a href="#fn6" class="footnote-ref" id="fnref6" ><sup>6</sup></a> Be creative with your labels. If you can add extra information to your chart (without creating clutter) do it!</p>

<figure class="wp-block-image size-large" target="_blank">
<img src="https://economicsfromthetopdown.files.wordpress.com/2020/02/biomass_spectrum_human.png?w=723" alt="" class="wp-image-1909"/>
<figcaption>
<strong>Organism abundance vs. mass.</strong> [<a href="https://economicsfromthetopdown.com/2020/02/19/what-if-the-government-is-just-another-firm-part-1/" target="_blank" rel="noopener">Source</a>]
</figcaption>
</figure>
<h3 id="rank-categorical-data" target="_blank">8. Rank categorical data</h3>
<p>Unlike numerical data, <a href="https://en.wikipedia.org/wiki/Categorical_variable" target="_blank" rel="noopener">categorical data</a> has no inherent order. But as a rule, you should give it one. <em>Rank your categorical data</em>.</p>

<p>My preference is to rank categorical data by the effect you’re plotting on the opposite axis. Below, for instance, I’ve plotted various human traits on the <em>y</em>-axis. I’ve then ranked them in descending order of their effect on income. The resulting chart is easier to interpret (and visually more pleasing) than if I’d ranked the traits alphabetically. As a rule, plot the data so that there’s a visible trend. Patterns, not randomness, are what catch they eye.</p>

<figure class="wp-block-image size-large" target="_blank">
<img src="https://economicsfromthetopdown.files.wordpress.com/2020/06/us_signal_noise.png?w=723" alt="" class="wp-image-1909"/>
<figcaption>
<strong>How various traits affect income.</strong> [<a href="https://economicsfromthetopdown.com/2020/06/02/what-trait-affects-income-the-most/" target="_blank" rel="noopener">Source</a>]
</figcaption>
</figure>
<h3 id="use-inset-plots" target="_blank">9. Use inset plots</h3>
<p>Sometimes you want to plot two sets of data that are related, but conceptually distinct. A good way to do this is to use <em>inset plots</em> — especially if you want to emphasize one set of data over another.<a href="#fn7" class="footnote-ref" id="fnref7" ><sup>7</sup></a></p>

<p>Consider the chart below. Here I visualize estimates for how hierarchical power becomes more concentrated as energy use increases. The <em>main panel</em> measures this concentration using the Gini index. I’ve put most of the details in this main panel (country labels, different colors) because it’s here that I want the reader to focus. But I also want to show another way of measuring the concentration of hierarchical power (’global reaching centrality). I’ve put this extra information in an <em>inset plot</em>.</p>

<figure class="wp-block-image size-large" target="_blank">
<img src="https://economicsfromthetopdown.files.wordpress.com/2020/05/hierarchy_degree-2.png?w=723" alt="" class="wp-image-1909"/>
<figcaption>
<strong>The concentration of hierarchical power vs. energy use.</strong> [<a href="https://economicsfromthetopdown.com/2020/05/19/economic-development-and-the-death-of-the-free-market/" target="_blank" rel="noopener">Source</a>]
</figcaption>
</figure>
<p>As a rule, inset plots should be simpler than the main plot. The inset chart above, for instance, contains no labels and uses only one color. This simplicity keeps the focus on the main plot. Also make sure to put the inset panel where your main-chart data <em>isn’t</em>. Sometimes this requires playing around with scales and axis dimensions. And make sure you reduce the font size on the inset panel.</p>

<p>Use inset panels with caution. If adding one makes your chart feel cluttered, don’t do it. Instead, display the extra information in a separate chart.</p>

<h3 id="use-panels-to-show-related-information" target="_blank">10. Use panels to show related information</h3>
<p>Sometimes you have more data than can reasonably fit in a single plot. To avoid clutter, you can plot this type of data using <em>panels</em>.<a href="#fn8" class="footnote-ref" id="fnref8" ><sup>8</sup></a></p>

<p>Below, for instance, is a plot of how income distribution (in a model) relates to hierarchical rank. Each panel shows both the income distribution of a given rank, and the income distribution of all ranks. The chart is visually pleasing because it uses repetition to highlight change. Each consecutive panel is similar, but slightly different.</p>

<figure class="wp-block-image size-large" target="_blank">
<img src="https://economicsfromthetopdown.files.wordpress.com/2020/07/hierarchy_hist.png?w=723" alt="" class="wp-image-1909"/>
<figcaption>
<strong>Income distribution by hierarchical rank (model of the United States).</strong> [<a href="https://osf.io/u95dk/" target="_blank" rel="noopener">Source</a>]
</figcaption>
</figure>
<p>This method works best when all of the panels share the same scale. That way you don’t have to repeat axis labels.</p>

<p>You can also use panels when you have a number of charts that are conceptually related. Grouping charts is particularly useful when creating a pdf. In a web document, you can have many figures interspersed with a few lines of explanatory text. But in a pdf, text tends to get separated from figures. This means readers may have to scan several pages to understand that two charts are related. Grouping charts together in panels solves this problem.</p>

<p>The caveat is that using panels shrinks the size of your charts. So you need to think about the trade offs. Is it better to have small charts that are grouped together? Or do you want large charts that are dispersed? Experiment with both approaches to see which works best.</p>

<h3 id="great-charts-take-time" target="_blank">Great charts take time</h3>
<p>Good writing rarely happens on the first draft. Likewise, good data visualization rarely happens the first time you plot your data. I often revise a chart dozens of times before I’m satisfied. Sometimes I spend as much time making the graphics for a paper as I do writing the text.</p>

<p>To improve your chart-making skills, pay attention to the charts that you find compelling. (Browse <a href="https://www.reddit.com/r/dataisbeautiful/" target="_blank" rel="noopener">Data is Beautiful</a> for good examples.) What aesthetics make the chart pleasing? Try to replicate these aesthetics in your own work. Don’t worry if it takes a long time. <em>It should</em>. Good visualization, as with good writing, takes practice. So be patient and enjoy the process. Happy plotting!</p>

<p></p>

<h3 id="notes" target="_blank">Notes</h3>
<section class="footnotes" target="_blank">
 
<ol>
<li id="fn1" target="_blank"><p>If you’re dead set on making a 3D chart (sometimes there is no alternative), I’ve created an R function for projecting 3D data onto a 2D surface. Check it out at <a href="https://github.com/blairfix/project" target="_blank" rel="noopener">github</a>. It’s useful for two reasons. First, unlike many 3D plotting apps, this function creates <em>true</em> perspective (not <a href="https://en.wikipedia.org/wiki/Parallel_projection" target="_blank" rel="noopener">parallel</a> or <a href="https://en.wikipedia.org/wiki/Oblique_projection" target="_blank" rel="noopener">oblique</a> perspective). Second, the function allows you to make 3D plots with your favorite 2D plotting software like ggplot.<a href="#fnref1" class="footnote-back" >↩</a></p>
</li>
<li id="fn2" target="_blank"><p>Making charts with color is easy in ggplot. First, format your data so that the <em>x</em>, <em>y</em>, and <em>color</em> data are each in their own column. Then tell ggplot to plot three aesthetics: <code>x</code>, <code>y</code>, and <code>col</code>. In my GDP example, <code>year</code> goes on the <em>x</em>-axis, <code>gdp</code> goes on the <em>y</em>-axis, and <code>base_year</code> gets displayed as color.</p>

<pre><code>aes(x = year, y = gdp, col = base_year)</code></pre>
<p>See the <a href="http://www.cookbook-r.com/Graphs/Colors_(ggplot2)/" target="_blank" rel="noopener">R Cookbook</a> for more details.<a href="#fnref2" class="footnote-back" >↩</a></p>
</li>
<li id="fn3" target="_blank"><p>ggplot provides a simple way to plot a regression with confidence intervals. Just use the command <code>stat_smooth(method = lm)</code>. Try this code that uses the preset database <code>cars</code>:</p>

<pre><code>p = ggplot(cars, aes(speed, dist)) +
    geom_point() +
    stat_smooth(method = lm)</code></pre>
<p>See <a href="http://www.sthda.com/english/articles/40-regression-analysis/166-predict-in-r-model-predictions-and-confidence-intervals/" target="_blank" rel="noopener">this article</a> for more details.<a href="#fnref3" class="footnote-back" >↩</a></p>
</li>
<li id="fn4" target="_blank"><p>In ggplot, you can create transparency by using the <code>alpha</code> command. <code>alpha = 1</code> is completely opaque. <code>alpha = 0</code> is completely transparent. Play around to see what looks best on your specific chart. If you want the transparency the same for all points, remember to keep the <code>alpha</code> command outside the <code>aes()</code> call. Here’s an example:</p>

<pre><code>p = ggplot(cars, aes(speed, dist)) +
    geom_point(alpha = 0.1)</code></pre>
<p><a href="https://ggplot2.tidyverse.org/reference/aes_colour_fill_alpha.html" target="_blank" rel="noopener">More details here</a>.<a href="#fnref4" class="footnote-back" >↩</a></p>
</li>
<li id="fn5" target="_blank"><p>In ggplot, the best way to label data is to use the <a href="https://cran.r-project.org/web/packages/ggrepel/vignettes/ggrepel.html" target="_blank" rel="noopener">ggrepel package</a>. It will automatically add labels in a way that doesn’t overlap with the data points (that’s the ‘repel’ part of the name).<a href="#fnref5" class="footnote-back" >↩</a></p>
</li>
<li id="fn6" target="_blank"><p>Here’s how you add a picture to a ggplot chart. First, read the picture into R using the <a href="https://cran.r-project.org/web/packages/png/index.html" target="_blank" rel="noopener"><code>png</code></a> package:</p>

<pre><code>picture = readPNG(&quot;file.png&quot;) 
picture = rasterGrob(picture, interpolate = T)</code></pre>
<p>Then add the picture to the plot using the <code>annotation_custom</code> command:</p>

<pre><code>annotation_custom(picture, xmin = 1, xmax = 2, ymin = 1, ymax = 2)</code></pre>
<p>The <code>x</code> and <code>y</code> values determine the placement of the image on your chart. <a href="https://ggplot2.tidyverse.org/reference/annotation_custom.html" target="_blank" rel="noopener">More details here</a>.<a href="#fnref6" class="footnote-back" >↩</a></p>
</li>
<li id="fn7" target="_blank"><p>In ggplot, you can add inset panels using the <code>annotation_custom</code> command. <a href="https://ggplot2.tidyverse.org/reference/annotation_custom.html" target="_blank" rel="noopener">Here’s a tutorial</a>.<a href="#fnref7" class="footnote-back" >↩</a></p>
</li>
<li id="fn8" target="_blank"><p>In ggplot, you can create multi-panel plots using the <code>facet</code> command. See the <a href="http://www.cookbook-r.com/Graphs/Facets_(ggplot2)/" target="_blank" rel="noopener">R Cookbook</a> for a good tutorial.<a href="#fnref8" class="footnote-back" >↩</a></p>
</li>
</ol>
</section>
<h3>Further reading</h3>
<div id="refs" class="references">
<div id="ref-healy_data_2018">
<p>Healy, K. (2018). <em>Data visualization: A practical introduction</em>. Princeton University Press.</p>
</div>
<div id="ref-tufte_visual_2001">
<p>Tufte, E. R. (2001). <em>The visual display of quantitative information</em> (Vol. 2). Graphics press Cheshire, CT.</p>
</div>
<div id="ref-wickham_ggplot_2016">
<p>Wickham, H. (2016). <em>Ggplot2: Elegant graphics for data analysis</em>. springer.</p>
</div>
</div>


