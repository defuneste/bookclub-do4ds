#!/bin/bash
# Kleppmann, Martin, author. (2017). [Designing data-intensive applications : the big ideas behind reliable, scalable, and maintainable systems.](https://www.oreilly.com/library/view/designing-data-intensive-applications/9781491903063/) Sebastopol, CA :O'Reilly Media
# remember to authorize the file to be executable 

db_set () {
  echo "$1, $2" >> database 
}

db_get (){
  grep "^$1," database | sed -e "s/^$1,//" | tail -n 1
}