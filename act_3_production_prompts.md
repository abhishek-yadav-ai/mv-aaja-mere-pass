# Club Ka Bwaal — Act 3 (Rap Verse 1: `0:48.125 – 1:04.125`) Production Prompts & Trim Sheet (v2 — Rap Lip-Sync + Non-MCU Variety)

* **Tempo & Grid:** `120.00 BPM` (`0.50s` = 1 beat / `12f` | `1.00s` = 2 beats / `24f` | `2.00s` = 4 beats / `48f` | `3.00s` = 6 beats / `72f`)
* **Total Act 3 Runtime:** `16.000s` (`8 bars` / `32 beats` = **`384 frames`** @ `24 fps`)
* **Color & Lighting Shift:** Darker, slicker hip-hop contrast matching `#C1B-T1` — **moody amber-gold highlights + stark electric cyan spotlights & deep shadow falloff**, separating Rap Verse 1 visually from the brighter magenta/white Chorus 1B.
* **Camera Grammar Variety:** Zero consecutive centered MCU slow push-ins. Alternates across dirty-foreground lateral glide, high-angle wide orbital sweep, dirty over-the-shoulder (OTS) rack depth, off-center telephoto drift, handheld reverse-dolly crowd weave, extreme low-angle Dutch-tilt arc, macro detail punch, laser-void hair-toss bank, and side-profile two-shot orbit.
* **Native Rap Lip-Sync (4 Hero Cuts):** Shots `#20`, `#23`, `#24`, and `#25` use Google Flow native audio/dialogue (`lips slightly parted mid-rap` in Step 4 + phonetic Hindi/Hinglish syllables + `upbeat 120 BPM crisp 2-second rap delivery` in Step 5), synced frame-accurately via FFmpeg syllable-onset `setpts` time-warping (with Flow audio muted `-an`).
* **Continuity & Pipeline Rules:** `@loc_club_crowded` omitted throughout; `~15` loosely spaced silhouetted clubgoers + cyan-magenta LED ceiling grid; **Aryan keeps his tinted amber sunglasses ON** across all shots; **zero `@` tags** in all Step 5 prompts; **zero character body turns**.

---

## Master Beat Grid & Trim Sheet (`384 Frames` Exact)

| Shot | Timeline | Bar / Beats | Frames | Lyric / Audio Cue | Lip-Sync? | Flow Mode | Camera Grammar & Visual Role |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| **#20** | `0:48.125 – 0:50.125` | Bar 25 (4b) | `48f` | *"Beat pe fo-cus, feel the sound"* | **YES (Rap #1)** | Start Only | **Dirty-foreground lateral glide** out of `#C1B-T1`'s dark cyan spotlight as Aryan raps directly to lens |
| **#21** | `0:50.125 – 0:52.125` | Bar 26 (4b) | `48f` | *"Club mein dekho, scene hai ground"* | No | Start + End | **High-angle wide sweeping crane orbit** showing Aryan center floor & Zoya watching across the haze |
| **#22** | `0:52.125 – 0:54.125` | Bar 27 (4b) | `48f` | *"Nazrein mili ab baat badhe"* | No | Start + End | **Dirty OTS lateral slide** shooting past Aryan's blurred gold-embroidered shoulder onto Zoya's eye-lock |
| **#23** | `0:54.125 – 0:56.125` | Bar 28 (4b) | `48f` | **[BASS DROPOUT ECHO]** *"Naz-rein mi-li ab baat ba-dhe"* | **YES (Rap #2)** | Start Only | **Off-center 85mm telephoto lateral drift** — intimate quiet echo delivery peering over amber sunglasses (`1.0×`) |
| **#24** | `0:56.125 – 0:58.125` | Bar 29 (4b) | `48f` | **[BASS SLAM]** *"Te-re me-re beech mein kyun yeh kha-de"* | **YES (Rap #3)** | Start Only | **Fast handheld reverse-dolly pullback** — Aryan weaves briskly past dark foreground silhouettes rapping to lens |
| **#25** | `0:58.125 – 1:00.125` | Bar 30 (4b) | `48f` | *"Flow me-ra sick jai-se baa-tein te-ri"* | **YES (Rap #4)** | Start Only | **Extreme low-angle `24mm` Dutch-tilt kinetic arc** under slicing amber-gold & cyan beams |
| **#26A** | `1:00.125 – 1:01.125` | Bar 31 b1–2 (2b) | `24f` | *"Flow mera sick..."* | No | **NEW Macro** *(or banked `shot_02`)* | **Extreme Macro Amber Sunglasses** reflecting sweeping cyan-gold lasers *(or `shot_02.mp4` `1.96–2.96s` for `0` cr)* |
| **#26B** | `1:01.125 – 1:02.125` | Bar 31 b3–4 (2b) | `24f` | *"...jaise baatein teri (Yeah!)"* | No *(3-hit bank)* | Start Only | **Zoya `@loc_void_lasers`** continuous hair-toss & cheeky smirk *(banks 2 extra `24f` hits for Chorus 2 / Outro)* |
| **#27** | `1:02.125 – 1:04.125` | Bar 32 (4b) | `48f` | *"Kaise main kahoon tu hi hai meri"* *(bass cuts `1:03.50`)* | No | Start + End | **Side-profile wide-to-intimate orbital glide** — Aryan & Zoya close face-to-face into Pre-Chorus 1 (`1:04.125`) |

*(Frame Check: `48 + 48 + 48 + 48 + 48 + 48 + 24 + 24 + 48 = 384 frames` / `16.000s` exact.)*

---

## Shot Prompts (Step 4 Keyframes & Step 5 Animations)

### Shot #20 — Aryan Dark Spotlight Rap Entry (Rap Lip-Sync #1)
* **Target File:** `shot_20.mp4` • **Enable Google Flow Audio/Dialogue**
* **Timeline:** `0:48.125 – 0:50.125` (`2.00s` — 4 Beats / `48f`)
* **Cue:** Bar 25 Rap Entry (*"Beat pe fo-cus, feel the sound"*)
* **Mode:** Start Frame Only (`20A`) • **Ingredients (Step 4):** `@char_aryan`

**Step 4 — Start Frame (`20A`):**
> `35mm low-angle (12-degree upward) off-center medium shot inside a darkened upscale lounge-club dancefloor bathed in stark electric cyan spotlight haze and warm amber-gold edge highlights: positioned in the left third of the frame with blurred dark foreground silhouettes framing the right edge for depth, @char_aryan (wearing his open black satin bomber jacket with intricate gold sleeve embroidery, black t-shirt, layered silver chain necklaces, and tinted amber sunglasses) leans boldly toward the camera with intense rap charisma and lips slightly parted mid-lyric, one hand lifted near chest level ready to accent the beat, glowing cyan-magenta LED ceiling grid dimmed overhead and about fifteen loosely spaced shadowed clubgoers behind him.`

**Step 5 — Video Animation Prompt (Zero `@` Tags):**
> `Smooth, punchy low-angle lateral camera slide moving right-to-left past the blurred foreground silhouettes at upbeat 120 BPM hip-hop tempo: looking intensely straight into the lens beneath the stark cyan spotlight beam, the man nods sharply on the downbeat, gestures crisply with his raised hand, and raps with confident, rhythmic 2-second vocal delivery, his lips clearly enunciating "Beat pe fo-cus, feel the sound" as dark haze and electric cyan-gold beams shimmer behind him.`

---

### Shot #21 — High-Angle Sweeping Floor Reveal
* **Target File:** `shot_21.mp4`
* **Timeline:** `0:50.125 – 0:52.125` (`2.00s` — 4 Beats / `48f`)
* **Cue:** Bar 26 (*"Club mein dekho, scene hai ground"*)
* **Mode:** Start + End Frame (`21A` + `21B`) • **Ingredients (Step 4):** `@char_aryan`, `@char_zoya`

**Step 4 — Start Frame (`21A`):**
> `24mm high-angle (35-degree downward) wide cinematic shot sweeping across an intimate darkened upscale lounge-club dancefloor blanketed in thick cyan and warm amber-gold floor fog: in the lower-left foreground-midground, @char_aryan (in his open black satin bomber jacket with gold sleeve embroidery, silver chains, and tinted amber sunglasses) commands the center floor facing out with a cool closed-mouth smirk; across the smoky clearing in the upper-right midground, @char_zoya (in her sparkling purple sequined corset top, black high-waisted trousers, silver hoops, and wavy dark hair catching magenta rim light) dances rhythmically while watching him with a playful closed-mouth smirk, surrounded by about fifteen loosely spaced dark silhouetted clubgoers beneath slicing cyan-gold beams.`

**Step 4 — End Frame (`21B`) — Ingredients:** `Start Frame 21A`, `@char_aryan`, `@char_zoya`
> `28mm slightly elevated (20-degree downward) wide shot arcing 45 degrees clockwise and swooping lower from the exact club dancefloor, lighting, and haze of Start Frame 21A: the camera has swept diagonally across the smoky clearing to place @char_aryan's gold-embroidered jacket prominently on the left third and @char_zoya framed clearly across the electric haze on the right third, emphasizing the charged space between them while about fifteen loosely spaced blurred silhouetted clubgoers groove around the edges.`

**Step 5 — Video Animation Prompt (Zero `@` Tags):**
> `Fluid, sweeping high-angle crane arc curving smoothly clockwise and descending slightly across the smoky club floor at steady 120 BPM speed: the camera glides dynamically over the floor fog as the man grooves confidently in the left midground and the woman sways across the hazy space on the right, both holding cool closed-mouth smirks and locking eyes across the room while volumetric cyan and amber-gold beams shift in rich parallax.`

---

### Shot #22 — Dirty Over-the-Shoulder Eye-Lock on Zoya
* **Target File:** `shot_22.mp4`
* **Timeline:** `0:52.125 – 0:54.125` (`2.00s` — 4 Beats / `48f`)
* **Cue:** Bar 27 (*"Nazrein mili ab baat badhe"*)
* **Mode:** Start + End Frame (`22A` + `22B`) • **Ingredients (Step 4):** `@char_aryan`, `@char_zoya`

**Step 4 — Start Frame (`22A`):**
> `50mm eye-level dirty over-the-shoulder medium shot inside an intimate darkened upscale lounge-club bathed in cyan and electric magenta haze: the heavily out-of-focus dark silhouette of @char_aryan's left shoulder with a glint of gold bomber embroidery frames the far left foreground edge, while sharp focus locks across the smoky gap onto @char_zoya in the right-center frame (wearing her sparkling purple sequined corset top, black high-waisted trousers, silver hoop earrings, and stacked silver bangles, wavy dark hair glowing with magenta rim light) catching his eye with an intrigued, teasing closed-mouth smirk, about fifteen loosely spaced dark silhouettes blurred behind her.`

**Step 4 — End Frame (`22B`) — Ingredients:** `Start Frame 22A`, `@char_aryan`, `@char_zoya`
> `85mm eye-level tight over-the-shoulder shot sliding smoothly right and closer past @char_aryan's blurred dark shoulder on the far left edge from Start Frame 22A: @char_zoya now fills the right-center frame in razor-sharp focus, chin tilted subtly with a magnetic closed-mouth smirk and sparkling eyes locked directly toward him as electric magenta and cyan bokeh shimmer across her sequined corset and wavy dark hair.`

**Step 5 — Video Animation Prompt (Zero `@` Tags):**
> `Silky lateral gimbal slide moving right past the blurred dark foreground shoulder while pushing smoothly closer at natural 120 BPM speed: keeping her shoulders oriented forward with zero body turn, the woman subtly lifts her chin, gently tosses her wavy dark hair back, and holds a magnetic, teasing closed-mouth smirk locked across the smoky club as neon magenta and cyan bokeh drift in parallax.`

---

### Shot #23 — Aryan's Bass-Dropout Echo Delivery (Rap Lip-Sync #2)
* **Target File:** `shot_23.mp4` • **Enable Google Flow Audio/Dialogue**
* **Timeline:** `0:54.125 – 0:56.125` (`2.00s` — 4 Beats / `48f`)
* **Cue:** Bar 28 Bass-Dropout Echo (*"Naz-rein mi-li ab baat ba-dhe"*)
* **Mode:** Start Frame Only (`23A`) • **Ingredients (Step 4):** `@char_aryan`
* **Edit Note:** Keep at smooth `~1.0×` natural speed to match the atmospheric bass dropout.

**Step 4 — Start Frame (`23A`):**
> `85mm telephoto off-center close-up inside a darkened upscale lounge-club suspended in moody electric cyan mist: framed in the right third of the image in sharp chiaroscuro cyan and warm amber-gold rim light, @char_aryan (wearing his open black satin bomber jacket with gold sleeve embroidery, black t-shirt, layered silver chain necklaces, and tinted amber sunglasses) dips his chin subtly to peer intensely over the top rim of his amber sunglasses with lips slightly parted mid-lyric, dark moody bokeh and softly blurred silhouettes drifting in the negative space on the left.`

**Step 5 — Video Animation Prompt (Zero `@` Tags):**
> `Slow, hypnotic lateral telephoto drift moving smoothly left-to-right through drifting moody cyan mist at steady 120 BPM tempo: peering intently over the top rim of his amber sunglasses with cool, understated intensity, the man delivers a smooth, crisp 2-second Hindi rap line straight toward the camera, his lips clearly enunciating "Naz-rein mi-li ab baat ba-dhe" with subtle, controlled head motion as soft neon bokeh glows in the darkened club behind him.`

---

### Shot #24 — Aryan Cuts Through the Floor (Bass Slam — Rap Lip-Sync #3)
* **Target File:** `shot_24.mp4` • **Enable Google Flow Audio/Dialogue**
* **Timeline:** `0:56.125 – 0:58.125` (`2.00s` — 4 Beats / `48f`)
* **Cue:** Bar 29 Bass Slam (*"Te-re me-re beech mein kyun yeh kha-de"*)
* **Mode:** Start Frame Only (`24A`) • **Ingredients (Step 4):** `@char_aryan`

**Step 4 — Start Frame (`24A`):**
> `28mm slightly low-angle (10-degree upward) dynamic medium-wide tracking shot inside an intimate upscale lounge-club dancefloor erupting in thick swirling electric cyan and amber-gold haze: @char_aryan (wearing his open black satin bomber jacket with gold sleeve embroidery, black t-shirt, layered silver chain necklaces, and tinted amber sunglasses) is caught mid-stride cutting briskly forward between two dark foreground blurred silhouetted clubgoers framing the left and right edges, lips slightly parted mid-rap and one hand sweeping outward in a slick dismissive club gesture, about fifteen loosely spaced silhouetted dancers and bright cyan-magenta overhead laser beams slicing behind him.`

**Step 5 — Video Animation Prompt (Zero `@` Tags):**
> `Energetic handheld reverse tracking dolly pulling backward swiftly at upbeat 120 BPM club tempo: striding assertively straight forward through the glowing floor fog and weaving cleanly past two blurred silhouetted dancers at the frame edges, the man sweeps one hand outward dismissively and raps directly into the lens with punchy, rhythmic 2-second Hindi rap delivery, his lips clearly enunciating "Te-re me-re beech mein kyun yeh kha-de" as bright cyan and magenta laser beams flash overhead.`

---

### Shot #25 — Extreme Low-Angle Dutch-Tilt Rap Climax (Rap Lip-Sync #4)
* **Target File:** `shot_25.mp4` • **Enable Google Flow Audio/Dialogue**
* **Timeline:** `0:58.125 – 1:00.125` (`2.00s` — 4 Beats / `48f`)
* **Cue:** Bar 30 (*"Flow me-ra sick jai-se baa-tein te-ri"*)
* **Mode:** Start Frame Only (`25A`) • **Ingredients (Step 4):** `@char_aryan`

**Step 4 — Start Frame (`25A`):**
> `24mm extreme low-angle (22-degree upward) dynamic close-to-medium shot with a 15-degree Dutch tilt inside an intimate upscale lounge-club dancefloor filled with swirling cyan and warm amber-gold fog: towering slightly over the lens, @char_aryan (wearing his open black satin bomber jacket with gold sleeve embroidery, black t-shirt, layered silver chain necklaces, and tinted amber sunglasses) leans boldly forward mid-groove with lips slightly parted mid-rap and one hand raised near chest height in a sharp hip-hop beat accent, dramatic diagonal cyan and amber-gold laser beams cutting overhead beneath the glowing LED ceiling grid and about fifteen loosely spaced dark silhouetted clubgoers behind him.`

**Step 5 — Video Animation Prompt (Zero `@` Tags):**
> `Aggressive low-angle curved orbital whip-arc sweeping left-to-right with crisp beat-synced handheld energy at upbeat 120 BPM hip-hop tempo: leaning boldly over the lens, the man bounces his shoulders, accents the snare with sharp wrist flicks, and raps with effortless swagger in a crisp 2-second Hindi-English delivery, his lips clearly enunciating "Flow me-ra sick jai-se baa-tein te-ri" as slicing cyan and amber-gold laser beams pulse rapidly overhead.`

---

### Shot #26A — Extreme Macro Amber Sunglasses Laser Reflection (Optional New Macro — or Zero-Credit `shot_02.mp4`)
* **Target File:** `shot_26a.mp4` *(or use banked `shot_02.mp4` `00:00:01.96 – 00:00:02.96`, `24f` for `0` Flow credits)*
* **Timeline:** `1:00.125 – 1:01.125` (`1.00s` — 2 Beats / `24f`)
* **Cue:** Bar 31 b1–2 (*"Flow mera sick..."*)
* **Mode:** Start Frame Only (`26A`) • **Ingredients (Step 4):** `@char_aryan`

**Step 4 — Start Frame (`26A`):**
> `100mm extreme macro close-up tight across the bridge and tinted amber lenses of @char_aryan's sunglasses inside a dark neon nightclub: ultra-shallow depth of field where razor-sharp electric cyan, hot magenta, and warm gold club laser beams reflect vividly across the glossy amber glass lenses, subtle skin texture and sharp cyan rim light tracing his brow and nose bridge, moody dark haze softly blurred behind.`

**Step 5 — Video Animation Prompt (Zero `@` Tags):**
> `Rapid macro snap-drift gliding tightly across the glossy amber sunglasses lenses at full 120 BPM club speed: vivid electric cyan, magenta, and gold laser beams sweep and strobe dynamically across the reflective glass surface as the man delivers one sharp, confident micro head-nod right on the heavy kick beat.`

---

### Shot #26B — Zoya Laser-Void Hair-Toss (3-Hit Multi-Bank)
* **Target File:** `shot_26b.mp4`
* **Timeline:** `1:01.125 – 1:02.125` (`1.00s` — 2 Beats / `24f`)
* **Cue:** Bar 31 b3–4 (*"...jaise baatein teri (Yeah!)"*)
* **Mode:** Start Frame Only (`26B` — Continuous 3-Second Bank) • **Ingredients (Step 4):** `@char_zoya`, `@loc_void_lasers`
* **3-Hit Reserve Bank Allocation (`3 × 1.00s` / `24f` windows):**
  * **Window 1 (`00:00:00.00 – 00:00:01.00`, `24f`):** Act 3 `#26B` (`1:01.125 – 1:02.125`, *"...jaise baatein teri (Yeah!)"*)
  * **Window 2 (`00:00:01.00 – 00:00:02.00`, `24f`):** Chorus 2A/2B (*"Huh?"* vocal hit)
  * **Window 3 (`00:00:02.00 – 00:00:03.00`, `24f`):** Outro (`2:50.50`, *"Huh?"*)

**Step 4 — Start Frame (`26B`):**
> `50mm chest-up close-up with a subtle 10-degree Dutch tilt of @char_zoya inside @loc_void_lasers: framed against crisp V-shaped electric magenta and cyan laser beams slicing through pure dark haze behind her shoulders, @char_zoya (wearing her sparkling purple sequined corset top, silver hoop earrings, and stacked silver bangles) tilts her head playfully with one shoulder popped forward and a bright, cheeky closed-mouth smirk, sharp electric magenta rim light tracing her wavy dark hair and cheekbones.`

**Step 5 — Video Animation Prompt (Zero `@` Tags):**
> `Smooth, continuous telephoto push-in at steady 120 BPM club speed: the woman grooves effortlessly to the beat with a fluid shoulder sway, tossing her wavy dark hair back continuously while keeping her eyes locked on the lens with a playful, cheeky closed-mouth smirk as electric magenta and cyan laser beams shimmer behind her.`

---

### Shot #27 — Side-Profile Face-to-Face Orbital Glide (Bridge into Pre-Chorus 1)
* **Target File:** `shot_27.mp4`
* **Timeline:** `1:02.125 – 1:04.125` (`2.00s` — 4 Beats / `48f`)
* **Cue:** Bar 32 (*"Kaise main kahoon tu hi hai meri"* — bass cuts out at `1:03.50` into Pre-Chorus 1 *"Baahon mein aaja"*)
* **Mode:** Start + End Frame (`27A` + `27B`) • **Ingredients (Step 4):** `@char_aryan`, `@char_zoya`
* **Edit Note:** Keep at `1.0×` natural speed so the bass drop into Pre-Chorus 1 feels romantic and cinematic.

**Step 4 — Start Frame (`27A`):**
> `35mm eye-level clean side-profile wide two-shot inside an intimate upscale lounge-club dancefloor bathed in lush swirling cyan and electric magenta fog: positioned symmetrically in crisp profile facing each other across a narrow three-foot gap of glowing mist, @char_aryan (on the left, wearing his open black satin bomber jacket with gold sleeve embroidery, silver chains, and tinted amber sunglasses) steps smoothly forward toward @char_zoya (on the right, wearing her sparkling purple sequined corset top, black high-waisted trousers, silver hoop earrings, and stacked silver bangles, wavy dark hair backlit by electric magenta glow), both holding warm, magnetic closed-mouth smirks, about fifteen loosely spaced heavily blurred silhouetted clubgoers glowing softly behind them.`

**Step 4 — End Frame (`27B`) — Ingredients:** `Start Frame 27A`, `@char_aryan`, `@char_zoya`
> `50mm eye-level intimate tight two-shot orbiting 30 degrees forward and gliding closer from the exact lighting, mist, and club background of Start Frame 27A: @char_aryan and @char_zoya now stand close face-to-face at the center of the glowing cyan-magenta haze, eyes locked warmly on each other with electric chemistry and subtle closed-mouth smiles, warm amber-cyan rim light grazing his bomber embroidery and amber sunglasses while electric magenta light traces her sequined corset and wavy dark hair, soft dreamy neon bokeh behind them.`

**Step 5 — Video Animation Prompt (Zero `@` Tags):**
> `Smooth, romantic 30-degree orbital gimbal glide curving closer at natural club speed with zero abrupt body turns: starting from their crisp facing profiles across the glowing mist, the man closes the final step to the woman until they stand intimately face-to-face, both easing softly out of the club groove into a magnetic eye-lock with subtle closed-mouth smiles as lush cyan and magenta haze drifts gently around them.`
