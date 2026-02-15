USE FreelanceFlow;

-- Inserare Utilizatori
INSERT INTO Users (full_name, email, user_type) VALUES 
('Ion Popescu', 'ion@client.com', 'client'),
('Ana Maria', 'ana@freelancer.com', 'freelancer'),
('Alex Vasile', 'alex@freelancer.com', 'freelancer');

-- Inserare Proiect de test
INSERT INTO Projects (client_id, title, description, budget, status) VALUES 
(1, 'Site Web Prezentare', 'Am nevoie de un site in WordPress pentru un restaurant.', 500.00, 'open');

-- Inserare Oferte (Bids)
INSERT INTO Bids (project_id, freelancer_id, bid_amount, proposal_text) VALUES 
(1, 2, 450.00, 'Pot sa te ajut, am experienta 3 ani in WP.'),
(1, 3, 400.00, 'Termin in 2 zile, pret fix.');