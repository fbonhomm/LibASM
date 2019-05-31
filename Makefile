
NAME = libfts.a

CC = nasm -f macho64

SRC = ./src/ft_bzero.s\
		./src/ft_cat.s\
		./src/ft_isalnum.s\
		./src/ft_isalpha.s\
		./src/ft_isascii.s\
		./src/ft_isdigit.s\
		./src/ft_islower.s\
		./src/ft_isprint.s\
		./src/ft_isupper.s\
		./src/ft_memalloc.s\
		./src/ft_memchr.s\
		./src/ft_memcpy.s\
		./src/ft_memset.s\
		./src/ft_putchar.s\
		./src/ft_puts.s\
		./src/ft_strcat.s\
		./src/ft_strdup.s\
		./src/ft_strlen.s\
		./src/ft_tolower.s\
		./src/ft_toupper.s\

OBJET = $(SRC:.s=.o)

INCLUDE = ./include/libfts.h

FORMAT = macho64

all: $(NAME)

$(NAME): $(OBJET)
		ar rc $(NAME) $(OBJET)
		ranlib $(NAME)

%.o: %.s
		$(CC) $< -o $@
clean:
		/bin/rm -f $(OBJET)

fclean: clean
		/bin/rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
