
// CDW_TEST: BRONZE LAYER - RAW DATA LANDING
// Purpose: Create and populate raw source tables
// Author: MURALI
// Created: 2026-05-02


-- RAW VEEVA CALLS
CREATE OR REPLACE TABLE CDW_DEV_TEST.BRONZE.RAW_VEEVA_CALLS (
    CALL_ID         VARCHAR(20),
    HCP_NPI         VARCHAR(10),
    CALL_DATE       DATE,
    CALL_TYPE       VARCHAR(30),
    CALL_STATUS     VARCHAR(20)
);

INSERT INTO CDW_DEV_TEST.BRONZE.RAW_VEEVA_CALLS VALUES
('VC-001','1234567890','2025-01-10','Face to Face','Completed'),
('VC-002','1234567890','2025-01-25','Face to Face','Completed'),
('VC-003','2345678901','2025-02-05','Virtual','Completed'),
('VC-004','3456789012','2025-02-14','Face to Face','Planned'),
('VC-005','2345678901','2025-03-01','Phone','Completed'),
('VC-006','4567890123','2025-03-10','Face to Face','Completed'),
('VC-007','5678901234','2025-03-22','Virtual','Cancelled'),
('VC-008','1234567890','2025-04-05','Face to Face','Completed'),
('VC-009','4567890123','2025-04-15','Phone','Completed'),
('VC-010','3456789012','2025-05-01','Face to Face','Completed');

-- RAW HCP MASTER
CREATE OR REPLACE TABLE CDW_DEV_TEST.BRONZE.RAW_HCP (
    HCP_NPI         VARCHAR(10),
    FIRST_NAME      VARCHAR(50),
    LAST_NAME       VARCHAR(50),
    SPECIALTY       VARCHAR(50),
    TERRITORY_ID    VARCHAR(10)
);

INSERT INTO CDW_DEV_TEST.BRONZE.RAW_HCP VALUES
('1234567890','John','Smith','Cardiology','TER-101'),
('2345678901','Sarah','Williams','Neurology','TER-102'),
('3456789012','Michael','Brown','Cardiology','TER-101'),
('4567890123','Emily','Davis','Oncology','TER-103'),
('5678901234','Robert','Garcia','Neurology','TER-103');

