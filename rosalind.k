/ utilities

dl:"/home/omar/Downloads/"
lines:{0:dl,"rosalind_",x,".txt"}
line:*lines@
ints:.line@
fasta:!/+{(1_*x;,/1_x)}'{(&">"=*'x)_x}@lines@
out:{$[`A=@x;0:;1:][dl,"out.txt";x]}

/ problems

nt:"ACGT"
dna:+/nt=/:

rna:"U"/"T"\

revc:|(|nt)@nt?

fib:{+/(x-1){(y*x 1),+/x}[;y]/1 0}.

gc:{p:{100*(+/~^"CG"?x)%#x}'x;m:p?|/p;`0:(m;$p m)}

hamm:+/~=/

iprb:{1-((0.25*y*y-1)+(z*z-1)+y*z)%s*-1+s:x+y+z}.

ct:!/+0N 2#(~""~/:)#" "\" "/0:"codon_table.txt"
ct:*'{$[x~"Stop";,".";x]}'ct
prot:-1_ct@/:0N 3#

subs:{1+&y~/:(#y)':x}.

cons:nt@{x?|/x}'+nt(+/=)\:

grph:{,/(!g){(x," "),/:y^,x}'.g:&'x{(-3#x)~3#y}/:\:x}

tree:{(.*x)-#x}

sset:{x(1000000!2*)/1}
