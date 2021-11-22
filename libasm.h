#ifndef LIBASM_H
#define LIBASM_H

#include <stdlib.h>
#include <stddef.h>
#include <unistd.h>
#include <string.h>
#include <stdio.h>

extern int _ft_strlen;
extern int _ft_strcmp;
extern char* _ft_strdup;
extern ssize_t _ft_read;
extern ssize_t _ft_write;
extern char* _ft_strcpy;

int		    ft_strlen(char const *str);
int		    ft_strcmp(char const *s1, char const *s2);
char		*ft_strcpy(char *dst, char const *src);
ssize_t		ft_write(int fd, void const *buf, size_t nbyte);
ssize_t		ft_read(int fd, void *buf, size_t nbyte);
char		*ft_strdup(char const *s1);

#endif