# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lfreydie <lfreydie@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/28 15:29:12 by lfreydie          #+#    #+#              #
#    Updated: 2022/12/15 11:18:09 by lfreydie         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC	=	gcc

CFLAGS	=	-Wall -Wextra -Werror

NAME	=	libftprintf.a

RM	=	rm -f

AR	=	ar -rcs

INCLUDE	=	ft_printf.h

SOURCES	=	ft_i_utoa.c ft_print_ptr.c ft_printf.c ft_put_hex.c\
			ft_putchar.c ft_putnbr_u.c ft_putstr.c ft_strchr.c\
			ft_strlen.c

OBJECTS	=	$(SOURCES:.c=.o)

all:	$(NAME)

$(NAME):	$(OBJECTS) $(INCLUDE)
			$(AR) $(NAME) $(OBJECTS)

clean:
		$(RM) $(OBJECTS)

fclean:	clean
		$(RM) $(NAME)

re:	fclean all

.PHONY:	all clean fclean re
