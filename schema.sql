-- Crearea bazei de date
CREATE DATABASE IF NOT EXISTS FreelanceFlow;
USE FreelanceFlow;

-- Tabelul de Utilizatori
CREATE TABLE Users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    user_type ENUM('client', 'freelancer') NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabelul de Proiecte
CREATE TABLE Projects (
    project_id INT PRIMARY KEY AUTO_INCREMENT,
    client_id INT NOT NULL,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    budget DECIMAL(10, 2) NOT NULL,
    status ENUM('open', 'in_progress', 'completed') DEFAULT 'open',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (client_id) REFERENCES Users(user_id) ON DELETE CASCADE
);

-- Tabelul de Oferte (Bids)
CREATE TABLE Bids (
    bid_id INT PRIMARY KEY AUTO_INCREMENT,
    project_id INT NOT NULL,
    freelancer_id INT NOT NULL,
    bid_amount DECIMAL(10, 2) NOT NULL,
    proposal_text TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (project_id) REFERENCES Projects(project_id) ON DELETE CASCADE,
    FOREIGN KEY (freelancer_id) REFERENCES Users(user_id) ON DELETE CASCADE
);