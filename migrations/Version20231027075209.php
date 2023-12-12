<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20231027075209 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE SEQUENCE normale_id_seq INCREMENT BY 1 MINVALUE 1 START 1');
        $this->addSql('CREATE SEQUENCE talent_id_seq INCREMENT BY 1 MINVALUE 1 START 1');
        $this->addSql('CREATE SEQUENCE technique_id_seq INCREMENT BY 1 MINVALUE 1 START 1');
        $this->addSql('CREATE TABLE normale (id INT NOT NULL, personnage_id INT NOT NULL, nom VARCHAR(255) NOT NULL, description VARCHAR(255) NOT NULL, PRIMARY KEY(id))');
        $this->addSql('CREATE UNIQUE INDEX UNIQ_489CD9535E315342 ON normale (personnage_id)');
        $this->addSql('CREATE TABLE talent (id INT NOT NULL, personnage_id INT NOT NULL, nom VARCHAR(255) NOT NULL, description VARCHAR(255) NOT NULL, PRIMARY KEY(id))');
        $this->addSql('CREATE UNIQUE INDEX UNIQ_16D902F55E315342 ON talent (personnage_id)');
        $this->addSql('CREATE TABLE technique (id INT NOT NULL, personnage_id INT NOT NULL, nom VARCHAR(255) NOT NULL, description VARCHAR(255) NOT NULL, PRIMARY KEY(id))');
        $this->addSql('CREATE UNIQUE INDEX UNIQ_D73B98415E315342 ON technique (personnage_id)');
        $this->addSql('ALTER TABLE normale ADD CONSTRAINT FK_489CD9535E315342 FOREIGN KEY (personnage_id) REFERENCES personnage (id) NOT DEFERRABLE INITIALLY IMMEDIATE');
        $this->addSql('ALTER TABLE talent ADD CONSTRAINT FK_16D902F55E315342 FOREIGN KEY (personnage_id) REFERENCES personnage (id) NOT DEFERRABLE INITIALLY IMMEDIATE');
        $this->addSql('ALTER TABLE technique ADD CONSTRAINT FK_D73B98415E315342 FOREIGN KEY (personnage_id) REFERENCES personnage (id) NOT DEFERRABLE INITIALLY IMMEDIATE');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE SCHEMA public');
        $this->addSql('DROP SEQUENCE normale_id_seq CASCADE');
        $this->addSql('DROP SEQUENCE talent_id_seq CASCADE');
        $this->addSql('DROP SEQUENCE technique_id_seq CASCADE');
        $this->addSql('ALTER TABLE normale DROP CONSTRAINT FK_489CD9535E315342');
        $this->addSql('ALTER TABLE talent DROP CONSTRAINT FK_16D902F55E315342');
        $this->addSql('ALTER TABLE technique DROP CONSTRAINT FK_D73B98415E315342');
        $this->addSql('DROP TABLE normale');
        $this->addSql('DROP TABLE talent');
        $this->addSql('DROP TABLE technique');
    }
}
