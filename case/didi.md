source: https://www.nowcoder.com/test/3701733/summary

##### 交通拥堵是目前许多大型城市普遍存在的问题，如果你是滴滴工程师，如何利用网约车平台制定有效的治堵方案？

- 非高峰期平价收费，在高峰期乘车需额外附加拥堵费，
- 预测可能拥堵的路段，导航司机行驶畅通路线
- 接入公交系统，向用户推荐更快速的交通方案，从单一的约车服务切成多段，例如从出发地乘坐地铁到达某处再换成约车其速度最快，配置最优的交通运力
- 拼车系统，减少空载和浪费运力的情况

##### 而在实际情况中，考虑到拼车的用户体验不如非拼车，以及上述计价方式中会有一些收入差额：P(XY) + P(UV) – P(XUYV)。所以对A用户的定价会在P(XY)的基础上给予折扣，而考虑到用户感受，这个折扣在订单发出的时候，就需要确定。请分析我们应该基于哪些因素，用什么方法来确定用户的拼车折扣？

- 从A用户上车地点到B用户上车地点的距离和拥堵情况
- 从B用户上车地点到A用户下车地点的距离和拥堵情况
- 预测如果从A用户可能损失的时间
- A，B两地的上车用户人数
- 拼车发生的时间(高峰还是夜间)和地点
- A的总行程距离

##### 滴滴业务一直处于高速发展期，供需预测一直是我们关注的焦点，请问如何预测第二天的订单交易量？请写出需要考虑的因素和具体思路。

- 订单历史数据(前三天)，环比数据(上一个七天，上个月)
- 司机活跃度，用户活跃度
- 天气
- 交通管制(限号，限行)
- 航班，铁路信息
- 节假日
- 有无运营活动


1. 用来求解加权有向图的最短路径的算法是:<br>
Ford-Bellman算法:Ford-Bellman算法是求含有负权图的单源最短路径算法

2. 
em算法指的是最大期望算法（Expectation Maximization Algorithm，又译期望最大化算法），是一种迭代算法，用于含有隐变量（latent variable）的概率参数模型的最大似然估计或极大后验概率估计。

3.
-<img src="http://chart.googleapis.com/chart?cht=tx&chl= $MSE(\hat{\theta})=Var(\hat{\theta}) + (Bias(\hat{\theta},\theta))^2$" style="border:none;">

4.
L1范数使权值稀疏，L2范数能得到平滑的权值

5.
GMM的缺点就是收敛到局部最优

6.

7.拓扑有向图排序需要满足：<br>
- 每个顶点出现且只出现一次；
- 若A在序列中排在B的前面，则在图中不存在从B到A的路径

10.球体体积:
-<img src="http://chart.googleapis.com/chart?cht=tx&chl= $\frac{4}{3}\pi r^{3}$" style="border:none;">

11.在统计模式识分类问题中，当先验概率未知时，可以使用?
- 在统计模式分类问题中，聂曼-皮尔逊判决准则主要用于某一种判决错误较另一种判决错误更为重要情况；最小最大判别准则主要用于先验概率未知的情况。

12.
答案C其实就是矩阵P的最大特征值。这道题 x'Px 可以理解为向量x经过变换P之后与变换前的x求内积，即1*模（Px）*cos(theta)。这种情况下的P应该是具有椭圆的形式，当x是最大特征值对应的特征向量时，Px为长轴，模最大，且与x同向。所以此时取得最大值：lambda。求特征值的方法为： Px=lambda*x, 令 P-lambda*I 这个矩阵的行列式为0，可求出两个特征值，取其大者。


13.
相同的秩，相同的非零特征值的个数相同


14. c速度最慢
a.
'''
select count(*) from phone
	where phone_num >='188' 
	and phone_num < '188a'
'''
b.
'''
select count(*) from phone
	where phone_num like '188%'
'''
c.
'''
select count(*) from phone
	where substr(phone_num,1,3)='188'
'''
17.
Dropout是指在模型训练时随机让网络某些隐含层节点的权重不工作，不工作的那些节点可以暂时认为不是网络结构的一部分，但是它的权重得保留下来（只是暂时不更新而已），因为下次样本输入时它可能又得工作了。 训练神经网络模型时，如果训练样本较少，为了防止模型过拟合，Dropout可以作为一种trikc供选择。

18.
发出数据的应用程序端口为源端口，接收数据的应用程序端口为目的端口。

19.
矩阵的秩等于行秩等于列秩。

20.
红黑树是特殊的AVL树，AVL树又是特殊的二叉查找树，它的除删除之外所有操作平均运行时间都为O(log(n))


25. svd, pca 不同
PCA and SVD are equivalent in certain sense, so no need to worry their differences. Assume X is the standardized data matrix, and the columns are variables, rows are samples. SVD of X is X = UDV^T, where the matrix UD is just the principal component matrix that is used commonly, and if you just use the first k columns of UD, then it is the first k principal components. Actually, the implementation of most PCA functions in software is using SVD. PCA is an eigen decomposition of covariance matrix (note that this is the singular value decomposition for the covariance matrix, but this SVD is not the SVD we usually mean. When we say SVD, we normally refer the the SVD of X). PCA has its certain interpretations such as the largest variance directions. So one can argue that PCA focus more on covariance matrix while SVD focus more on the data itself. But there is no fundamental differences between PCA and SVD. From a matrix viewpoint, SVD are best low rank matrix approximation in Frobenius norm, as well as as the low dimensional hyperplane approximation to the data cloud, which give much wider applications than PCA. As mentioned by nan.xiao, SVD is also widely used for sparse matrix or matrix completion with missing values, which is based on its interpretation which is NOT reflected by PCA.

26.
对于二分类问题，任取一正例和负例，正例得分大于负例得分的概率就是AUC的值。在这个题里，正例有两个，负例也有两个，共4种取法。（0.7，0.8）（0.7,0.1）（0.9,0.8）（0.9,0.1），这4个当中后面3个都是正例得分概率大于负例得分概率，所以AUC的值就是3/4

32.重叠面积
算法是，首先计算重叠区域两个矩阵相应元素的差值绝对值，即求重叠区域的C=|A-B|，然后转化为在C矩阵中用动态规划算法寻找最小花费路径。

33.
1) L2正则化项，作用是倾向于得到平均的参数解，避免出现绝对值很大的参数。还有L1正则化项，其可以得到稀疏解。

3) SGD,L-BFGS, 拟牛顿

34.
1、暴力不优方案： 穷尽遍历
2、广度遍历
选择小强周边可通行的格子做一个第一层遍历节点，并标记为已遍历。
继续选择第一层节点周边未遍历节点作为下一层遍历节点，并标记为已遍历；
依次遍历下去，最先出现迷宫边界节点时，广度遍历的层次路径即为最少路径