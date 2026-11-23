# AstroGuard

AstroGuard is a browser-based research challenge prototype. The existing digital twin, vital screening, mission simulator, Vision Lab, evidence log, and the added mission-history/environment/communications demonstrations are retained. No chatbot or external AI API key is required.

## Run in VS Code

1. Extract the project ZIP and open this folder in VS Code.
2. Start the local server using Live Server, or run `python -m http.server 8000` in the terminal.
3. Open `http://localhost:8000`.
4. Allow camera permission when using Vision Lab. Camera access requires localhost or HTTPS.
5. Three.js and MediaPipe are loaded from CDNs, so internet access is required for the 3D skeleton and webcam landmark tracking.

## Modules

- **Digital Twin:** interactive procedural 3D skeleton, selectable structures, health-region markers and mission signal chart.
- **Crew Vitals & Alerts:** 12 entered vital indicators, rule-based human-readable alerts, acknowledgement and JSON export.
- **Historical trends:** completed assessments saved in browser localStorage, trend chart, recent records, CSV export and clear control.
- **Mission Simulator:** scenario simulation plus a configurable 1–365 day synthetic mission horizon; completed long runs are stored locally.
- **Cabin environment:** manual readings or a simulated sensor stream for CO2, O2, pressure, temperature and humidity, with hazard explanations.
- **Earth communication demo:** simulated packet transmission, outage queueing and queue release after link restoration. It does not connect to a spacecraft, NASA, DSN or a ground station.
- **Vision Lab:** experimental face/iris landmark tracking and reaction-time task.
- **Evidence Log:** local event log and report export.

## Scientific and safety limitations

This is not a NASA-developed, NASA-endorsed, flight-certified or clinically validated system. Vital/environment thresholds are prototype review bands, not NASA flight rules or clinical thresholds. The skeleton is procedural reference geometry, not a medical scan. Mission scenarios and cabin sensor streams are synthetic. The Isolation Forest is an experimental baseline-deviation demonstration, not a medical diagnostic model. Camera tracking is not a validated SANS test or clinical eye assessment. Historical data is stored only in the browser profile's localStorage.

The Earth link is a local state-machine demonstration only. No real spacecraft radio, ground network, internet telemetry service or NASA endpoint is contacted.

## Quick checks

Automated checks completed on 2026-11-15:

- JavaScript syntax check: passed (`node --check js/app.js`).
- HTML structure: 5 navigation views match 5 content views; no duplicate IDs; all new-feature controls are present.
- Headless-browser interaction loop: navigation, default vital assessment, stress-case alerts, reset, historical record creation, 365-day mission run, standard 30-step mission run, report serialization, cabin hazard triggers, simulated cabin sensor tick, Earth-link outage queue, link restoration and queued packet delivery all passed. No JavaScript runtime exceptions were observed in that test loop.
- CSS parser: no stylesheet syntax errors.

The container's browser policy blocked direct localhost navigation, so the interaction tests used an in-memory headless-browser DOM. External CDN loading, actual WebGL skeleton rendering, physical webcam permission/tracking, and a real device sensor feed were not verified in this environment. They must be checked on the user's local browser/device. The app explicitly identifies simulated data and does not claim a real spacecraft-to-Earth connection.
