# create table recipe
create table `recipe`(
    id INT PRIMARY KEY auto_increment NOT NULL,
    title VARCHAR(255) NOT NULL,
    category_id INT NOT NULL,
    instruction text NOT NULL,
    adherent_id INT NULL,
    difficulty VARCHAR(255) NOT NULL,
    duration INT NULL,
    picture_id_1 INT NOT NULL,
    picture_id_2 INT NULL,
picture_id_3 INT NULL
);

# create table ingredient
create table `ingredient`(
    id INT PRIMARY KEY auto_increment NOT NULL,
    name_ingredient VARCHAR(100) NOT NULL,
    picture_id INT NOT NULL,
    unity VARCHAR(100) NULL
);

# create table recipe_ingredient
create table `recipe_ingredient`(
    ingredient_id INT NOT NULL,
    recipesINT_id INT NOT NULL,
    quantity INT NULL
);

# create table category
create table `category`(
    id INT PRIMARY KEY auto_increment NOT NULL,
    name VARCHAR(100) NOT NULL
);

# create table order_rating
create table `order_rating`(
    recipe_id INT NOT NULL,
    rating_id INT NOT NULL
 );

# create table rating
create table `rating`(
    id INT PRIMARY KEY auto_increment NOT NULL,
    score INT NOT NULL
);

# create table comment
create table `comment`(
    id INT PRIMARY KEY auto_increment NOT NULL,
    adherent_id INT NOT NULL,
    recipe_id INT NOT NULL,
    comment_text VARCHAR(255),
    like_comment INT NULL
);

# create table adherent
create table `adherent`(
    id INT PRIMARY KEY auto_increment NOT NULL,
    pseudo VARCHAR(50),
    email VARCHAR(50),
    password VARCHAR(40),
    role_admin VARCHAR(10)
);

# create table picture
create table `picture`(
    id INT PRIMARY KEY auto_increment NOT NULL,
    link VARCHAR(50)
);

# create table article
create table `article`(
    id INT PRIMARY KEY auto_increment NOT NULL,
    title VARCHAR(100) NOT NULL,
    content TEXT NOT NULL,
    author VARCHAR(100) NOT NULL,
    create_date DATETIME
);







