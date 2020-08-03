# 1. Finding the 5 oldest users
SELECT * FROM users ORDER BY created_at LIMIT 5;


# 2. Most popular registration dateALTER
SELECT 
    DAYNAME(created_at) AS day,
    COUNT(*) AS total
FROM users
GROUP BY day
ORDER BY total DESC
LIMIT 2;

# 3. Identify users that are inactive (users with no photos)

SELECT username, image_url  FROM users
    LEFT JOIN photos 
    ON users.id = photos.user_id 
    WHERE photos.image_url IS NULL;