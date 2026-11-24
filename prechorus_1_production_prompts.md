# Club Ka Bwaal — Pre-Chorus 1 (`1:04.125 – 1:16.125`) Production Prompts & Trim Sheet

* **Tempo & Grid:** `120.00 BPM` (`0.50s` = 1 beat / `12f` | `1.00s` = 2 beats / `24f` | `2.00s` = 4 beats / `48f` | `3.00s` = 6 beats / `72f`)
* **Total Pre-Chorus 1 Runtime:** `12.000s` (`6 bars` / `24 beats` = **`288 frames`** @ `24 fps`)
* **Musical & Visual Arc:**
  * **Bars 33–36 (`1:04.125 – 1:12.125`, `192f`):** Following Act 3 `#27`'s face-to-face eye-lock and the `1:03.50` bass cut, the track strips back into dreamy melodic synth pads (*"Baahon mein aaja... door na jaa... Is crazy night ka maza tu utha!"*). Hold natural **`1.0×`** motion and lush **electric magenta + cyan mist** for romantic club tension.
  * **Bars 37–38 (`1:12.125 – 1:16.125`, `96f`):** Verified audio onset shows the **filtered kick entering at `1:12.125`** (Bar 37) and a **rising snare/synth crescendo from `1:14.125 – 1:16.125`** (Bar 38) slamming into **Chorus 2A at `1:16.125`**. Editing accelerates from `48f` floats to `24f` (`1.00s`) kinetic kick cuts and a `48f` reverse crowd-surge riser.
* **Native Singing Lip-Sync (2 Hero Cuts):** Shots `#28` and `#31` use Google Flow native audio/dialogue (`lips slightly parted mid-song` in Step 4 + phonetic Hindi syllables + `120 BPM` delivery in Step 5), synced frame-accurately via FFmpeg syllable-onset `setpts` time-warping (and muted `-an`).
* **Continuity & Pipeline Rules:** `@loc_club_crowded` omitted throughout; `~15` loosely spaced silhouetted clubgoers + cyan-magenta LED ceiling grid; **Aryan keeps his tinted amber sunglasses ON** across all shots; **zero `@` tags** in all Step 5 prompts; **zero character body turns**; **zero consecutive centered MCU push-ins**; rename Step 4 keyframes to `kf_<shot_id>_start` / `kf_<shot_id>_end` (e.g., `kf_28_start`, `kf_29_start`/`kf_29_end`) and Step 5 videos to `shot_<shot_id>`.

---

## Master Beat Grid & Trim Sheet (`288 Frames` Exact)

| Shot | Timeline | Bar / Beats | Frames | Lyric / Musical Cue | Lip-Sync? | Flow Mode | Camera Grammar & Visual Role |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| **#28** | `1:04.125 – 1:06.125` | Bar 33 (4b) | `48f` | *"Baa-hon mein aa-jaa..."* | **YES (Vocal #1)** | Start Only | **Tight dirty OTS close-up** past Aryan's blurred shoulder onto Zoya singing softly up close |
| **#29** | `1:06.125 – 1:08.125` | Bar 34 (4b) | `48f` | *"...door na jaa..."* | No | Start + End | **Low-angle `24mm` sweeping `120°` orbital two-shot** circling them in drifting floor fog |
| **#30** | `1:08.125 – 1:10.125` | Bar 35 (4b) | `48f` | *"Is cra-zy night ka..."* | No | **Banked `shot_c1b_4`** *(or NEW float)* | **Banked `shot_c1b_4_15ad0386.mp4`** (`00:00:00.25 @ 1.0×`, `0` cr) — or optional high-angle diagonal float |
| **#31** | `1:10.125 – 1:12.125` | Bar 36 (4b) | `48f` | *"...ma-za tu u-thaa!"* | **YES (Vocal #2)** | Start Only | **Off-center `85mm` lateral glide-in** on Zoya in left third as beat teases back |
| **#32A** | `1:12.125 – 1:13.125` | Bar 37 b1–2 (2b) | `24f` | **[FILTERED KICK]** Pulse 1 | No | Start Only | **`100mm` macro hand-on-sleeve** — Zoya's silver bangles grazing Aryan's gold-embroidered cuff |
| **#32B** | `1:13.125 – 1:14.125` | Bar 37 b3–4 (2b) | `24f` | **[FILTERED KICK]** Pulse 2 | No *(3-hit bank)* | Start Only | **Aryan `@loc_void_lasers` Dutch-tilt pulse** (`24f`; banks 2 extra `24f` hits for Chorus 2 / Rap 2) |
| **#33** | `1:14.125 – 1:16.125` | Bar 38 (4b) | `48f` | **[RISER BUILD]** → Chorus 2A | No | Start + End | **`24mm` low-angle reverse pullback** revealing duo & `~15` clubgoers raising arms into the drop |

*(Frame Check: `48 + 48 + 48 + 48 + 24 + 24 + 48 = 288 frames` / `12.000s` exact.)*

---

## Shot Prompts (Step 4 Keyframes & Step 5 Animations)

### Shot #28 — Zoya Intimate OTS Singing *"Baahon mein aaja"* (Lip-Sync #1)
* **Target File:** `shot_28.mp4` • **Enable Google Flow Audio/Dialogue**
* **Timeline:** `1:04.125 – 1:06.125` (`2.00s` — 4 Beats / `48f`)
* **Cue:** Bar 33 (*"Baa-hon mein aa-jaa..."* — right after Act 3 `#27` face-to-face glide)
* **Mode:** Start Frame Only (`28A`) • **Ingredients (Step 4):** `@char_aryan`, `@char_zoya`
* **Edit Note:** Keep at `1.0×` natural speed to match the smooth pad drop, then syllable-sync via FFmpeg `setpts` (`-an`).

**Step 4 — Start Frame (`28A`):**
> `85mm eye-level tight dirty over-the-shoulder close-up inside an intimate darkened upscale lounge-club bathed in lush electric magenta and cyan mist: the heavily out-of-focus dark silhouette of @char_aryan's left shoulder, gold bomber sleeve embroidery, and edge of his tinted amber sunglasses frames the left foreground third, while razor-sharp focus locks closely onto @char_zoya in the right-center frame (wearing her sparkling purple sequined corset top, silver hoop earrings, and wavy dark hair glowing with dreamy magenta rim light), leaning slightly closer with warm, magnetic eye contact and lips slightly parted mid-song, soft neon bokeh drifting across the dark club behind her.`

**Step 5 — Video Animation Prompt (Zero `@` Tags):**
> `Silky, intimate lateral micro-glide drifting gently right past the blurred foreground shoulder at smooth 120 BPM ballad-groove tempo: holding warm eye contact across the close hazy space with zero body turn, the woman tilts her chin softly and sings with smooth, breathy Hindi dance-pop vocal delivery, her lips clearly enunciating the 2-second lyric "Baa-hon mein aa-jaa" as lush magenta and cyan mist swirls softly behind her.`

---

### Shot #29 — Low-Angle `120°` Orbital Two-Shot (*"Door na jaa"*)
* **Target File:** `shot_29.mp4`
* **Timeline:** `1:06.125 – 1:08.125` (`2.00s` — 4 Beats / `48f`)
* **Cue:** Bar 34 (*"...door na jaa..."*)
* **Mode:** Start + End Frame (`29A` + `29B`) • **Ingredients (Step 4):** `@char_aryan`, `@char_zoya`
* **Edit Note:** Keep at `1.0×` natural speed for weightless orbital motion.

**Step 4 — Start Frame (`29A`):**
> `24mm low-angle (18-degree upward) wide-medium two-shot inside an intimate upscale lounge-club dancefloor blanketed in ankle-high swirling cyan and electric magenta fog: standing close together at center floor beneath the dimmed cyan-magenta LED ceiling grid, @char_aryan (on the left, wearing his open black satin bomber jacket with gold sleeve embroidery, silver chains, and tinted amber sunglasses) and @char_zoya (on the right, wearing her sparkling purple sequined corset top, black high-waisted trousers, silver hoops, and stacked silver bangles, wavy dark hair backlit in magenta) sway gently to the groove facing forward at a slight angle toward each other with warm closed-mouth smirks, surrounded loosely at the edges by about fifteen dark silhouetted clubgoers.`

**Step 4 — End Frame (`29B`) — Ingredients:** `Start Frame 29A`, `@char_aryan`, `@char_zoya`
> `24mm low-angle (18-degree upward) wide-medium two-shot orbiting 120 degrees counterclockwise around the exact same duo, glowing floor fog, and club lighting of Start Frame 29A: the camera has circled smoothly around to the opposite side so @char_zoya now occupies the left-center midground and @char_aryan occupies the right-center midground in sharp cyan and magenta rim light, both holding cool, magnetic closed-mouth smirks with the dimmed LED ceiling grid and about fifteen loosely spaced blurred silhouettes drifting in parallax behind them.`

**Step 5 — Video Animation Prompt (Zero `@` Tags):**
> `Smooth, weightless 120-degree low-angle orbital gimbal arc circling continuously counterclockwise through the glowing floor fog at steady 120 BPM club speed: keeping their shoulders steady with zero abrupt turns, the man and the woman sway effortlessly in sync with subtle closed-mouth smirks as volumetric cyan and electric magenta beams and blurred club silhouettes glide smoothly around them.`

---

### Shot #30 — Smooth Duo-Walk / High-Angle Diagonal Float (*"Is crazy night ka"*)
* **Target File:** **Option A (Zero Flow Credits):** Use banked `shot_c1b_4_15ad0386.mp4` (`00:00:00.25 – 00:00:02.25`, `48f` @ `1.0×`) **OR Option B (New Clip):** `shot_30.mp4`
* **Timeline:** `1:08.125 – 1:10.125` (`2.00s` — 4 Beats / `48f`)
* **Cue:** Bar 35 (*"Is crazy night ka..."*)
* **Note on Option A:** `shot_c1b_4_15ad0386.mp4` already shows Aryan (amber sunglasses, gold-embroidered bomber, silver chains) stepping cleanly forward while Zoya (purple sequined corset) drifts gracefully behind him in cyan-magenta haze—a natural fit here for `0` credits. Generate Option B below only if you want an overhead-to-eye camera angle instead.

**Step 4 — Start Frame (`30A` — Optional New Clip) • Ingredients:** `@char_aryan`, `@char_zoya`
> `35mm elevated diagonal (28-degree downward) medium-wide tracking shot inside an intimate upscale lounge-club bathed in glowing electric cyan and magenta floor fog: gliding diagonally toward @char_aryan (foreground-right, wearing his open black satin bomber jacket with gold sleeve embroidery, silver chains, and tinted amber sunglasses) and @char_zoya (midground-left, wearing her sparkling purple sequined corset top, black trousers, silver hoops, and wavy dark hair) as they groove loosely side-by-side through the drifting mist with cool closed-mouth smirks, about fifteen loosely spaced silhouetted clubgoers swaying under the cyan-magenta LED ceiling grid behind them.`

**Step 5 — Video Animation Prompt (Zero `@` Tags):**
> `Fluid diagonal crane descent gliding smoothly downward toward eye-level at relaxed 120 BPM speed: the man and the woman groove effortlessly forward together through swirling cyan and magenta floor mist with confident closed-mouth smirks while the dimmed neon ceiling grid and sweeping club lights drift softly overhead.`

---

### Shot #31 — Zoya Off-Center Telephoto Singing *"Maza tu uthaa!"* (Lip-Sync #2)
* **Target File:** `shot_31.mp4` • **Enable Google Flow Audio/Dialogue**
* **Timeline:** `1:10.125 – 1:12.125` (`2.00s` — 4 Beats / `48f`)
* **Cue:** Bar 36 (*"...ma-za tu u-thaa!"* — leads straight into `1:12.125` filtered kick)
* **Mode:** Start Frame Only (`31A`) • **Ingredients (Step 4):** `@char_zoya`
* **Edit Note:** Keep at `1.0×`–`1.05×`, syllable-sync via FFmpeg `setpts` (`-an`).

**Step 4 — Start Frame (`31A`):**
> `85mm eye-level off-center medium close-up inside an intimate darkened upscale lounge-club filled with vibrant electric magenta and cyan haze: framed in the left third of the image with blurred neon reflections and softly out-of-focus club silhouettes filling the right negative space, @char_zoya (wearing her sparkling purple sequined corset top, silver hoop earrings, and stacked silver bangles, wavy dark hair catching bright cyan-magenta rim light) leans playfully toward the lens with sparkling eyes, lips slightly parted mid-song, and one hand lifted lightly near her shoulder ready to accent the rising beat.`

**Step 5 — Video Animation Prompt (Zero `@` Tags):**
> `Smooth lateral telephoto glide drifting right-to-left while easing gently closer at upbeat 120 BPM club tempo: tossing her wavy hair slightly and gesturing playfully with her raised hand on the beat, the woman sings directly into the camera with energetic, inviting Hindi dance-pop vocal delivery, her lips clearly enunciating the 2-second lyric "Ma-za tu u-thaa!" as glowing cyan and magenta club lights pulse softly behind her.`

---

### Shot #32A — `100mm` Macro Hand-on-Sleeve Catch (Filtered Kick Pulse #1)
* **Target File:** `shot_32a.mp4`
* **Timeline:** `1:12.125 – 1:13.125` (`1.00s` — 2 Beats / `24f`)
* **Cue:** Bar 37 b1–2 (**Filtered Kick Enters** at `1:12.125`)
* **Mode:** Start Frame Only (`32A`) • **Ingredients (Step 4):** `@char_aryan`, `@char_zoya` *(or reference wrist/sleeve details cleanly)*

**Step 4 — Start Frame (`32A`):**
> `100mm extreme macro close-up tight on hands and jacket sleeve inside a dark neon nightclub: in razor-sharp shallow depth of field against glowing electric cyan and hot magenta bokeh, @char_zoya's hand adorned with stacked silver bangles reaches gently to lightly touch the intricate gold embroidery on the black satin bomber sleeve of @char_aryan, crisp metallic threads and polished silver catching vivid cyan-magenta strobe reflections.`

**Step 5 — Video Animation Prompt (Zero `@` Tags):**
> `Crisp macro snap-push gliding tightly forward at exact 120 BPM club tempo: the woman's silver-bangled fingers slide lightly down the gold-embroidered black satin sleeve right on the heavy kick beat while vivid electric cyan and hot magenta club bokeh pulses and flares across the dark background.`

---

### Shot #32B — Aryan `@loc_void_lasers` Dutch-Tilt Pulse (Filtered Kick Pulse #2 — 3-Hit Bank)
* **Target File:** `shot_32b.mp4`
* **Timeline:** `1:13.125 – 1:14.125` (`1.00s` — 2 Beats / `24f`)
* **Cue:** Bar 37 b3–4 (**Filtered Kick Pulse #2** leading into Bar 38 Riser)
* **Mode:** Start Frame Only (`32B` — Continuous 3-Second Bank) • **Ingredients (Step 4):** `@char_aryan`, `@loc_void_lasers`
* **3-Hit Reserve Bank Allocation (`3 × 1.00s` / `24f` windows):**
  * **Window 1 (`00:00:00.00 – 00:00:01.00`, `24f`):** Pre-Chorus 1 `#32B` (`1:13.125 – 1:14.125`)
  * **Window 2 (`00:00:01.00 – 00:00:02.00`, `24f`):** Chorus 2A / 2B kinetic punch
  * **Window 3 (`00:00:02.00 – 00:00:03.00`, `24f`):** Rap Verse 2 (`1:48.12`) / Final Chorus 3 (`2:18.12`)

**Step 4 — Start Frame (`32B`):**
> `35mm low-angle (15-degree upward) close-to-medium shot with a crisp 12-degree Dutch tilt inside @loc_void_lasers: framed against razor-sharp criss-crossing electric cyan and warm amber-gold laser beams slicing through pure dark haze, @char_aryan (wearing his open black satin bomber jacket with gold sleeve embroidery, black t-shirt, layered silver chain necklaces, and tinted amber sunglasses) holds a cool, razor-sharp closed-mouth smirk with crisp cyan rim light tracing his jawline and sunglasses.`

**Step 5 — Video Animation Prompt (Zero `@` Tags):**
> `Punchy low-angle push-in at exact 120 BPM club speed: the man gives sharp, confident rhythmic head-nods and subtle shoulder bounces cleanly on every kick beat while holding a cool closed-mouth smirk as razor-sharp electric cyan and amber-gold laser beams sweep and strobe continuously behind him.`

---

### Shot #33 — Wide Reverse Pullback & Crowd Surge Riser (Into Chorus 2A Drop)
* **Target File:** `shot_33.mp4`
* **Timeline:** `1:14.125 – 1:16.125` (`2.00s` — 4 Beats / `48f`)
* **Cue:** Bar 38 (**Snare / Synth Riser** peaking right into **Chorus 2A Drop at `1:16.125`**)
* **Mode:** Start + End Frame (`33A` + `33B`) • **Ingredients (Step 4):** `@char_aryan`, `@char_zoya`
* **Edit Note:** Speed-ramp `1.0×` → `1.15×` if Flow eases out slow, ensuring the final frame hits maximum strobe brightness right before Chorus 2A (`1:16.125`).

**Step 4 — Start Frame (`33A`):**
> `35mm slightly low-angle (10-degree upward) medium two-shot inside an intimate upscale lounge-club dancefloor swirling with electric cyan and magenta fog: side-by-side at center floor, @char_aryan (in his open black satin bomber jacket with gold sleeve embroidery, silver chains, and tinted amber sunglasses) and @char_zoya (in her sparkling purple sequined corset top, black high-waisted trousers, silver hoops, and wavy dark hair) stand shoulder-to-shoulder facing forward with building hype energy and big confident closed-mouth grins, intense white-cyan riser backlighting beginning to flare behind them.`

**Step 4 — End Frame (`33B`) — Ingredients:** `Start Frame 33A`, `@char_aryan`, `@char_zoya`
> `18mm ultra-wide low-angle (15-degree upward) full-room shot pulled swiftly back from Start Frame 33A across the exact same lounge-club dancefloor: @char_aryan and @char_zoya now stand center floor with arms lifted in hype anticipation as the cyan-magenta LED ceiling grid overhead blazes brightly and about fifteen loosely spaced silhouetted clubgoers flanking them throw their hands up into brilliant white, cyan, and magenta volumetric riser beams.`

**Step 5 — Video Animation Prompt (Zero `@` Tags):**
> `Fast, exhilarating reverse tracking pullback sweeping swiftly backward from medium two-shot to ultra-wide full-room scale at accelerating 120 BPM riser tempo: the man and the woman lift their arms together in synchronized hype energy as surrounding silhouetted dancers raise their hands and blinding white, electric cyan, and magenta ceiling lights surge brighter toward the drop.`
