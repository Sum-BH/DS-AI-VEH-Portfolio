CREATE TABLE ctq_duty_cycle (
    rpm_bin_index INT,
    rpm_bin_label VARCHAR(20),
    torque_bin_index INT,
    torque_bin_label VARCHAR(20),
    delta_t DOUBLE,
    source_file VARCHAR(100)
);