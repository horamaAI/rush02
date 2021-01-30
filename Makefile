# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: dmahoro- <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/01/30 13:18:04 by dmahoro-          #+#    #+#              #
#    Updated: 2021/01/30 15:49:15 by dmahoro-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC =		cc
SRCS =		./main.c
HEAD =		
OBJ =		$(SRCS:.c=.o)
CFLAGS +=	-Wall -Wextra -Werror
NAME =		rush-02


$(NAME):	$(SRCS)
	$(CC) -c $(CFLAGS) $(SRCS)
	$(CC) $(CFLAGS) -o $(NAME) $(OBJ)

all:		$(NAME)

clean:
	rm -f $(OBJ)

fclean :
	rm -f $(NAME)

re:			fclean all

.PHONY: 	all clean fclean re
