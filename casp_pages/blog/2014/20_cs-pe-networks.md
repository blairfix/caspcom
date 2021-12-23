<b>Shai Gorsky</b>

<em>This series of posts will explore some contemporary fields in “complexity science”. They summarize experiences from the Santa-Fe Institute Complex Systems Summer School 2014, with the hope of suggesting to readers useful research tools for political-economy. Please feel free to <a href="mailto:shai.gorsky@utah.edu">contact</a> the author if you are interested in discussing or utilizing any of the approaches for research in the Capital as Power framework.</em>

<h3>Networks</strong></h3>

<em>The following notes summarize (mainly) lectures by Prof. Aaron Clauset, University of Colorado, Boulder and the Santa-Fe Institute. Full graduate level course lectures notes (including further readings) are available <a href="http://santafe.edu/~aaronc/courses/5352/">online</a>.</em>

The recent rise of the internet and digital social networks has led to a surge in interest and research in network analysis. The mathematical basis for analyzing networks is somewhat older: Euler’s solution to the <em>Seven Bridges of Königsberg</em> riddle, proposed in 1735, is considered to be the cornerstone for a branch of mathematics known as <em>Graph Theory</em>. The city of Königsberg, Prussia (now Kaliningrad, Russia) spanned over two banks of the river Pregel, with two islands and seven bridges over the river. Figure 1 shows a contemporary map of Kaliningrad and the approximate locations of the original seven bridges in red circles.

<img class="aligncenter wp-image-1334 size-full" src="http://www.capitalaspower.com/wp-content/uploads/2014/08/figure1-600w.png" alt="Figure 1" width="600" height="445" />

The challenge was to find a path that visits all the four land masses of the city and crosses each of the seven bridges only once. Euler abstracted the problem by treating only the land masses and the bridges (ignoring, e.g., distances or any other physical characteristics). In Figure 2, taken from Euler’s original solution, the four land masses are denoted by the uppercase letters <em>A-D</em> and the bridges are by the lowercase letters <em>a-f</em>.

<img class="alignnone size-full wp-image-1338" src="http://www.capitalaspower.com/wp-content/uploads/2014/08/figure2-600w.png" alt="figure2-600w" width="600" height="357" />

A contemporary graphical representation of the same abstraction is suggested in Figure 3.

<img class="alignnone size-full wp-image-1339" src="http://www.capitalaspower.com/wp-content/uploads/2014/08/figure3-600w.png" alt="figure3-600w" width="600" height="258" />

We leave to the reader to find the solution to the riddle. Our interests here lie elsewhere: in the abstraction of a city map – a highly detailed and complex object – to a <em>graph</em> comprised of only two types of components, and in the analytical treatment of graphs.

Some terminology: graphs are mathematical objects which have <em>vertices </em>(or <em>nodes</em>, <em>actors</em>) and <em>edges</em> (or <em>links</em>, <em>ties</em>). In our first example the vertices are the land masses (<em>A-D</em> in Figures 2 and 3) and the edges are the bridges (<em>a-f</em> in Figures 2 and 3). Vertices must be distinct objects, while edges are pairwise relations between these objects. The <em>degree</em> of a vertex is the number of edges that are connected to it. The term network, in our context, will be used interchangeably with the term graph. Thus, for example, the term “social network” will remain meaningless lest we define what the vertices are, what the edges are, and which vertices are connected by edges. A possible network representation of a social domain may include persons as vertices and friendships as edges. However, one may suggest other network representations of the same thing.

Some examples of popular network representations of various phenomena are given in Table 1:

 

<h4>Table 1: popular network representations</h4>
<table>
<tbody>
<tr>
<td width="160">
<h4><strong>Network</strong></h4>
</td>
<td width="160">
<h4><strong>Vertex</strong></h4>
</td>
<td width="160">
<h4><strong>Edge</strong></h4>
</td>
</tr>
<tr>
<td width="160">Internet</td>
<td width="160">Computer</td>
<td width="160">IP network adjacency</td>
</tr>
<tr>
<td width="160">World Wide Web</td>
<td width="160">Web page</td>
<td width="160">Hyperlink</td>
</tr>
<tr>
<td width="160">Documents</td>
<td width="160">Article, patent or legal case</td>
<td width="160">Citation</td>
</tr>
<tr>
<td width="160">Power grid transmission</td>
<td width="160">Generating or relay station</td>
<td width="160">Transmission line</td>
</tr>
<tr>
<td width="160">Rail system</td>
<td width="160">Rail station</td>
<td width="160">Railroad tracks</td>
</tr>
<tr>
<td width="160">Neuronal network</td>
<td width="160">Neuron</td>
<td width="160">Synapse</td>
</tr>
<tr>
<td width="160">Food web</td>
<td width="160">Species</td>
<td width="160">Predation</td>
</tr>
<tr>
<td width="160">Banking networks</td>
<td width="160">Bank</td>
<td width="160">Lending between banks</td>
</tr>
<tr>
<td width="160">Bitcoin</td>
<td width="160">Bitcoin wallet</td>
<td width="160">Transaction</td>
</tr>
</tbody>
</table>
 

There are several types of networks. A <em>Simple Network</em> is <em>undirected</em>, <em>unweighted</em> and has no <em>self-loops</em>. Euler’s graph of the Seven Bridges of Königsberg is indeed such a simple network. When edges are <em>directed</em> – point from one vertex to another – the network is <em>directed</em>. When different edges are assigned with numbers the network is <em>weighted</em>. Several types of vertices may be introduced in a single network, and <em>Multiplex Networks</em> also have several types of edges.

<img class="alignnone size-full wp-image-1340" src="http://www.capitalaspower.com/wp-content/uploads/2014/08/figure4-600w.png" alt="figure4-600w" width="600" height="306" />

What kind of questions can we ask about networks? What kind of answers does network science provide? We will survey here some quick examples of answers to the above questions.

<h4>Centrality</h4>
How important is a vertex? Can we quantitatively discern more important than less important vertices? The concept of <em>centrality</em> is supposed to provide some insight into this question. There are many measures of centrality of vertices. These measures receive network data as input, and assign each vertex with a number representing its centrality (different measures may provide differing quantifications). Figure 5 shows for example the <em>Eigenvector Centrality</em> measure of a given network structure, which assigns a higher centrality measure to vertices that are connected to vertices with a high degree. Google’s search engine famous page ranking algorithm is a variant of the Eigenvector centrality measure.

<img class="alignnone size-full wp-image-1341" src="http://www.capitalaspower.com/wp-content/uploads/2014/08/figure5-600w.png" alt="figure5-600w" width="600" height="351" />


<h4>Community Structure</h4>

Community, of course, is a rich notion that cannot be fully covered by a network representation or any all-encompassing quantitative measure. In the context of network analysis, <em>community structure </em>is a group of vertices that connects with other groups of vertices in similar ways. We’ll provide two examples of community structures.

Suppose our vertices are divided into subgroups. To what extent are vertices more highly connected to vertices of the same kind? The <em>assortativity</em> <em>coefficient</em> quantifies exactly this. High assortativity indicates that vertices of the same kind have many edges between each other. Figure 6 demonstrates how a highly assortative network may look like.

<img class="alignnone size-full wp-image-1342" src="http://www.capitalaspower.com/wp-content/uploads/2014/08/figure6-600w.png" alt="figure6-600w" width="600" height="293" />

The presence or absence of an assortative community structures is of high importance in, e.g., the study of epidemics. Define a network such that persons are vertices and edges are interactions amongst persons that allow infection with a disease. If an assortative community structure exists and vaccination is at hand, then the spread of infectious diseases may be more easily controlled by vaccinating the persons that correspond to the vertices that connect the subgroups of vertices, thus containing the disease in a smaller group.

Another widely discussed community structure is the <em>core-periphery</em> community structure. A core-periphery structure exists when a group of vertices that are densely connected to one another (the <em>core</em>) is connected to a sparser group (the <em>periphery</em>). Figure 7 demonstrates how a network with a clear core-periphery community structure may look like.

<img class="alignnone size-full wp-image-1343" src="http://www.capitalaspower.com/wp-content/uploads/2014/08/figure7-600w.png" alt="figure7-600w" width="600" height="306" />

Indeed, the core-periphery analogy rings a familiar bell from the world-systems analysis tradition. Della Rossa, Dercole &amp; Piccardi have demonstrated how network core-periphery characterization when applied to world trade data, generates the following core-periphery world map.

<img class="alignnone size-full wp-image-1344" src="http://www.capitalaspower.com/wp-content/uploads/2014/08/figure8-600w.png" alt="figure8-600w" width="620" height="369" />

Other major topics in networks science involve the evolution of networks over time; building statistical generative models that may shed light on the processes that underlie the development of different kinds of networks; developing algorithms for predicting missing links; and detecting network change points over time (“phase transitions”).

There are many additional concepts and research interests in network science that we will not mention here. To conclude, we will suggest as a starting point for discussion some concepts from the Capital as Power framework that may benefit from network analyses. For one, the concept of <em>dominant capital</em> has been quantitatively defined so far somewhere between loosely and arbitrarily. Can a network representation of capitals be found such that centrality measures or core-periphery analyses will assist in identifying dominant capitals, and in deriving meaningful conclusions about them? Second, phase transitions of networks may, given a relevant network representation, in fact be <em>regime shifts</em> of capitalist differential accumulation. Third, can network community structure detection delineate coalitions of dominant capitalists? What may we learn about the robustness of such coalitions from network measures? Of their development over time? Fourth, ownership structures seem intuitively to be very susceptible to network analysis (by defining financial entities as vertices and ownership as weighted and directed edges), but full data is absent. Can a partial dataset be completed with inference methods?

In a nutshell, a successful network research depends on a good definition of the network, one that will allow interesting insights to arise from the various established network analyses. Doing so may indeed be a reachable goal.

