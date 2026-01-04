# Vehicle Telemetry Analytics Pipeline

This repository provides a modular, end-to-end analytics pipeline for processing vehicle or asset telemetry data and generating engineering-grade insights suitable for SQL databases and BI tools.

The project demonstrates how raw time-series telemetry can be:
- Cleaned and normalized
- Processed into analytics-ready datasets
- Segmented into independent analytics modules
- Persisted into a relational database
- Visualized using Power BI

The architecture is designed to be reusable across vehicle systems, fleet analytics, and industrial telemetry use cases.

---

## Key Capabilities

- Synthetic telemetry generation (repeatable and configurable)
- Time-aligned signal cleaning and normalization
- Operating profile analytics (e.g., load × speed × time)
- Thermal behavior monitoring and overshoot detection
- Environmental profile analysis
- Actuation and state-transition statistics
- Frequency-domain (FFT) vibration feature extraction
- SQL persistence for BI consumption
- Power BI dashboards with refresh capability

---

## Repository Structure

vehicle_telemetry_analytics/
├── notebooks/
│ ├── 01_synthetic_telemetry_generation.ipynb
│ └── 02_vehicle_telemetry_analytics_pipeline.ipynb
│
├── data/
│ ├── incoming_telemetry/
│ ├── raw_telemetry_csv/
│ ├── processed_telemetry/
│ └── sample_outputs/
│
├── sql/
│ ├── schema.sql
│ └── table_descriptions.md
│
├── powerbi/
│ ├── telemetry_dashboard.pbix
│ └── visuals_overview.md
│
├── docs/
│ ├── architecture.md
│ ├── analytics_definitions.md
│ ├── data_model.md
│ └── assumptions_limitations.md
│
├── outputs/
│ └── .gitkeep
│
├── requirements.txt
├── LICENSE
└── .gitignore


---

## How to Use

1. Generate synthetic telemetry  
   Run `01_synthetic_telemetry_generation.ipynb`

2. Run analytics pipeline  
   Execute `02_vehicle_telemetry_analytics_pipeline.ipynb`

3. Load results into SQL  
   Tables are written automatically to the configured database

4. Connect Power BI  
   Use MySQL connector and refresh visuals

---

## Disclaimer

This project is a **reference implementation** intended for educational and demonstration purposes only.

All data used in this repository is **synthetically generated** and does not represent any real vehicle, customer, fleet, or field program.  
No proprietary algorithms, calibration data, CAN databases, MDF files, or confidential information are included.

The architecture and analytics patterns reflect **generic industry practices** and are not specific to any organization or product.

The author assumes no responsibility for use in production or safety-critical systems.
