<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20231027050407 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE SEQUENCE competence_id_seq INCREMENT BY 1 MINVALUE 1 START 1');
        $this->addSql('CREATE SEQUENCE ultime_id_seq INCREMENT BY 1 MINVALUE 1 START 1');
        $this->addSql('CREATE TABLE competence (id INT NOT NULL, personage_id INT DEFAULT NULL, nom VARCHAR(255) NOT NULL, description VARCHAR(255) NOT NULL, PRIMARY KEY(id))');
        $this->addSql('CREATE UNIQUE INDEX UNIQ_94D4687FEA8E3E4A ON competence (personage_id)');
        $this->addSql('CREATE TABLE ultime (id INT NOT NULL, personnage_id INT DEFAULT NULL, nom VARCHAR(255) NOT NULL, description VARCHAR(255) NOT NULL, PRIMARY KEY(id))');
        $this->addSql('CREATE UNIQUE INDEX UNIQ_F83FE0C45E315342 ON ultime (personnage_id)');
        $this->addSql('ALTER TABLE competence ADD CONSTRAINT FK_94D4687FEA8E3E4A FOREIGN KEY (personage_id) REFERENCES personnage (id) NOT DEFERRABLE INITIALLY IMMEDIATE');
        $this->addSql('ALTER TABLE ultime ADD CONSTRAINT FK_F83FE0C45E315342 FOREIGN KEY (personnage_id) REFERENCES personnage (id) NOT DEFERRABLE INITIALLY IMMEDIATE');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE SCHEMA public');
        $this->addSql('DROP SEQUENCE competence_id_seq CASCADE');
        $this->addSql('DROP SEQUENCE ultime_id_seq CASCADE');
        $this->addSql('ALTER TABLE competence DROP CONSTRAINT FK_94D4687FEA8E3E4A');
        $this->addSql('ALTER TABLE ultime DROP CONSTRAINT FK_F83FE0C45E315342');
        $this->addSql('DROP TABLE competence');
        $this->addSql('DROP TABLE ultime');
    }
}
