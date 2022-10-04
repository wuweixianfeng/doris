CREATE TABLE IF NOT EXISTS nation  (
  N_NATIONKEY  INTEGER NOT NULL,
  N_NAME       CHAR(25) NOT NULL,
  N_REGIONKEY  INTEGER NOT NULL,
  N_COMMENT    VARCHAR(152)
)
DUPLICATE KEY(N_NATIONKEY, N_NAME)
DISTRIBUTED BY HASH(N_NATIONKEY) BUCKETS 1
PROPERTIES (
  "replication_num" = "1"
)
