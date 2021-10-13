SELECT title
FROM movies
WHERE movies.id IN (
    SELECT movie_id
    FROM stars
    JOIN people
        ON stars.person_id = people.id
    WHERE people.name = "Johnny Depp")
AND movies.id IN (
    SELECT movie_id
    FROM stars
    JOIN people
        ON stars.person_id = people.id
    WHERE people.name = "Helena Bonham Carter");