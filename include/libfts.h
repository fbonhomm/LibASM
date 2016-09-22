/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libfts.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: fbonhomm <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/05/15 21:04:46 by fbonhomm          #+#    #+#             */
/*   Updated: 2015/05/16 14:36:03 by fbonhomm         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFTS_H
# define LIBFTS_H

# include <unistd.h>
# include <stdlib.h>
# include <stdio.h>
# include <strings.h>
# include <string.h>
# include <fcntl.h>
# include <ctype.h>

void	ft_cat(int fd);
void	ft_bzero(void *s, size_t n);
int		ft_isalnum(int c);
int		ft_isalpha(int c);
int		ft_isascii(int c);
int		ft_isdigit(int c);
void	*ft_memcpy(void *restrict dst, const void *restrict src, size_t n);
void	*ft_memset(void *b, int c, size_t len);
int		ft_puts(const char *s);
char	*ft_strcat(char *restrict s1, const char *restrict s2);
char	*ft_strdup(const char *s1);
size_t	ft_strlen(const char *s);
int		ft_tolower(int c);
int		ft_toupper(int c);
int		ft_isprint(int c);
void	ft_putchar(char c);
void	*ft_memchr(const void *s, int c, size_t n);
void	*ft_memalloc(size_t size);
int		ft_isupper(int c);
int		ft_islower(int c);

#endif
