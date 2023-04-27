# import turtle
# from turtle import *
#
# if __name__ == '__main__':
#     karol = turtle.Turtle()
#     karol.shape("turtle")
#
#     for i in range(10):
#         karol.speed(1)
#         karol.forward(50 + 10 * i)
#         karol.right(90)
#
#     karol.write("Toto je Korytnacka Karol")
#     done()

from turtle import *
color('red', 'yellow')
begin_fill()
while True:
    forward(200)
    left(170)
    if abs(pos()) < 1:
        break
end_fill()
done()