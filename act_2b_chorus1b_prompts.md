# Club Ka Bwaal — Act 2B (Chorus 1B v2: `0:32.125 – 0:48.125`) Non-MCU + Singing Rebuild

* **Tempo & Grid:** `120.00 BPM` • `24 fps` (`1 beat` = `0.50s` / `12f` | `2 beats` = `1.00s` / `24f` | `4 beats` = `2.00s` / `48f` | `6 beats` = `3.00s` / `72f`)
* **Total Duration:** `16.000s` (`8 bars` / `32 beats` = **`384 frames`**)
* **Rebuild Principles (v2):**
  * **Zero Recycled Act 1 / Act 2 Clips:** No `shot_02`, `shot_07`, `shot_10a`, `shot_11`, `shot_15`, `shot_17`, or `shot_18` reuse inside Chorus 1B.
  * **Natural Speed on Active Clips:** Keep `shot_c1b_1`, `shot_c1b_2`, and `shot_c1b_3` at **`1.0×`** (no `1.5×` jitter on already-active dancing).
  * **Skip Static Intros:** Use ONLY the dynamic **`00:00:01.00 – 00:00:02.50` whip-down + wide crowd** of `shot_c1b_5` (skipping the static `0:00–1:00` head).
  * **Banked Clip Preserved:** `shot_c1b_4_15ad0386.mp4` remains untouched in the root folder for calmer sections (Pre-Chorus 1 `1:04.12` or Bridge `2:02.12`).
  * **Zero Consecutive Centered MCU Push-Ins:** Every new shot introduces a distinct camera grammar (dirty-foreground lateral slide, `90°` bird's-eye top-down spin, floor-level `16mm` footwork, backlit singing silhouette, reverse pullback, and `90°` silhouette-to-profile spotlight orbit).
* **Pipeline Rules:** `@loc_club_crowded` omitted; `~15` loosely spaced silhouetted clubgoers + cyan-magenta LED ceiling grid; Aryan keeps tinted amber sunglasses ON; **zero `@` tags** in all Step 5 prompts; **zero character body turns**.

---

## Assembled `384-Frame` Chorus 1B v2 Timeline (`0:32.125 – 0:48.125` via `07_assemble_chorus1b.sh`)

| Cut ID | Timeline | Bar / Beats | Frames | Lyric / Cue | Source | Raw Window @ Speed | Camera Grammar / Role |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| **1** | `0:32.125 – 0:34.125` | Bar 17 (4b) | `48f` | **BASS DROP:** *"Aaja mere paas..."* | `shot_c1b_s1*.mp4` | `00:00:00.55 @ 1.05×` | **Lip-Sync #1** — Dirty-foreground lateral slide singing `"Aa-jaa me-re paas"` |
| **2** | `0:34.125 – 0:36.125` | Bar 18 (4b) | `48f` | *"...doori na tu rakh (Come on!)"* | `shot_c1b_w1*.mp4` | `00:00:00.25 @ 1.0×` | **`90°` Bird's-Eye Top-Down Spin** over Aryan & Zoya dancing center floor |
| **3** | `0:36.125 – 0:37.625` | Bar 19 b1–3 (3b) | `36f` | *"Dil mein hai tere..."* | `shot_c1b_m1*.mp4` | `00:00:00.25 @ 1.0×` | **Floor-Level `16mm` Footwork** & neon reflections *(optional swap: `#C1B-S3` Lip-Sync)* |
| **4** | `0:37.625 – 0:39.625` | Bar 19 b4 – Bar 20 b3 (4b) | `48f` | *"...mera hi haq"* | `shot_c1b_3*.mp4` | `00:00:00.15 @ 1.0×` | Tight CU Aryan swagger at natural speed |
| **5** | `0:39.625 – 0:41.125` | Bar 20 b4 – Bar 21 b2 (3b) | `36f` | *"Huh? Nach le tu..."* | `shot_c1b_5*.mp4` | `00:00:01.00 @ 1.0×` | Active **whip-down into wide backlit crowd** (static `0:00–1:00` skipped) |
| **6** | `0:41.125 – 0:42.625` | Bar 21 b3 – Bar 22 b1 (3b) | `36f` | *"...mere saath..."* | `shot_c1b_1*.mp4` | `00:00:00.25 @ 1.0×` | MW duo dance at natural `1.0×` speed (no `1.5×` jitter) |
| **7** | `0:42.625 – 0:44.125` | Bar 22 b2–4 (3b) | `36f` | *"...mein ab"* | `shot_c1b_sil*.mp4` | `00:00:01.00 @ 1.0×` | **Backlit Profile Arm-Raise Silhouette** (`1.00–2.50s` dramatic rim-lit profile) |
| **8** | `0:44.125 – 0:46.125` | Bar 23 (4b) | `48f` | *"Beat pe hum dono..."* | `shot_c1b_s2*.mp4` | `00:00:00.12 @ 1.0×` | **Lip-Sync #2** — Exact `1.00×` reverse pullback singing `"Beat pe hum do-no"` |
| **9** | `0:46.125 – 0:48.125` | Bar 24 (4b) | `48f` | *"...milte hain jab"* **BASS DROPOUT + DRUM FILL** | `shot_c1b_t1*.mp4` | `00:00:00.20 @ 1.25×` | **`90°` Silhouette-to-Profile Cyan Spotlight Orbit** → Act 3 `#20` |

*(Frame Check: `48 + 48 + 36 + 48 + 36 + 36 + 36 + 48 + 48 = 384 frames` / `16.000s` exact.)*

---

## 6 New Shot Prompts (Multi-Segment Reusable Pool + Native Singing Test)

### Shot `#C1B-S1` — Zoya Singing *"Aaja mere paas"* (Dirty-Foreground Lateral Slide | Native Dialogue Test)
* **Target File:** `shot_c1b_s1.mp4` • **Enable Google Flow Audio/Dialogue**
* **Mode:** Start Frame Only (`C1B_S1A`) • **Ingredients (Step 4):** `@char_zoya`
* **Sync Plan:** Run FFmpeg syllable-onset alignment (`"Aa-jaa"`, `"me-re"`, `"paas"`) via `setpts` to lock onto `0:32.125 – 0:34.125` (`48f`), then mute Flow audio (`-an`).

**Step 4 — Start Frame (`C1B_S1A`):**
> `50mm eye-level off-center medium close-up inside an intimate upscale lounge-club dancefloor, composed with @char_zoya placed in the right third of the frame while blurred dark silhouettes of foreground dancers and glowing electric magenta bokeh frame the left foreground edge for cinematic depth: wearing her sparkling purple sequined corset top, silver hoop earrings, and stacked silver bangles with wavy dark hair catching sharp magenta rim light, @char_zoya looks directly into the lens with charismatic energy and lips slightly parted mid-song, glowing cyan-magenta LED ceiling grid and about fifteen loosely spaced blurred clubgoers behind her.`

**Step 5 — Video Animation Prompt (Zero `@` Tags):**
> `Smooth lateral camera slide from left to right past the blurred foreground silhouettes at upbeat 120 BPM club tempo: the woman sways rhythmically to the dance beat and sings directly into the camera with crisp, clear, upbeat Hindi dance-pop vocal delivery, her lips clearly enunciating the 2-second lyric "Aa-jaa me-re paas" with playful eye contact, subtle shoulder groove, and flowing wavy hair as electric magenta and cyan club strobes shimmer behind her.`

---

### Shot `#C1B-W1` — `90°` Bird's-Eye Top-Down Spin (Duo Center Floor Clearing)
* **Target File:** `shot_c1b_w1.mp4` • Reusable in Chorus 1B, Chorus 2, Dance Break (`2:34`), & Final Chorus 3
* **Mode:** Start Frame Only (`C1B_W1A`) • **Ingredients (Step 4):** `@char_aryan`, `@char_zoya`

**Step 4 — Start Frame (`C1B_W1A`):**
> `24mm 90-degree bird's-eye top-down overhead wide shot looking straight down from the dark ceiling onto a glossy upscale lounge-club dancefloor bathed in swirling cyan and electric magenta floor haze: directly at the center of an open circular clearing, @char_aryan (in his open black satin bomber jacket with gold sleeve embroidery and tinted amber sunglasses) and @char_zoya (in her sparkling purple sequined corset top, black trousers, and wavy dark hair) dance side-by-side looking slightly upward with energetic smiles, ringed loosely at the outer edges by about fifteen silhouetted clubgoers with raised hands, razor-sharp cyan and magenta laser beams criss-crossing the smoky floor reflections.`

**Step 5 — Video Animation Prompt (Zero `@` Tags):**
> `Smooth, continuous 90-degree bird's-eye top-down camera rotation spinning slowly counterclockwise while gliding slightly downward at steady 120 BPM club speed: at the center of the glowing dancefloor clearing, the man and the woman groove hard in sync with arms lifted and rhythmic shoulder motion while the loose ring of silhouetted dancers around the perimeter pumps their hands to the beat and sweeping cyan-magenta floor beams spin across the swirling fog.`

---

### Shot `#C1B-M1` — Floor-Level `16mm` Footwork & Neon Reflections (Zero-Face Kinetic Breaker)
* **Target File:** `shot_c1b_m1.mp4` • Reusable across Chorus 1B, Rap Verses, & Dance Break (`2:34`)
* **Mode:** Start Frame Only (`C1B_M1A`) • **Ingredients (Step 4):** None (Detail / Atmosphere Insert)

**Step 4 — Start Frame (`C1B_M1A`):**
> `16mm ultra-low floor-level wide shot with the camera resting inches above a glossy, reflective dark nightclub dancefloor shrouded in thick ankle-high cyan and electric magenta floor fog: in the crisp foreground midground, two pairs of stylish club footwear—sleek matte black sneakers with dark tailored trousers on the left and sleek black heels with flowing black high-waisted trousers on the right—are caught mid-step on the glossy floor reflecting brilliant electric cyan and magenta ceiling LED grids, with blurred silhouettes of about fifteen dancing legs and sweeping volumetric laser beams cutting low across the smoky room in the background.`

**Step 5 — Video Animation Prompt (Zero `@` Tags):**
> `Fast, punchy floor-level lateral glide skimming inches above the glossy dancefloor at steady 120 BPM club speed: the sleek black sneakers and black heels execute sharp, synchronized rhythmic dance steps and pivots right on the heavy kick beats, kicking up wisps of swirling electric cyan and magenta floor fog while brilliant neon ceiling reflections and sweeping laser beams streak across the polished dark floor.`

---

### Shot `#C1B-SIL` — Backlit Singing Silhouette Performance (Universal Chorus Cut)
* **Target File:** `shot_c1b_sil.mp4` • Works across Chorus 1B, Chorus 2, Bridge, & Final Chorus 3 with zero lip-sync drift
* **Mode:** Start Frame Only (`C1B_SIL_A`) • **Ingredients (Step 4):** `@char_zoya`

**Step 4 — Start Frame (`C1B_SIL_A`):**
> `35mm slightly low-angle (12-degree upward) dramatic high-contrast backlit silhouette medium shot inside a smoky upscale lounge-club: positioned center-left in stark dark silhouette with an intense blazing electric magenta and pure white rim light outlining her wavy dark hair, silver hoop earrings, stacked silver bangles, and sequined corset contour, @char_zoya leans passionately forward mid-song with one hand lifted expressively near her collarbone and head tilted back slightly in ecstatic singing energy, blinding volumetric cyan and white spotlight cones exploding directly behind her through thick swirling haze, about fifteen dark silhouetted clubgoers with raised hands framing the lower edges.`

**Step 5 — Video Animation Prompt (Zero `@` Tags):**
> `Dynamic sweeping lateral camera arc left-to-right with subtle reverse pullback at steady 120 BPM club speed: silhouetted dramatically against blinding white and electric magenta backlight beams, the woman performs passionately to the soaring chorus—swaying her shoulders, tossing her wavy hair through the glowing haze, and lifting her hand expressively on the vocal peak while intense volumetric spotlights flare and shimmer behind her dark rim-lit silhouette.`

---

### Shot `#C1B-S2` — Zoya Singing *"Beat pe hum dono"* (Reverse Pullback | Native Dialogue Shot #2)
* **Target File:** `shot_c1b_s2.mp4` • **Enable Google Flow Audio/Dialogue** (use in Chorus 1B Bar 23 or bank for Chorus 2 / Final Chorus 3)
* **Mode:** Start Frame Only (`C1B_S2A`) • **Ingredients (Step 4):** `@char_zoya`

**Step 4 — Start Frame (`C1B_S2A`):**
> `35mm slightly low-angle (10-degree upward) tight medium close-up inside an intimate upscale lounge-club dancefloor erupting in vivid magenta and cyan laser rays: @char_zoya (wearing her sparkling purple sequined corset top, silver hoop earrings, and stacked silver bangles, wavy dark hair catching vibrant magenta rim light) leans slightly toward the camera with vibrant eye contact and lips slightly parted mid-lyric, one hand raised lightly near her shoulder ready to gesture on the beat, glowing cyan-magenta LED ceiling grid and about fifteen loosely spaced blurred silhouetted clubgoers behind her.`

**Step 5 — Video Animation Prompt (Zero `@` Tags):**
> `Fast, energetic gimbal reverse pullback moving swiftly backward away from the subject at upbeat 120 BPM club tempo: the woman sings directly into the lens with crisp, upbeat Hindi dance-pop vocal delivery, her lips clearly enunciating the 2-second lyric "Beat pe hum do-no" while bouncing her shoulders and gesturing rhythmically with her raised hand as the camera pulls back to reveal blazing magenta and cyan laser beams and dancing silhouettes erupting behind her.`

---

### Shot `#C1B-T1` — Backlit Silhouette-to-Profile Orbit (Bass-Dropout Transition into Rap Verse 1)
* **Target File:** `shot_c1b_t1.mp4` • Replaces banked `shot_c1b_4` for `0:46.125 – 0:48.125` (`48f`)
* **Mode:** Start + End Frame (`C1B_T1A` + `C1B_T1B`) • **Ingredients (Step 4):** `@char_aryan`
* **Note:** Camera orbits 90° while Aryan holds his stance steady—zero character body turn.

**Step 4 — Start Frame (`C1B_T1A`):**
> `35mm low-angle (15-degree upward) dramatic high-contrast three-quarters back silhouette shot inside a darkened upscale lounge-club where the party strobes have cut out: shot from behind and slightly left of @char_aryan's dark silhouette standing poised at center floor, a single stark electric cyan overhead spotlight column cuts straight down through thick drifting dark haze directly in front of him, carving a razor-sharp glowing cyan rim along his hair, black satin bomber jacket shoulders with gold sleeve embroidery, and collar, surrounding club interior plunged into deep moody shadow with about fifteen barely visible dark silhouettes.`

**Step 4 — End Frame (`C1B_T1B`) — Ingredients:** `Start Frame C1B_T1A`, `@char_aryan`
> `50mm low-angle sharp side-three-quarter close-up orbiting 90 degrees clockwise around the exact same darkened club, single overhead electric cyan spotlight column, and drifting haze of Start Frame C1B_T1A: the camera has arced around to reveal @char_aryan's razor-sharp profile-to-three-quarter face in dramatic chiaroscuro cyan rim light, wearing his tinted amber sunglasses, layered silver chain necklaces, and gold-embroidered black bomber jacket, chin slightly dipped with a cool, intense closed-mouth smirk as he looks squarely toward the camera ready to drop his verse.`

**Step 5 — Video Animation Prompt (Zero `@` Tags):**
> `Fast, sleek 90-degree orbital camera arc clockwise around the poised figure at steady 120 BPM club speed while the subject holds his stance steady with zero body turn: starting from his dark backlit silhouette against the single stark cyan spotlight beam, the camera sweeps dramatically around his shoulder through drifting dark haze to reveal his sharp jawline, amber sunglasses, and cool, focused closed-mouth smirk locking onto the lens right as the beam flares subtly behind him.`

---

### Bonus Shot `#C1B-S3` — Zoya Singing *"Dil mein hai tere"* (Low-Angle Diagonal Tracking Arc | Optional 3rd Chorus Lip-Sync)
* **Target File:** `shot_c1b_s3.mp4` • **Enable Google Flow Audio/Dialogue** (use either to swap into Chorus 1B Bar 19 `0:36.125` or bank directly for Chorus 2A/2B!)
* **Mode:** Start Frame Only (`C1B_S3A`) • **Ingredients (Step 4):** `@char_zoya`

**Step 4 — Start Frame (`C1B_S3A`):**
> `28mm low-angle (18-degree upward) dynamic diagonal medium shot inside an intimate upscale lounge-club dancefloor bathed in rich cyan and magenta floor fog: placed slightly off-center left against soaring diagonal cyan-magenta laser beams and the glowing LED ceiling grid overhead, @char_zoya (wearing her sparkling purple sequined corset top, black high-waisted trousers, silver hoop earrings, and stacked silver bangles, wavy dark hair catching crisp electric cyan rim light) looks boldly down toward the lens with lips slightly parted mid-song and one hand resting playfully near her collarbone, about fifteen loosely spaced blurred silhouetted clubgoers behind her.`

**Step 5 — Video Animation Prompt (Zero `@` Tags):**
> `Energetic low-angle diagonal camera arc moving smoothly right-to-left around the dancer at upbeat 120 BPM club tempo: looking boldly down into the lens, the woman sways her shoulders and sings with crisp, playful Hindi dance-pop vocal delivery, her lips clearly enunciating the 2-second lyric "Dil mein hai te-re" with charismatic eye contact and tossing her wavy dark hair as sweeping cyan and magenta laser beams flash overhead.`
