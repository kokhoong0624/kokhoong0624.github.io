# Checkpoint Test

This is an open-book **checkpoint** test focusing on building a
simple Spotify Playlist ruby app using ActiveRecord with SQL database.

# Purpose
The test is to ensure that you are familiar with the basics of ActiveRecord,
and how it works with database (sqlite3 in this case) using Ruby.

# Assessment Time
14:30pm - 16:30pm

# To start:
1) FORK this repo out by clicking the "**Fork**" button on the top right side of the GitHub page.

```
$ cd ~/Desktop
```

2) Git clone your own forked repo.

```
$ git clone <your repo address>
```

3) Navigate into the repo.
```
$ cd <repo-name>
```

4) Start writing your code on "spotify.rb" file

```
Remember to commit small and often. Some good references:
$ git add .
$ git commit
    - i
    - Write your commit message
    - Esc
    - :wq!
$ git push origin master
```

5) Once done, call a mentor and Slack him/her your GitHub repo link.

6) The mentor will assess your performance.

# App Requirements:

Example:

## 1) User is able to add new song into the Spotify list

```
$ruby spotify.rb --add <Song Name> <Played Status> 
```

Example:

```
$ ruby spotify.rb --add "uptown girl" "no"
$ ruby spotify.rb --add "sexy back" "no"
```

## 2) User is able to list all the songs:
```
$ ruby spotify.rb --list
```
```
No.   Song Name       Played Status
===   ===========     =============
1.    Uptown Girl     No
2.    Sexy Back       No
```


## 3) User is able to update the song names and status

```
ruby spotify.rb --update <No.> <Song Name> <Played Status>
```

This will update the song description with the mentioned song number.
If the song is not found, a friendly error should be raised.

Example:

```
$ ruby spotify.rb --list
```
```
No.   Song Name       Played Status
===   ===========     =============
1.    Uptown Girl     No
2.    Sexy Back       No
```

```
$ ruby spotify.rb --update 1 "Sugar" "Yes"
```
```
$ ruby spotify.rb --list
```
```
No.   Song Name       Played Status
===   ===========     =============
1.    Sugar           Yes
2.    Sexy Back       No
```

```
$ ruby spotify.rb --update 4
```

```
> Song number 4 is not found. Are you sure that this is the right song number?
```


## 4) User is able to remove any song from spotify list

```
ruby spotify.rb --remove <No.>
```

This will delete the song with the corresponding number from the list.
If the song is not found, a friendly error should be raised.

Example:

```
$ ruby spotify.rb --list
```

```
No.   Song Name       Played Status
===   ===========     =============
1.    Sugar           Yes
2.    Sexy Back       No
```

```
$ ruby spotify.rb --remove 1
```

```
$ ruby spotify.rb --list
```

```
No.   Song Name       Played Status
===   ===========     =============
1.    Sexy Back       No
```

```
$ ruby spotify.rb --remove 3
```

```
> Song number 3 is not found. Are you sure that this is the right song number?
```

## 5) The list is sorted where unplayed song are always at the top

```
$ ruby spotify.rb --list
```

```
No.   Song Name       Played Status
===   ===========     =============
1.    Sexy Back       No
2.    Sugar           Yes
3.    Let It Go       Yes
```

**IMPORTANT NOTE**:

- Take note of the Song number. Upon deletion, it should be SELF-UPDATED in an ascending order.
  Hmm, but changing the song's id inside your database is never a good idea.
  How can you self-update the number without changing the song's id?


At the end of this assessment, you should be able to:
```
1) Understand how ARGV works
2) Apply ActiveRecord and Sqlite3 into ruby application
** WITHOUT using SQL statement (refer Rakefile)
3) Able to create SQL database
4) Able to perform schema migration
5) Able to explore sqlite3 database
6) Able to CREATE, READ, UPDATE, DELETE (CRUD) data into SQL database
7) Able to rename files correctly (capitalization, camel case etc)
```

# Good Luck!!!
