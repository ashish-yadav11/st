* extract patch for scrollback
* send bugfix for tdeletechar and tinsertchar: args to memmove can point beyond
  the array
* send bugfix in handling CSI 'J', case 1: term.c.y > 1 to term.c.y >= 1
