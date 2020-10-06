create table user
(
    id         int auto_increment
        primary key,
    login      varchar(255) not null,
    e_mail     varchar(255) not null,
    name_first varchar(255) not null,
    name_last  varchar(255) null
);

create table post
(
    id      int auto_increment
        primary key,
    title   varchar(255) not null,
    text    varchar(255) not null,
    section varchar(255) not null,
    user_id int          not null,
    constraint post_ibfk_1
        foreign key (user_id) references user (id)
);

create table comment
(
    id        int auto_increment
        primary key,
    parent_id int          null,
    text      varchar(255) not null,
    user_id   int          not null,
    post_id   int          not null,
    constraint comment_ibfk_1
        foreign key (post_id) references post (id)
);

create index post_id
    on comment (post_id);

create index user_id
    on post (user_id);