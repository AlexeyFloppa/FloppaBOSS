<p align="center">
  <img src="docs/assets/floppa_boss.png" width="300px" alt="FloppaBoss Logo"/>
</p>

<h1 align="center" style="margin-bottom: 0;"> FloppaBoss</h1>
<p align="center" style="margin-top: 4px;"><i>💼 The AI dashboard that runs your empire while you chill 💰</i></p>

---

**FloppaBoss** is your personal AI-driven automation hub — managing modular micro-projects that (theoretically) make money while you're AFK.

From generating books and images to renting GPU power or chatting as an AI waifu, FloppaBoss decides what runs based on profit, PC usage, and vibes.  
Meme-powered. Dev-respected. Potentially profitable.

---

## ✨ Key Features

- 🧠 **AI Runtime Manager**  
  Floppa chooses the most efficient project based on current usage, earnings, and power draw.

- 📊 **Real-Time Dashboard**  
  See what’s running, how much it’s earning, and how hard your PC is working — all in a beautiful Flutter UI.

- 💼 **Modular Project Runners**  
  Each money-making idea is a separate Python script with its own profit logic. Plug and play.

- 🔁 **Smart Automation Logic**  
  Auto-starts when idle. Auto-stops when you come back. Switches projects based on ROI per watt.

- 📱 **Remote Control Support** *(WIP)*  
  Access your empire from mobile — pause bots, switch tasks, or view stats on the go.

- 🐱 **Meme-Powered Identity**  
  Floppa is watching. With a confident glare from the sofa. You’ll never doubt your boss again.

---

## 🛠️ Tech Stack

- **Flutter & Dart** for UI and mobile/web support
- **Python (FastAPI)** for running and managing backend projects
- **WebSockets** for real-time status updates
- **psutil + pynput** for system usage and AFK detection
- **SQLite / JSON** for local stat tracking
- **Shared API layer** between Flutter ↔ Python

---

## 🧪 Example Runners

| Name              | Description                                     | Tech Used     |
|-------------------|-------------------------------------------------|---------------|
| `ebook_writer_ai` | Auto-generate and upload KDP books              | GPT-4         |
| `image_pumper`    | Create and upload stock images                  | SDXL/DALL·E   |
| `crypto_gpu_bot`  | Lease GPU power for crypto                      | Native        |
| `ai_girlfriend`   | Puppet GPT chat on adult platforms              | Puppeteer     |
| `yt_lofi_gen`     | Generate lo-fi beats and post to YouTube        | MusicGen      |

---

## 🚀 Getting Started

```bash
git clone https://github.com/AlexeyFloppa/floppaboss.git
cd floppaboss
flutter pub get
python -m venv venv
source venv/bin/activate  # or venv\Scripts\activate on Windows
pip install -r backend/requirements.txt
