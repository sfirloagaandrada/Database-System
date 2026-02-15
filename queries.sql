USE FreelanceFlow;

-- 1. Vezi toți freelancerii care au depus oferte și numărul de oferte per persoană
SELECT u.full_name, COUNT(b.bid_id) as total_offers
FROM Users u
JOIN Bids b ON u.user_id = b.freelancer_id
GROUP BY u.user_id
ORDER BY total_offers DESC;

-- 2. Calculează valoarea totală a proiectelor active (Open)
SELECT SUM(budget) as total_market_value 
FROM Projects 
WHERE status = 'open';

-- 3. Vezi toate detaliile proiectelor împreună cu numele clientului
SELECT p.title, p.budget, u.full_name as client_name
FROM Projects p
JOIN Users u ON p.client_id = u.user_id;