##
## Makefile for Makefile in /home/arthur-pain/epitech/script/start
## 
## Made by arthur-pain
## Login   <arthur.pain@epitech.eu@epitech.net>
## 
## Started on  Sat Dec 24 15:31:35 2016 arthur-pain
## Last update Sat Dec 24 15:58:08 2016 arthur-pain
##

CC	=	gcc

RM	=	rm -f

CFLAGS +=	-Wextra -Wall
#CFLAGS+=	-ainsi -pedantic
CFLAGS +=	-Iinclude/ -Llib/my/ -lmy

LDFLAGS	=

NAME	=	to_change

ACCESS	=	src/

SRC	=	$(ACCESS)main.c

OBJ	=	$(SRC:.c=.o)

all	:	compile

compile	:	$(OBJ)
		$(CC) -o $(NAME) $(OBJ) $(LDFLAGS)

clean	:
		$(RM) $(OBJ)

fclean	:	clean
		$(RM) $(NAME)

re	:	fclean all

