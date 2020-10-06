INSERT INTO user (login, e_mail, name_first)
VALUES
       ('u1', 'u1@mail.net', 'Alex'),
       ('u2', 'u2@mail.net', 'Vlad'),
       ('u3', 'u3@mail.net', 'Kristina'),
       ('u4', 'u4@mail.net', 'Svetlana');


-- post 1 start --

INSERT INTO post (title, text, section, user_id)
VALUES
       ('New House', 'Text about it', 'Rielt', 1);


INSERT INTO comment (parent_id, text, user_id, post_id)
VALUES
       (null, 'Warm?', 2, 1),
       (null, 'What insulation?', 3, 1),
       (1, 'Of course!', 1, 1),
       (2, 'Techno Nikol Arctic!', 1, 1),
       (3, 'How many?', 4, 1),
       (5, 'It\'s very warm at home', 1, 1),
       (6, 'How much does the heater cost?', 2, 1),
       (7, '100$/month', 1, 1);

-- post 1 end --
-- post 2 start--

INSERT INTO post (title, text, section, user_id)
VALUES
        ('New Material', 'Text about it', 'Science', 2);

INSERT INTO comment (parent_id, text, user_id, post_id)
VALUES
        (null, 'What is it used for?', 1, 2),
        (null, 'When will it go on sale?', 3, 2);

-- post 2 end --
