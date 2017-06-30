x <- 1
y <- 1

###### sample codes, set theta as you wish. ######
theta <- 2/5
n <- 100
plot(c(-2,2),c(-2,2),type="n")
abline(v=0)
abline(h=0)

for(i in 0:n) {
  angle <- complex(real = cos(2*pi*theta*i), 
                   imaginary = sin(2*pi*theta*i))
  point <- complex(real = x, imaginary = y)
  point0 <- point * angle
  x1 <- Re(point0)
  y1 <- Im(point0)
  segments(x1,y1,-y1,x1,col=(i %% 5)+1,lwd = 2)
  segments(-y1,x1,-x1,-y1,col=(i %% 5)+1,lwd = 2)
  segments(-x1,-y1,y1,-x1,col=(i %% 5)+1,lwd = 2)
  segments(y1,-x1,x1,y1,col=(i %% 5)+1,lwd = 2)
}

###### (a), (b) and (c) ######
theta.seq <- c(1/8, 1/7, exp(0.5))
n <- 100
for(ind in 1:3) {
  theta <- theta.seq[ind]
  fig.url <- paste("../Figures/1.9.7.", 
                   letters[ind], ".pdf", sep = "")
  cairo_pdf(fig.url)
  plot(c(-2,2),c(-2,2),type="n")
  abline(v=0)
  abline(h=0)
  for(i in 0:n) {
    angle <- complex(real = cos(2*pi*theta*i), 
                     imaginary = sin(2*pi*theta*i))
    point <- complex(real = x, imaginary = y)
    point0 <- point * angle
    x1 <- Re(point0)
    y1 <- Im(point0)
    segments(x1,y1,-y1,x1,col=(i %% 5)+1,lwd = 2)
    segments(-y1,x1,-x1,-y1,col=(i %% 5)+1,lwd = 2)
    segments(-x1,-y1,y1,-x1,col=(i %% 5)+1,lwd = 2)
    segments(y1,-x1,x1,y1,col=(i %% 5)+1,lwd = 2)
  }
  dev.off()
}

