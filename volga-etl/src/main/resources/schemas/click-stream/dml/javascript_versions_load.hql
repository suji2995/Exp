USE clickstream;

ADD JAR ${CSV_SERDE_JAR};

LOAD DATA INPATH ${INPUT_PATH} INTO TABLE javascript_versions;