/* ************************************************************************** */
/*                                                          LE - /            */
/*                                                              /             */
/*   fillit.h                                         .::    .:/ .      .::   */
/*                                                 +:+:+   +:    +:  +:+:+    */
/*   By: thbrouss <marvin@le-101.fr>                +:+   +:    +:    +:+     */
/*                                                 #+#   #+    #+    #+#      */
/*   Created: 2018/10/17 13:11:53 by thbrouss     #+#   ##    ##    #+#       */
/*   Updated: 2018/10/19 15:13:19 by thbrouss    ###    #+. /#+    ###.fr     */
/*                                                         /                  */
/*                                                        /                   */
/* ************************************************************************** */

#ifndef FILLIT_H

# define FILLIT_H

# include <fcntl.h>
# include <sys/types.h>
# include <sys/stat.h>

int		ft_check_patern(char *tab, int i);
int		ft_check_pa1(char **tab);
int		ft_check_pa2(char **tab);
int		ft_check_pa3(char **tab);
int		ft_check_pa4_5(char **tab);
int		ft_check_pa6_7(char **tab);
int		check_len(char *file);
int		check_next_to(char *file);
int		check_error(char *file, char n_line);
int		parse_file(int fd, char **files, int *c_blocks);

# define LINE_L 0
# define HASH_N 1
# define BUFF_SIZE 21

#endif
