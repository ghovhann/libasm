/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ghovhann <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/04/27 14:43:44 by ghovhann          #+#    #+#             */
/*   Updated: 2021/04/27 14:43:47 by ghovhann         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libasm.h"

# define STRLEN(x)			printf("`%s` = %d (%d)\n", x, ft_strlen(x), (int)strlen(x));
# define STRCMP(a, b)		printf("`%s`:`%s` = %d (%d)\n", a, b, ft_strcmp(a, b), strcmp(a, b));
# define WRITE(s, x)		printf("^%ld (`%s`:%ld)\n", ft_write(STDOUT_FILENO, s, x), s, x);
# define READ(b, x)			r = ft_read(STDIN_FILENO, buffer, x); printf("`%s`:%ld\n", buffer, r);
# define DUP(s)				tmp = ft_strdup(s); printf("`%s` (`%s`)\n", tmp, s); free(tmp); tmp = NULL;


int main()
{
    int		i;
	long	r;
	char	buffer[100];
	char	*tmp;
	char	*tmp2;

	r = 0;
	i = 0;
	while (i < 100)
		buffer[i++] = 0;

	printf("--strlen\n");
	STRLEN("")
	STRLEN("toto")
	STRLEN("totototo")
	STRLEN("0123456789abcdef")
	STRLEN("42")
	STRLEN("1")
	printf("-done\n");

	printf("\n--strcmp\n");
	STRCMP("", "")
	STRCMP("toto", "toto")
	STRCMP("", "toto")
	STRCMP("toto", "")
	STRCMP("toto", "totobar")
	printf("`%s`:`%s` = %d\n", "TOTO", NULL, ft_strcmp("TOTO", NULL));
	printf("`%s`:`%s` = %d\n", NULL, "TOTO", ft_strcmp(NULL, "TOTO"));
	printf("`%s`:`%s` = %d\n", NULL, NULL, ft_strcmp(NULL, NULL));
	printf("-done\n");

	printf("\n--strcpy\n");
	printf("`%s` (`toto`)\n", ft_strcpy(buffer, "toto"));
	printf("`%s` (empty)\n", ft_strcpy(buffer, ""));
	printf("`%s` (`long message`)\n", ft_strcpy(buffer, "long message"));
	printf("`%s` (NULL > not modified)\n", ft_strcpy(buffer, NULL));
	printf("-done\n");

	printf("\n--write\n");
	WRITE("toto", 4L)
	WRITE("totototo", 4L)
	WRITE("totototo", 8L)
	WRITE("toto", 2L)
	printf("-done\n");

	printf("\n--read (Makefile)\n");
	READ(buffer, 50)
	READ(buffer, 25)
	READ(buffer, 4)
	READ(buffer, 26)
	READ(buffer, 14)
	READ(buffer, 0)
	printf("-done\n");

	printf("\n--ft_strdup\n");
	tmp2 = ft_strdup("toto");
	DUP(tmp2)
	free(tmp2);
	DUP("totobar")
	DUP("long message")
	DUP("")
	DUP(NULL)
	printf("-done\n");

    return (0);
}
