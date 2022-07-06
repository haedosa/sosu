# 1.3.1
If $x=0.37373737\cdots$, express $x$ as a ratio of integers.  

$$
\begin{align}
x=0.37373737\cdots\Rightarrow& 100x=37.373737\cdots\\
\Rightarrow& 99x=37\\
\Rightarrow& x=\frac{37}{99}
\end{align}
$$

# 1.3.2
If $y=0.519191919\cdots$, express $y$ as a ratio of integers.

$$
\begin{align}
y=0.5191919\cdots\Rightarrow& 10y=5.191919\cdots\\
\Rightarrow&1000y=519.191919\cdots\\
\Rightarrow&990y=514\\
\Rightarrow&y=\frac{514}{990}
\end{align}
$$

# 1.3.3
By generalizing the idea of the previous exercises, explain why each ultimately periodic decimal represents a rational number.  

Any periodic decimal number can be written as

$$
r=0.b_1b_2\cdots b_k\overline{a_1a_2\cdots a_n}
$$

$$
\begin{align}
\Rightarrow&10^k r=b_1b_2\cdots b_k.\overline{a_1a_2\cdots a_n}\\
\Rightarrow&10^{k+n}r=b_1b_2\cdots b_ka_1a_2\cdots a_n.\overline{a_1a_2\cdots a_n}\\
\Rightarrow&(10^{k+n}-10^k)r=b_1b_2\cdots b_ka_1a_2\cdots a_n-b_1b_2\cdots b_k\\
\Rightarrow& r=\frac{b_1b_2\cdots b_ka_1a_2\cdots a_n-b_1b_2\cdots b_k}{10^{k+n}-10^k}
\end{align}
$$

Since both $b_1b_2\cdots b_ka_1a_2\cdots a_n-b_1b_2\cdots b_k$ and $10^{k+n}-10^k$ are integers (integers are closed under addition, subtraction, and multiplication), any periodic decimal number represents a ratio of two integers (i.e., rational number).

# 1.3.4
Find the decimals for $1/6$ and $1/7$.  

$$
\begin{align}
\frac{1}{6}=&1\times10^{-1}+\frac{4}{6}\times10^{-1}\\
=&1\times10^{-1}+6\times10^{-2}+\frac{4}{6}\times10^{-2}\\
=&0.1\overline{6}
\end{align}
$$


$$
\begin{align}
\frac{1}{7}=&1\times10^{-1}+\frac{3}{7}\times10^{-1}\\
=&1\times10^{-1}+4\times10^{-2}+\frac{2}{7}\times10^{-2}\\
=&1\times10^{-1}+4\times10^{-2}+2\times10^{-3}+\frac{6}{7}\times10^{-3}\\
=&1\times10^{-1}+4\times10^{-2}+2\times10^{-3}+8\times10^{-4}+\frac{4}{7}\times10^{-4}\\
=&1\times10^{-1}+4\times10^{-2}+2\times10^{-3}+8\times10^{-4}+5\times10^{-5}+\frac{5}{7}\times10^{-5}\\
=&1\times10^{-1}+4\times10^{-2}+2\times10^{-3}+8\times10^{-4}+5\times10^{-5}+7\times10^{-6}+\frac{1}{7}\times10^{-6}\\
=&0.\overline{142857}
\end{align}
$$

# 1.3.5
By means of the division processes, or otherwise, explain why each rational number has an ultimately periodic decimal.  


# 1.3.6
If each rational point in the plane is surrouned by a disk of fixed size $\varepsilon$, show that there is _no_ line from $<0,0>$ that misses all other disks.  

A line from $\langle 0,0\rangle$
that passes a point $\langle m,n\rangle$ is

$$
nx-my=0
$$
  
The distance between the line and a point $\langle a,b\rangle$ is

$$
d=\frac{|na-mb|}{\sqrt{n^2+m^2}}
$$

$\forall\varepsilon>0$, $\exists n,m\in\mathbb{N}$ such that 
$\frac{|na-mb|}{\sqrt{n^2+m^2}}<\varepsilon$.  
Therefore, there is always a line that passes the disk at any point $\langle a,b\rangle$.

# 1.3.7
Conclude that, if space were filled uniformly with stars of uniform size, the whole sky would be filled with light (the Olbers paradox).
