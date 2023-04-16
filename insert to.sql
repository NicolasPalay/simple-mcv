# insert into recipe
insert into recipe (title, category_id,instruction,adherent_id,difficulty,duration,picture_id_1,picture_id_2,picture_id_3) VALUES
        ('Salade de poulet grillé',1,'Préchauffer le grill à feu moyen-élevé.
        Badigeonner le poulet d\'huile d\’olive et assaisonner avec du sel et du poivre.
        Griller le poulet pendant environ 6-8 minutes de chaque côté, jusqu\’à ce qu\’il soit bien cuit.
        Laisser refroidir légèrement le poulet, puis le couper en cubes.
        Dans un grand bol, mélanger la laitue, les tomates et l\'oignon rouge.
        Ajouter le poulet grillé sur le dessus.
        Verser la vinaigrette sur la salade et bien mélanger.
        Servir immédiatement.',1, 'easy',20,1,2,3),
        ('Quiche lorraine',2,'Préchauffer le four à 180°C.
        Étaler la pâte brisée dans un moule à tarte et la piquer avec une fourchette.
        Dans un bol, fouetter ensemble les œufs et la crème fraîche.
        Ajouter les lardons et le fromage râpé.
        Verser le mélange sur la pâte à tarte.
        Faire cuire au four pendant environ 30-35 minutes, jusqu''à ce que la quiche soit dorée et prise.
        Laisser refroidir légèrement avant de servir.',2, 'easy',45,4,5,6),
        ('Chili con carne',2,'Dans une grande casserole, faire revenir l''oignon et la viande hachée jusqu''à ce qu''ils soient bien cuits.
        Ajouter les tomates en conserve, les haricots rouges, le chili en poudre et un peu d''eau.
        Laisser mijoter à feu doux pendant environ 30 minutes.
        Servir chaud, garni de coriandre et d''un peu de crème fraîche.',3, 'easy',60,7,8,9),
        ('Gâteau chocolat praliné',3,'Préparez la génoise : préchauffez le four à 180 °C (th. 6). Dans un saladier, mélangez la farine, la Maïzena et le cacao. Dans un grand bol posé dans une casserole d’eau chaude, fouettez les œufs avec le sucre. Lorsque le sucre est bien dissous, ôtez le bol du bain-marie puis continuez de fouetter pendant plusieurs minutes.
        Incorporez délicatement le mélange farine/Maïzena/cacao en soulevant la préparation. Versez la pâte dans un moule à bord haut beurré puis enfournez. Baissez la température du four à 160 °C (th. 5) et laissez cuire 25 à 30 min.
        Préparez le sirop : versez le sucre et l’eau dans une casserole et ajoutez la gousse de vanille fendue en 2 et grattée. Portez à ébullition, puis laissez refroidir. Ôtez la vanille et réservez au frais.
        Préparez la ganache pralinée : hachez le chocolat et versez-le dans un saladier. Portez la crème à ébullition dans une casserole puis versez sur le chocolat. Laissez reposer quelques secondes puis mélangez à l’aide d’un fouet jusqu’à obtenir un mélange lisse et homogène.
        Coupez la génoise en trois dans la largeur. Imbibez de sirop la base du gâteau à l’aide d’un pinceau. Répartissez une couche de ganache, recouvrez d’un 2è disque de génoise puis renouvelez l’opération avec le 3è disque. Recouvrez de ganache, appliquez le pralin sur les bords du gâteau, parsemez le dessus de vermicelles en chocolat puis placez au frais 30 min avant de servir.',1, 'easy',110,10,11,12)
;

# insert into category
insert into category (name) VALUES
        ('Entrée'), ('Plats'), ('Dessert')
;

# insert into ingredient
INSERT INTO ingredient (name_ingredient, picture_id, unity) VALUES
       ('poulet', 13, 'gr'),
       ('laitue', 14, 'gr'),
       ('tomates', 16, 'tranches'),
       ('oignon rouge', 17, 'u'),
       ('vinaigrette', 18, 'cuillère à café'),
       ('bœuf haché', 19, 'gr'),
       ('haricots rouges', 20, 'gr'),
       ('tomates en conserve', 21, 'gr'),
       ('oignon', 22, 'u'),
       ('chili en poudre', 23, 'cuillère à café'),
       ('pâte brisée', 24, 'u'),
       ('lardons', 25, 'gr'),
       ('œufs', 26, 'u'),
       ('crème fraîche', 27, 'gr'),
       ('fromage râpé', 28, 'gr'),
       ('chocolat Praliné', 29, 'gr'),
       ('farine', 30, 'gr'),
       ('beurre', 31, 'gr')
;

# insert into comment
INSERT INTO comment (adherent_id, recipe_id, comment_text, like_comment) VALUES
        (1, 1, 'trop top', 1),
        (3, 1, 'trop cool', 0),
        (2, 2, 'trop bien', 0),
        (1, 3,'trop bon', 1),
        (3, 3, 'J''ai', 0),
        (2, 3, 'Je veux trop gouter', 0),
        (1, 3,  'magnifique', 1)
;

# insert into adherent
INSERT INTO adherent (pseudo, email, password, role_admin) VALUES
        ('gil', 'gil@gmail.com', 'gil', 'admin'),
        ('eric', 'eric@gmail.com', 'eric', 'admin'),
        ('amed', 'amed@gmail.com', 'amed', 'admin'),
        ('nic', 'nic@gmail.com', 'nic', 'admin'),
        ('usersimple','usersimple@gmail.com', 'usersimple', 'admin')
;

# insert into rating
INSERT INTO rating (score) VALUE
    (4),(5),(3),(3),(4),(3),(4),(5),(3),(5),(5);

# insert into order_rating
INSERT INTO order_rating (recipe_id, rating_id) VALUES
        (1, 1), (1, 2), (2, 3), (1, 4), (3, 5), (1, 6), (4, 7), (1, 8), (3, 9), (2, 10), (2, 11)
;

# insert into picture
INSERT INTO picture (link) VALUES
        ('salade_poulet_grille_2.jpg'),
        ('salade_poulet_grille_3.jpg'),
        ('Quiche.jpg'),
        ('Quiche.jpg'),
        ('Quiche.jpg'),
        ('salade_poulet_grille_2.jpg'),
        ('salade_poulet_grille_3.jpg'),
        ('chili_con_carne.jpg'),
        ('chili_con_carne_2.jpg'),
        ('chili_con_carne_3.jpg'),
        ('gateau_chocolat_praline.jpg'),
        ('gateau_chocolat_praline_2.jpg'),
        ('gateau_chocolat_praline_3.jpg'),
        ('poulet.jpg'),
        ('laitue.jpg'),
        ('tomates.jpg'),
        ('oignon_rouge.jpg'),
        ('vinaigrette.jpg'),
        ('boeuf_hache.jpg'),
        ('haricots_rouges.jpg'),
        ('tomates_en_conserve.jpg'),
        ('oignon.jpg'),
        ('chili_en_poudre.jpg'),
        ('pate_brisee.jpg'),
        ('lardons.jpg'),
        ('oeuf.jpg'),
        ('creme_fraiche.jpg'),
        ('fromage_rape.jpg'),
        ('chocolat_praline.jpg'),
        ('farine.jpg'),
        ('beurre.jpg')
;

# insert into recipe_ingredient
INSERT INTO recipe_ingredient (ingredient_id, recipesINT_id, quantity) VALUES
    (1, 2, 1), (1, 2, 1), (1, 3, 12), (1, 4, 1), (1, 5, 4),
    (3, 6, 300), (3, 7, 300),(3, 8, 300), (3, 9, 1),(3, 10, 3),
    (2, 11, 1), (2, 12, 200), (2, 13, 2), (2, 14, 20), (2, 15, 20),
    (4, 16, 250),(4, 17, 300),(4, 16, 30),(4, 13, 2)
;
