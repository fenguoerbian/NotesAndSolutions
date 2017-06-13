x <- 1
y <- 1

theta <- 2/5
n <- 100
plot(c(-2,2),c(-2,2),type="n")
abline(v=0)
abline(h=0)

for(i in 0:n) {
  angle <- complex(real = cos(2*pi*theta*i), imaginary = sin(2*pi*theta*i))
  point <- complex(real = x, imaginary = y)
  point0 <- point * angle
  x1 <- Re(point0)
  y1 <- Im(point0)
  segments(x1,y1,-y1,x1,col=(i %% 5)+1,lwd = 2)
  segments(-y1,x1,-x1,-y1,col=(i %% 5)+1,lwd = 2)
  segments(-x1,-y1,y1,-x1,col=(i %% 5)+1,lwd = 2)
  segments(y1,-x1,x1,y1,col=(i %% 5)+1,lwd = 2)
}