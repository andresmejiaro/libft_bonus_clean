# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: amejia <amejia@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/01/27 19:16:14 by amejia            #+#    #+#              #
#    Updated: 2023/02/20 19:20:14 by amejia           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

SRCS = ft_atoi.c ft_memchr.c ft_split.c ft_strncmp.c ft_bzero.c ft_memcmp.c \
ft_strchr.c ft_strnstr.c ft_calloc.c ft_memcpy.c ft_strdup.c ft_strrchr.c ft_isalnum.c \
ft_memmove.c ft_striteri.c ft_strtrim.c ft_isalpha.c ft_memset.c ft_strjoin.c ft_substr.c \
ft_isascii.c ft_putchar_fd.c ft_strlcat.c ft_tolower.c ft_isdigit.c ft_putendl_fd.c ft_strlcpy.c \
ft_toupper.c ft_isprint.c ft_putnbr_fd.c ft_strlen.c ft_itoa.c ft_putstr_fd.c \
ft_strmapi.c 

BONUS_SRCS = ft_lstadd_back_bonus.c ft_lstadd_front_bonus.c ft_lstclear_bonus.c\
  ft_lstdelone_bonus.c ft_lstiter_bonus.c ft_lstlast_bonus.c ft_lstmap_bonus.c \
  ft_lstnew_bonus.c ft_lstsize_bonus.c

OBJS = ${SRCS:.c=.o}

BONUS_OBJS = ${BONUS_SRCS:.c=.o}

CFLAGS = -Wall -Werror -Wextra

INCLUDE = libft.h

all: $(NAME)  

%.o: %.c
	$(CC) -c $(CFLAGS) $< -o $@
	ar -crs $(NAME) $@
	
bonus: $(NAME) $(BONUS_OBJS)

$(NAME): ${OBJS}

clean: 
	rm -f ${OBJS} $(BONUS_OBJS)

fclean: clean
	rm -f ${NAME}

re: fclean all

.PHONY: all clean fclean re

