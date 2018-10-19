# **************************************************************************** #
#                                                           LE - /             #
#                                                               /              #
#    Makefile                                         .::    .:/ .      .::    #
#                                                  +:+:+   +:    +:  +:+:+     #
#    By: thbrouss <marvin@le-101.fr>                +:+   +:    +:    +:+      #
#                                                  #+#   #+    #+    #+#       #
#    Created: 2018/10/18 16:32:29 by thbrouss     #+#   ##    ##    #+#        #
#    Updated: 2018/10/19 22:09:14 by cgarrot     ###    #+. /#+    ###.fr      #
#                                                          /                   #
#                                                         /                    #
# **************************************************************************** #


.PHONY: all clean fclean re

NAME = fillit
MAKE=make
CC = gcc
FLAGS = -Wall -Wextra -Werror
INCLUDE = ./includes

#------------------------------------FILE--------------------------------------#

FILES = parse_input\
main\
check_error\
letter\
detect_piece

#----------------------------------SOURCE--------------------------------------#

SRC = $(addsuffix .c, $(FILES))

#----------------------------------OBJECT--------------------------------------#

OBJ= $(addsuffix .o, $(FILES))

#-----------------------------------RULE---------------------------------------#

all: $(NAME)


$(NAME): $(SRC) $(INCLUDE)
	@echo "\033[1m|---------------------------------|\033[0m"
	@echo "\033[1m|-------Compilation du prog-------|\033[0m"
	@echo "\033[1m|---------------------------------|\033[0m"
	@echo "\033[1m|---------------------------------|\033[0m"
	@echo "\033[1m|---------Creation du prog--------|\033[0m"
	@echo "\033[1m|---------------------------------|\033[0m"
	@+$(MAKE) -C libft/
	@$(CC) $(FLAGS) -g -o $(NAME) $(SRC) -I$(INCLUDE) -L libft/ -lft

clean:
	@echo "\033[1m|---------------------------------|\033[0m"
	@echo "\033[1m|-------Supprimer les OBJECT------|\033[0m"
	@echo "\033[1m|---------------------------------|\033[0m"
	@rm -f $(OBJ)

fclean: clean
	@echo "\n"
	@echo "\033[1m|---------------------------------|\033[0m"
	@echo "\033[1m|-------Supprimer la libft.a------|\033[0m"
	@echo "\033[1m|---------------------------------|\033[0m"
	@rm -f $(NAME) 

re: fclean all
