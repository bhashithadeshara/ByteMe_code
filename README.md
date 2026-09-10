# 🚀 BridgeUp — Democratic Skills Portfolio & Graduate Career Launchpad
> HACKELITE 3.0 Project Proposal & MVP Implementation  
> IEEE WIE Student Branch Affinity Group of University of Moratuwa

BridgeUp is an intelligent, industry-grounded skill development platform and career launchpad designed for university undergraduates and tech companies across Sri Lanka. It addresses the structural information failure between university curricula and real local employer skill demands by replacing static CVs with a verifiable, market-aligned skill portfolio.

---

## 📌 Problem Context & The 4 Gaps Closed

Over 30,000 students graduate annually from the UGC system in Sri Lanka, yet more than 40% are unemployed or underemployed within two years (ILO). This is not due to a lack of jobs, but a structural information gap: university curricula operate on 3–5 year revision cycles while industry demands shift quarterly.

BridgeUp directly closes the Four Structural Gaps:

| Gap | Current Reality | What BridgeUp Provides |
| :--- | :--- | :--- |
| Information Gap | Students don't know what skills local employers need right now. | Live NLP-extracted skill signals from real Sri Lankan job postings + Direct Employer Signal Layer. |
| Roadmap Gap | Students don't know where to start or in what order. | Personalised step-by-step learning roadmaps sequenced by skill dependency and time to graduation. |
| Access Gap | Quality resources & career fairs are Colombo-centric. | Curated multi-platform resources (YouTube, Coursera, edX) & nationwide skill-matched event discovery (e.g. Jaffna, Peradeniya, Rajarata). |
| Accountability Gap | Self-directed learners rarely finish tutorials alone (high dropout). | XP gamification, daily task checklists, peer communities, and a verified Skill Passport. |

---

## 🤖 How AI, NLP & Recommendations Are Implemented

### 1. NLP Job Market Signal Engine & Data Handling
- Built as a dedicated Python microservice (`nlp-service`) using `spaCy` and TF-IDF vectorizers.
- Data Scraping & Policy Compliance Note: Live web scraping directly from external Sri Lankan job portals (such as TopJobs.lk and xpress.jobs) was restricted due to website Terms of Service (TOS), IP rate-limiting, and anti-scraping policies. 
- Cold-Start Dataset Solution: To ensure 100% reliable evaluation without violating external TOS or causing network failures, we collected and curated a dataset of curated Sri Lankan tech job descriptions (`nlp-service/app/data/seed_jobs.json`). The `spaCy` NLP engine processes this dataset to extract structured skill tags (role, demand %, proficiency level, confidence threshold >0.80) to seed the market demand database from Day 1.

### 2. Employer Direct Skill Signal Layer
- Registered Sri Lankan employers (e.g., Sysco Labs, WSO2) directly submit hiring expectations into PostgreSQL.
- The gap engine merges scraped job postings with direct employer inputs so gap analyses reflect both real postings and unadvertised hiring requirements.

### 3. Sequenced Multi-Platform Video & Course Recommendation Engine
- Demand-Based Skill Ranking: Cross-references the student's target role and self-assessment scores against NLP-extracted Sri Lankan market demand percentages (e.g., REST APIs: 87% demand, Git: 82% demand, React.js: 88% demand).
- Prerequisite Sequencing: Sequences skills in foundational order (e.g., JavaScript before React.js, SQL before Backend APIs).
- Multi-Platform Integration: Maps each skill to curated YouTube crash courses (embedded with an interactive HTML5 `postMessage` player listener that automatically ticks off step tasks and awards XP when playback reaches the end) and official university/industry certificates from Coursera & edX (e.g., Harvard CS50, Stanford Algorithms, IBM Node.js & Databases).
- Employer Justification Badges: Every recommended resource carries a justification badge citing exact local employer requirements (e.g., "Required for Sysco LABS and WSO2 entry-level technical interviews").

---

## 💡 Implemented MVP Features vs Proposal Scope (MVP Clarity)

To deliver a stable, high-performance Minimum Viable Product (MVP) for HACKELITE 3.0 evaluation, core features are fully functional, while secondary third-party infrastructure features are structured for Phase 2 deployment:

### ✅ Fully Implemented in this MVP Codebase

- [x] Student Onboarding & Profile: Multi-step registration capturing degree, year, city, target roles, and weekly availability.
- [x] NLP Skill Signal Engine & Taxonomy: Python `spaCy` microservice with extracted skill tags and confidence scoring.
- [x] Employer Direct Skill Signal Layer: Interface for employers to post direct skill requirements and host industry events.
- [x] Sequenced Learning Roadmap: Sequenced modules (e.g., JavaScript before React, REST APIs before Microservices) based on local market frequency.
- [x] Interactive Multi-Platform Resource Player: Embedded YouTube player with automated task completion listeners upon video finish + Coursera & edX links.
- [x] Roadmap-Gated Daily Task & XP System: Sized daily tasks generated only after a student builds a roadmap. Auto-ticking tasks, live XP calculation, streak tracking, and level milestones (Lvl 1–6).
- [x] Skill Communities & Event Discovery: Multi-university student groups (Frontend, Backend, Python, Data Science) and skill-matched event registration (Sysco Labs Industry Visit).
- [x] Verified Skill Passport & Peer Review Queue: Shareable public portfolio (`/passport`) with QR code, verified skills, and a Peer Verification Queue where students review project proofs.

### ⏳ Deferred for Phase 2 Production (Not Implemented in MVP)

(These components were outlined in the proposal for full-scale commercial release, but intentionally deferred in this MVP to focus on core platform stability and zero external dependency risk during competition evaluation):

1. Firebase Cloud Messaging (FCM) Push Notifications:  
   Proposal Mention: Browser/mobile push notifications.  
   MVP Status: Handled via real-time DOM notifications and in-app event badges (`/notifications`).
2. Automated 5-Question Quiz Assessment Gating:  
   Proposal Mention: Automated 5-question quiz gating per resource before passport entry.  
   MVP Status: Gated via the Peer Verification Queue and project proof submissions to ensure human-verified demonstrated knowledge.
3. Live Automated Scraping Daemons:  
   Proposal Mention: Continuous live web scraper daemons for external portals.  
   MVP Status: Cold-started with a pre-seeded, NLP-processed database of curated Sri Lankan job postings due to site Terms of Service and rate limits.
4. Native PDF Export Service (jsPDF):  
   Proposal Mention: Native `.pdf` file download button.  
   MVP Status: Rendered as a public shareable web URL (`/passport/share/:shareToken`) and browser-native print-to-PDF layout (`window.print()`).
5. Employer-Side Portal & Interface:  
   Proposal Mention: Employer management portal for posting direct hiring requirements and managing candidates.  
   MVP Status: Not implemented in this MVP codebase to focus on the student core launchpad, NLP skill extraction, and verified passport engine.

---

## 🎥 MVP Demo Path

Follow this exact workflow to test or record the MVP demo:
1. Onboarding: Register a student profile (e.g., Year 3 CS student targeting Backend Developer). Option to skip or build a roadmap.
2. Roadmap Generation: Generate a personalized Backend Developer roadmap showing local demand stats (87% REST APIs, 82% Git).
3. Interactive Learning Path: Open `/learning-path`. Play the YouTube video module. Watch tasks auto-tick as completed upon video finish and earn live XP.
4. Daily Tasks & XP: View `/dashboard` showing tasks generated specifically for the active roadmap and header XP level updating live.
5. Peer Verification & Communities: Open `/verifications` to verify a peer's project proof and join the Backend Engineers Community.
6. Skill Passport: Open `/passport` to view the public shareable portfolio with verified skill chips and public sharing toggle.
7. Employer Dashboard: Log in as `employer@bridgeup.dev` (Sysco Labs) to view skill analytics and event listings.

---

## Demo Video URL - https://youtu.be/giH0sc1fqMY?si=0sFdU5OxcEEmMQ8o

## 🛠️ Technology Stack

- Student Web App: React.js, Vite, Vanilla CSS / Tailwind CSS, Lucide Icons, Custom DOM Event Bus (`useXP`).
- Backend API: Node.js, Express.js, Prisma ORM, PostgreSQL.
- NLP Service: Python 3.10+, FastAPI, `spaCy`, TF-IDF Vectorization.
- Containerization: Docker, Docker Compose, PostgreSQL 16, Redis 7.

---

## 📁 Repository Structure

```
Bridge-Up/
├── backend/                # Express.js REST API & Prisma ORM
│   ├── prisma/             # Schema & migrations
│   ├── src/                # Controllers, routes, services & seeds
│   └── .env.example        # Environment variable template
├── frontend/               # React.js Vite Web Application
│   ├── src/                # Components, pages, hooks & lib
│   └── Dockerfile          # Frontend container configuration
├── nlp-service/            # Python NLP Market Skill Extraction Pipeline
│   ├── app/                # FastAPI routers, spaCy models & pipeline
│   └── .env.example        # Environment variable template
├── bridgeup_db_dump.sql    # Complete PostgreSQL SQL database dump & seeds
├── docker-compose.yml      # Multi-container orchestration config
├── .env.example            # Master environment variable template
└── README.md               # Project documentation
```

---

## 🔐 Environment Variables & Security (.env.example Guidelines Compliance)

In strict compliance with the HACKELITE submission guidelines:
- No real API keys, passwords, or secret credentials are included anywhere in this submission archive (`.env` files containing real secrets are strictly excluded).
- Placeholder Example Files (`.env.example`) are placed in the exact original locations alongside their services:
  - `/.env.example` (Master Docker Compose environment template)
  - `/backend/.env.example` (Node.js Express API & PostgreSQL connection template)
  - `/nlp-service/.env.example` (Python NLP FastAPI service database connection template)

### Example Environment Configuration (`backend/.env.example`):

```env
# Database Connection String (Placeholder Values Only)
DATABASE_URL=postgresql://your_db_user:your_db_password@localhost:5432/your_db_name

# Backend Server Port
PORT=5000

# JWT Authentication Secret Key
JWT_SECRET=your_jwt_secret_key_here
```

---

## ⚡ Quick Start & Installation

### Prerequisites
- [Node.js v18+](https://nodejs.org/)
- [Docker & Docker Desktop](https://www.docker.com/)

---

### Option 1: Running with Docker Compose (Recommended)

1. Clone the repository:
   ```bash
   git clone https://github.com/SachiniKK/Bridge-Up.git
   cd Bridge-Up
   ```

2. Set up Environment Variables:
   ```bash
   cp backend/.env.example backend/.env
   cp nlp-service/.env.example nlp-service/.env
   ```

3. Start Containers:
   ```bash
   docker compose up -d
   ```

4. Access the web applications:
   - Frontend App: `http://localhost:5173`
   - Backend API: `http://localhost:5000`

---

### Option 2: Running Locally (Native Node.js)

1. Start PostgreSQL Database:
   ```bash
   docker compose up -d postgres
   ```

2. Set up & Start Backend:
   ```bash
   cd backend
   npm install
   npx prisma db push
   node src/seed/create_test_user.js
   npm start
   ```

3. Set up & Start Frontend:
   ```bash
   cd frontend
   npm install
   npx vite --host
   ```

## 📝 User Registration & Onboarding Flow

You can test the platform by signing up with a new account or by using pre-configured demo credentials:

1. Sign Up: Register a new account by entering your details on the Signup page (Note: A .lk email address, such as an .ac.lk university email, is required for student registration).
2. Profile Setup & Dashboard Access:
   - Click the Create My Profile button to complete your registration details.
   - Upon clicking Create My Profile, you can directly generate your personalized learning roadmap or proceed straight to the Dashboard to build your roadmap anytime.

---

## 🔑 Demo Test Credentials

### 👤 Student Account
- Email / Username: `student@bridgeup.dev`
- Password: `student123`
- Role: Student (Kavindu Perera, Year 3 CS Student at University of Moratuwa)

### 🏢 Employer Account
- Email / Username: `employer@bridgeup.dev`
- Password: `employer123`
- Role: Employer (Sysco Labs)

---

## 🗄️ Database & Pre-Populated Data

### Automated Seeding (Default)
When starting the backend server (`node index.js`), `src/seed/seedData.js` populates default communities (Frontend Developers, Python Programmers, Backend Engineers, Data Science Enthusiasts, Mobile App Developers), weekly challenges, and employer check-in events into PostgreSQL.

### Restoring from SQL Dump (`bridgeup_db_dump.sql`)
A complete PostgreSQL database dump file `bridgeup_db_dump.sql` (122 KB) containing all schemas, tables, and seed rows is included in the root directory.

To manually restore:
```bash
docker exec -i bridgeup_postgres psql -U bridgeup -d bridgeup_db < bridgeup_db_dump.sql
```

---

## 📄 License
Distributed under the ISC License. See `LICENSE` for details.