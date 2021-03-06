create table roasters (
    id serial primary key,
    name text,
    location text, 
    phoneNumber varchar(20),
    website text
);

create table greenCoffee (
    id serial primary key,
    name text,
    countryOfOrigin text,
    regionOfOrigin text,
    farm text, 
    farmer text, 
    elevation integer, 
    varietal text,
    processingStyle text
);

create table users (
    id serial primary key,
    username text unique not null,
    firstName text, 
    lastName text, 
    email text, 
    phoneNumber varchar(20),
    apikey text unique not null,
    apicalls INTEGER,
    apitimestamp text, --UTC TIME stored as text
    hash text
);


create table shops (
    id serial primary key,
    name text,
    location text, 
    phoneNumber varchar(20),
    hours text,
    website text,
    shopOwnerID integer references users(id)
);

create table beanCoffee (
    id serial primary key,
    name text, 
    roastProfile text,
    roasterID integer references roasters(id),
    greenCoffeeID integer references greencoffee(id)
);

create table cups (
    id serial primary key,
    userID integer references users(id),
    name text,
    dateOrdered date,
    roastDate date,
    cost text,
    brewMethod text,
    coffeeSize text,
    condiments text, 
    didLike text, 
    flavor text, 
    aroma text, 
    acidity text, 
    sweetness text, 
    mouthfeel text, 
    comments text,
    score integer,
    shopID integer references shops(id),
    beanCoffeeID integer references beanCoffee(id)
);

create table roasters_shops (
    roasterID integer references roasters(id),
    shopID integer references shops(id)
);

create table usersLikes (
    userID integer references users(id),
    shopID integer references shops(id),
    roasterID integer references roasters(id),
    beanCoffeeID integer references beanCoffee(id)
);