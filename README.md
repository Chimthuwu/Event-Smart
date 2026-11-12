# SmartEvents Studio

> **3D Event Production Planner** — Design professional lighting, audio & stage layouts in a real-time 3D venue.

[![Deploy to Cloudflare Pages](https://img.shields.io/badge/Deploy-Cloudflare%20Pages-F38020?logo=cloudflare&logoColor=white)](https://pages.cloudflare.com/)
[![Live: eventsmart.pages.dev](https://img.shields.io/badge/Live-eventsmart.pages.dev-62E7BD?logo=cloudflare&logoColor=07140F)](https://eventsmart.pages.dev)
[![Live: event-smart.pages.dev](https://img.shields.io/badge/Live-event--smart.pages.dev-62E7BD?logo=cloudflare&logoColor=07140F)](https://event-smart.pages.dev)
[![License: MIT](https://img.shields.io/badge/License-MIT-72CFFF.svg)](LICENSE)
[![Tech: Three.js](https://img.shields.io/badge/Three.js-r168-000000?logo=three.js&logoColor=white)](https://threejs.org/)
[![Tech: Vanilla JS](https://img.shields.io/badge/Vanilla%20JS-ES2022-F7DF1E?logo=javascript&logoColor=black)](https://developer.mozilla.org/en-US/docs/Web/JavaScript)

---

## Preview

| Design Mode | Audio Mode | Venue Mode |
|-------------|------------|------------|
| Lighting rigs, movers, lasers | Line arrays, sub cards, acoustic heatmap | Stage decks, truss, barriers, crowd zones |

> **Discord-ready:** Share `https://eventsmart.pages.dev` — renders a rich embed with the studio logo thumbnail, title, and description.

---

## Features

### 🎛 Three Design Modes
- **Design** — Moving heads, wash lights, beam/spot/profile fixtures, strobes, blinders, lasers, haze, follow spots, LED bars/pixels/tubes
- **Audio** — Line arrays, point sources, subwoofer cards, delay towers, front fills, stage monitors, acoustic heatmap overlay
- **Venue** — Stage decks, truss towers/arches, LED walls, risers, crowd barriers, cable ramps, power distro, DMX nodes, rigging points

### 🎮 Interaction
- **Orbit / Pan / Dolly** camera controls (RMB / MMB / Scroll)
- **Click-to-place** equipment from sidebar palette
- **Gizmo** — translate / rotate / scale with snap toggle
- **Clone / Delete / Focus** per-object actions
- **Undo / Redo** (Ctrl+Z / Ctrl+Y) with full history

### 📐 Precision Tools
- Snap-to-grid (0.25m / 0.5m / 1m)
- Measurement overlay (ruler tool)
- Units: Metric / Imperial
- Stage reference grid (4×3m default)

### 💾 Project Persistence
- **Export** — Download `.smartevents.json` (all objects, camera, settings)
- **Import** — Drag & drop or file picker
- **Auto-save** to `localStorage` per project name
- **Project rename** in top bar

### 🎨 Visual Polish
- Cinematic intro sequence with animated logo, lasers, speaker stacks
- PBR materials, Bloom (UnrealEngine tone-mapping), SSAO, FXAA
- Dynamic light proxies for every fixture
- Performance HUD (FPS, draw calls, triangles, memory)

---

## Quick Start

### Local Development
```bash
# Option 1: Python (built-in)
python3 -m http.server 8000

# Option 2: Node.js
npx serve .

# Option 3: Bundled server
node server.js
```
Open `http://localhost:8000` — the app loads at `/`.

### Deploy to Cloudflare Pages
```bash
# One-time: create projects
npx wrangler pages project create eventsmart --production-branch=main
npx wrangler pages project create event-smart --production-branch=main

# Deploy
npx wrangler pages deploy . --project-name=eventsmart
npx wrangler pages deploy . --project-name=event-smart
```

---

## Project Structure

```
smartevents-package/
├── index.html          # Main app (single-file, ~80KB)
├── wrangler.toml       # Cloudflare Pages config
├── server.js           # Local dev server (Node)
├── Start-SmartEvents.bat  # Windows launcher
├── .gitignore
├── LICENSE
└── README.md           # This file
```

---

## Tech Stack

| Layer | Choice |
|-------|--------|
| **3D Engine** | Three.js r168 (ESM via jsDelivr) |
| **Post-processing** | EffectComposer + UnrealBloomPass + SSAOPass + ShaderPass (FXAA) |
| **UI** | Vanilla ES2022, CSS Custom Properties, CSS Grid |
| **Fonts** | Manrope + DM Mono (Google Fonts) |
| **Icons** | Inline SVG (zero deps) |
| **Deploy** | Cloudflare Pages (static assets) |
| **CI/CD** | `wrangler pages deploy` (manual or GitHub Actions) |

---

## Discord Embed

The page includes Open Graph + Twitter Card meta tags:

```html
<meta property="og:type" content="website" />
<meta property="og:title" content="SmartEvents Studio — 3D Event Production Planner" />
<meta property="og:description" content="Design professional lighting, audio & stage layouts..." />
<meta property="og:image" content="https://i.ibb.co/35Ys0TSt/image.png" />
<meta property="og:image:width" content="512" />
<meta property="og:image:height" content="512" />
<meta property="og:url" content="https://eventsmart.pages.dev/" />
<meta property="og:site_name" content="SmartEvents Studio" />

<meta name="twitter:card" content="summary" />
<meta name="twitter:image" content="https://i.ibb.co/35Ys0TSt/image.png" />
```

Result: a compact thumbnail embed with the **intro sequence logo** when shared on Discord, Slack, Twitter/X, etc.

---

## Keyboard Shortcuts

| Key | Action |
|-----|--------|
| `1` / `2` / `3` | Switch Design / Audio / Venue mode |
| `G` | Toggle grid snap |
| `R` | Cycle gizmo: Translate → Rotate → Scale |
| `Delete` / `Backspace` | Delete selected object |
| `Ctrl+D` | Clone selected object |
| `F` | Focus camera on selection |
| `Ctrl+Z` / `Ctrl+Y` | Undo / Redo |
| `Ctrl+S` | Quick-save to localStorage |
| `E` | Export project JSON |
| `I` | Import project JSON |

---

## License

MIT — see [LICENSE](LICENSE).

---

## Credits

- **Three.js** — https://threejs.org/
- **Post-processing passes** — Three.js examples (UnrealBloomPass, SSAOPass, FXAA)
- **Fonts** — Manrope & DM Mono via Google Fonts
- **Logo** — Custom SVG mark (mint/cyan gradient)
- **Inspiration** — Real-world production design tools (Vectorworks, Capture, WYSIWYG)

---

> Built for production designers, LDs, system techs, and anyone who thinks in 3D.