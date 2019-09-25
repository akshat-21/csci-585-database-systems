import math
def main():
    R=8.0
    r=1.0
    a=4.0
    cx=-118.2890297
    cy=34.0214389
    nRev=16.0
    t=0.01
    f=open("coordinates.txt","w+")
    while t<math.pi*nRev:
        x=(R+r)*math.cos((r/R)*t)-a*math.cos((1+r/R)*t)
        y=(R+r)*math.sin((r/R)*t)-a*math.sin((1+r/R)*t)
        # print(x+cx)
        # print(y+cy)
        f.write(str(x+cx)+","+str(y+cy)+",0\n")
        t+=0.01

main()
