-- ==============
-- == ACCOUNTS ==
-- ==============

CREATE TABLE accounts (
    id                  BIGSERIAL PRIMARY KEY,
    provider            VARCHAR(256) DEFAULT NULL,
    verified            BOOLEAN DEFAULT FALSE,
    email               VARCHAR(256) NOT NULL CHECK (email ~ '^[\w.%-]+@[\w.-]+[.][A-Za-z]+$'),
    first_name          VARCHAR(256),
    last_name           VARCHAR(256),
    hashed_password     VARCHAR(256) NOT NULL,
    salt                VARCHAR(256) NOT NULL,
    mobile_phone        VARCHAR(25),
    last_login          TIMESTAMP WITHOUT TIME ZONE,
    created_by          BIGINT,
    created_on          TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(),
    updated_by          BIGINT,
    updated_on          TIMESTAMP WITHOUT TIME ZONE DEFAULT NULL,
    x                   BOOLEAN DEFAULT FALSE
);

