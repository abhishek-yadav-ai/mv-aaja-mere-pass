# Club Ka Bwaal — Act 1 Production Prompts & Trim Sheet (`0:00.0 – 0:15.4`)

* **Tempo & Grid:** `125 BPM` (`0.48s` per beat | `0.96s` = 2 beats | `1.92s` = 4 beats | `2.88s` = 6 beats)
* **Total Act 1 Runtime:** `15.36s` (32 beats across 9 shots)
* **Pipeline Rules (Google Flow — Frames to Video):**
  * **Step 4 (Keyframe Images):** Always include character and location ingredient tags (`@char_aryan`, `@char_zoya`, `@loc_club_crowded`, `@loc_void_lasers`).
  * **Step 5 (Video Animation):** Use **zero `@` tags**—refer to characters generically (*the man*, *the woman*) so Flow interpolates smoothly from the locked pixels without resetting faces or outfits.

---

## Shot #01 — Aryan's Entrance
* **Timeline:** `0:00.0 – 0:01.9` (`1.92s` — 4 Beats)
* **Cue:** Intro Beat Drop
* **Mode:** Start + End Frame (`1A` + `1B`)
* **DOP Spec:** 24mm Low-Angle Wide → Foreground Sleeve Wipe • Pushing in • Low cyan floor fog + red-and-gold draped doorway

**Start Frame (`1A`) — Ingredients:** `@char_aryan`, `@loc_club_crowded`
> `24mm low-angle wide shot inside @loc_club_crowded: @char_aryan enters mid-stride past the ornate red-and-gold draped doorway and etched glass partition on the left, walking across the glossy dark dancefloor through thick low-lying cyan floor haze, adjusting his tinted amber sunglasses with one hand, wearing a black satin bomber jacket with gold sleeve embroidery and silver chain necklaces, confident closed-mouth smile, glowing cyan-and-magenta LED ceiling grid overhead.`

**End Frame (`1B`) — Ingredients:** `Start Frame 1A`, `@char_aryan`, `@loc_club_crowded`
> `24mm low-angle close wipe frame pushing in from Start Frame 1A inside @loc_club_crowded: @char_aryan has stridden close past the camera toward the right edge, his black satin bomber jacket sleeve with intricate gold embroidery sweeping across the foreground right edge as a motion-blurred wipe, while the glowing cyan-and-magenta LED ceiling grid and hazy dancefloor recede behind him.`

**Step 5 — Video Animation Prompt (Zero `@` Tags):**
> `Fast, smooth low-angle gimbal push-in at full 125 BPM club speed: the man strides briskly forward toward the camera through swirling low cyan floor fog, lowering his hand from his amber sunglasses and passing close by the lens so his gold-embroidered jacket sleeve wipes across the right edge of the frame.`

* **Editor Trim (`In – Out`):** `00:00:00.85` → `+1.92s` (`0:00.85 – 0:02.77`) — *skips static start and exits cleanly on the sleeve wipe.*

---

## Shot #02 — Subwoofer Pulse (Macro Insert)
* **Timeline:** `0:01.9 – 0:02.9` (`0.96s` — 2 Beats)
* **Cue:** Heavy Sub-Bass Thump
* **Mode:** Start Frame Only (`2A`)
* **Ingredients (Step 4):** None (Macro Insert)
* **DOP Spec:** 100mm Macro • Diagonal angle • Extreme shallow depth of field • Cyan & magenta rim reflections

**Start Frame (`2A`) — Keyframe Image Prompt:**
> `100mm macro extreme close-up of a matte black woven carbon-fiber club subwoofer speaker cone inside a dark nightclub: sharp electric cyan and magenta neon reflections gleam across the textured speaker surround and dust cap, moody club haze, ultra-shallow depth of field, high-contrast commercial cinematography.`

**Step 5 — Video Animation Prompt:**
> `Rapid macro snap-zoom in at full 125 BPM club speed: the black carbon-fiber subwoofer cone vibrates and pulses outward violently three times in sharp succession on the sub-bass hits while cyan and magenta neon highlights shimmer across the woven texture.`

* **Editor Trim (`In – Out`):** `00:00:01.00` → `+0.96s` (`0:01.00 – 0:01.96`)

---

## Shot #03 — Zoya's Table Challenge
* **Timeline:** `0:02.9 – 0:04.8` (`1.92s` — 4 Beats)
* **Cue:** Vocal Hook (*"Ooh yeah"*)
* **Mode:** Start + End Frame (`3A` + `3B`)
* **DOP Spec:** 35mm Medium-Wide (`3A`) → 35mm Medium Close-Up (`3B`) • Eye-level (`0°`) • Smooth gimbal push-in

**Start Frame (`3A`) — Ingredients:** `@char_zoya`, `@loc_club_crowded`
> `35mm medium-wide eye-level shot inside @loc_club_crowded: standing beside a small black high-top table holding two glowing cyan and magenta cocktails in front of the etched glass partition, @char_zoya raises her left hand in a playful two-finger temple salute toward the camera with an expressive smile, wearing a shimmering purple sequined corset top, black high-waisted trousers, silver hoop earrings, and stacked silver bangles, her wavy dark hair cascading over her shoulders, cyan-magenta haze and blurred party silhouettes behind her.`

**End Frame (`3B`) — Ingredients:** `Start Frame 3A`, `@char_zoya`, `@loc_club_crowded`
> `35mm medium close-up pushing slightly closer from the exact same angle and background of Start Frame 3A inside @loc_club_crowded: @char_zoya has lowered her left hand down to her side, looking directly into the camera with a confident closed-mouth smirk, both glowing cyan and magenta cocktails untouched on the high-top table on the left, etched glass partition and neon ceiling grid locked behind her.`

**Step 5 — Video Animation Prompt (Zero `@` Tags):**
> `Smooth, fast gimbal push-in from medium-wide to medium close-up at full 125 BPM club speed: the woman holds her playful two-finger temple salute briefly, then lowers her hand smoothly to her side and lands on a confident closed-mouth smirk as neon club lights and blurred silhouettes shimmer behind her.`

* **Editor Trim (`In – Out`):** `00:00:00.25` → `+1.92s` (`0:00.25 – 0:02.17`) — *locks Zoya's salute right onto the "Ooh yeah" vocal cue.*

---

## Shot #04 — Aryan Laser Void Reaction
* **Timeline:** `0:04.8 – 0:05.8` (`0.96s` — 2 Beats)
* **Cue:** Electronic Clap
* **Mode:** Start Frame Only (`4A` — 3-Second Multi-Hit Bank)
* **Ingredients (Step 4):** `@char_aryan`, `@loc_void_lasers`
* **DOP Spec:** 85mm Telephoto Tight Close-Up (chin to upper chest) • Eye-level (`0°`) • Fast snap-zoom in

**Start Frame (`4A`) — Keyframe Image Prompt:**
> `85mm telephoto tight close-up (chin to upper chest, leaving slight headroom for camera push-in) of @char_aryan inside @loc_void_lasers: sharp V-shaped electric cyan and magenta laser beams cut visibly through dark haze right behind his shoulders, while a razor-sharp cyan rim light outlines his jawline, tinted amber sunglasses, and silver chain necklaces, confident closed-mouth smirk, hands out of frame.`

**Step 5 — Video Animation Prompt (Zero `@` Tags):**
> `Fast, punchy telephoto push-in at full 125 BPM club speed: the man executes three sharp, rhythmic head-nods downward on the beat while keeping his shoulders squared, mouth closed, and eyes locked straight ahead as the cyan and magenta lasers shimmer softly behind him.`

* **Editor Trim (`In – Out`):** `00:00:00.85` → `+0.96s` (`0:00.85 – 0:01.81`)
* **Chorus 1 Reserve Bank:** `0:01.85 – 0:02.81` (`0.96s` secondary beat nod used in Act 2 Shot #14).

---

## Shot #05 — Aryan Clocks the Dare
* **Timeline:** `0:05.8 – 0:07.7` (`1.92s` — 4 Beats)
* **Cue:** Synth Riff Build
* **Mode:** Start + End Frame (`5A` + `5B`)
* **DOP Spec:** 24mm Medium-Wide (`5A`) → 35mm Medium Close-Up (`5B`) • Eye-level (`0°`) • Fast gimbal push-in

**Start Frame (`5A`) — Ingredients:** `@char_aryan`, `@loc_club_crowded`
> `24mm medium-wide shot at eye level inside @loc_club_crowded: @char_aryan stands near the etched glass partition and the high-top table with two glowing cyan and magenta cocktails, body angled slightly toward the dancefloor while looking off-camera to the left, wearing his black-and-gold bomber jacket, silver chains, and tinted amber sunglasses, red-and-gold draped doorway on the left and neon LED ceiling grid overhead.`

**End Frame (`5B`) — Ingredients:** `Start Frame 5A`, `@char_aryan`, `@loc_club_crowded`
> `35mm medium close-up pushing in from the exact same angle and background of Start Frame 5A inside @loc_club_crowded: @char_aryan has turned his head toward the camera, chin dipped slightly as he peers over his tinted amber sunglasses with a cool closed-mouth smirk, gold sleeve embroidery visible on his shoulder, etched glass partition, glowing cocktails, and neon LED ceiling grid locked behind him.`

**Step 5 — Video Animation Prompt (Zero `@` Tags):**
> `Fast, smooth gimbal push-in at full club speed from the medium-wide framing into the medium close-up: the man halts his step and turns his head cleanly toward the camera, peering over his amber sunglasses with a cool closed-mouth smirk as hazy club lights and blurred party silhouettes shimmer behind him.`

* **Editor Trim (`In – Out`):** `00:00:00.35` → `+1.92s` (`0:00.35 – 0:02.27`)

---

## Shot #06 — Zoya Pivots Toward the Dancefloor
* **Timeline:** `0:07.7 – 0:09.6` (`1.92s` — 4 Beats)
* **Cue:** Synth Pluck Build
* **Mode:** Start + End Frame (`6A` + `6B`)
* **DOP Spec:** 35mm Medium-Close • Eye-level (`0°`) • Fast gimbal pan-right & push-in

**Start Frame (`6A`) — Ingredients:** `@char_zoya`, `@loc_club_crowded`
> `35mm medium-close shot at eye level inside @loc_club_crowded: standing in front of the etched glass partition right beside the high-top table where both glowing cyan and magenta cocktails remain untouched, @char_zoya faces three-quarters toward the camera with her hand resting lightly on the table edge and a playful closed-mouth smirk, thick cyan-magenta haze and blurred backlit party silhouettes behind her.`

**End Frame (`6B`) — Ingredients:** `Start Frame 6A`, `@char_zoya`, `@loc_club_crowded`
> `35mm medium-close shot inside @loc_club_crowded matching the exact room, etched glass partition, and two glowing cocktails on the high-top table on the far left from Start Frame 6A: @char_zoya has walked several feet away into the right third of the frame, her torso and shoulders turned away from the glass partition toward the dancefloor on the right, glancing back over her right shoulder toward the camera with a teasing closed-mouth smirk, wavy dark hair flowing, blurred party silhouettes and cyan haze behind her.`

**Step 5 — Video Animation Prompt (Zero `@` Tags):**
> `Fast, smooth gimbal pan-right and push-in at full club speed from the starting pose beside the table to the over-the-shoulder look on the right: the woman turns away from the glass partition and strides briskly toward the cyan dancefloor haze while glancing back over her right shoulder with a teasing closed-mouth smirk, wavy hair swaying.`

* **Editor Trim (`In – Out`):** `00:00:00.80` → `+1.92s` (`0:00.80 – 0:02.72`)

---

## Shot #07 — Zoya Laser Void Point
* **Timeline:** `0:09.6 – 0:10.6` (`0.96s` — 2 Beats)
* **Cue:** Snare Roll
* **Mode:** Start Frame Only (`7A` — 3-Second Multi-Hit Bank)
* **Ingredients (Step 4):** `@char_zoya`, `@loc_void_lasers`
* **DOP Spec:** 35mm Chest-Up • Low `20°` upward • `25°` Dutch tilt • Aggressive crash-zoom

**Start Frame (`7A`) — Keyframe Image Prompt:**
> `35mm chest-up shot from a low 20-degree upward angle with a 25-degree Dutch tilt of @char_zoya inside @loc_void_lasers: framed against sharp V-shaped electric magenta and cyan laser beams cutting through dark haze behind her shoulders, @char_zoya pops one shoulder forward and points one index finger cleanly toward the camera lens with a bright closed-mouth grin, razor-sharp magenta rim lighting on her wavy dark hair and sequined corset.`

**Step 5 — Video Animation Prompt (Zero `@` Tags):**
> `Aggressive, rapid crash-zoom in at full 125 BPM club speed: the woman pulses forward three times in sharp rhythmic succession on the snare hits, popping her shoulder and pulsing her pointing hand subtly to the beat while keeping a bright closed-mouth grin and wavy hair bouncing, as the V-shaped magenta and cyan lasers shimmer behind her.`

* **Editor Trim (`In – Out`):** `00:00:00.35` → `+0.96s` (`0:00.35 – 0:01.31`)
* **Chorus 1 Reserve Bank:** `0:01.75 – 0:02.71` (`0.96s` secondary pulse used in Act 2 Shot #12).

---

## Shot #08 — DJ Crossfader Slam & Strobe
* **Timeline:** `0:10.6 – 0:12.5` (`1.92s` — 4 Beats)
* **Cue:** Vocal Drop (*"Let's go"*)
* **Mode:** Start Frame Only (`8A` — 3-Second Real-Time Velocity)
* **Ingredients (Step 4):** None (Macro Insert)
* **DOP Spec:** 24mm Overhead • `90°` bird's-eye top-down • Rapid `90°` barrel-roll whip

**Start Frame (`8A`) — Keyframe Image Prompt:**
> `24mm 90-degree bird's-eye top-down overhead close-up of a sleek black professional club DJ mixer console inside a dark booth: a stylishly dressed hand with a silver ring already grips the illuminated crossfader slider on the left side while glowing cyan and magenta LED level meters pulse across the decks, sharp electric blue rim lighting, shallow depth of field, high-contrast commercial cinematography.`

**Step 5 — Video Animation Prompt:**
> `Rapid 90-degree overhead barrel-roll camera whip at full 125 BPM club speed: the hand slams the crossfader slider swiftly from left to right, twists a glowing EQ dial, and taps a backlit performance pad in rapid rhythmic succession right as blinding electric blue strobes ignite across the console.`

* **Editor Trim (`In – Out`):** `00:00:00.35` → `+1.92s` (`0:00.35 – 0:02.27`) — *lands the pad tap right into the `0:01.75` blue strobe burst.*

---

## Shot #09 — Aryan's Pursuit Into the Haze
* **Timeline:** `0:12.5 – 0:15.4` (`2.88s` — 6 Beats)
* **Cue:** Pre-Chorus Build (*"Tum aur main, let's make it go"*)
* **Mode:** Start + End Frame (`9A` + `9B`)
* **DOP Spec:** 24mm Wide Cowboy (mid-thigh up) • Hip-level (`0°`) • High-speed reverse dolly

**Start Frame (`9A`) — Ingredients:** `@char_aryan`, `@loc_club_crowded`
> `24mm hip-level wide cowboy shot (mid-thigh up) inside @loc_club_crowded: @char_aryan is captured mid-stride walking briskly past the etched glass partition and the high-top table with two glowing cyan and magenta cocktails on the left, angled toward the cyan dancefloor haze on the right, his black-and-gold bomber jacket open in motion, focused closed-mouth smirk, blurred backlit party silhouettes and cyan-magenta LED ceiling grid in the background.`

**End Frame (`9B`) — Ingredients:** `Start Frame 9A`, `@char_aryan`, `@loc_club_crowded`
> `24mm hip-level wide cowboy shot inside @loc_club_crowded matching the exact room and lighting of Start Frame 9A, with the camera pulled back further onto the open dancefloor: @char_aryan has stridden several paces forward away from the high-top table and etched glass partition now receding behind him on the far left, advancing briskly through thick cyan and magenta floor haze with a focused closed-mouth smirk, blurred party silhouettes and neon ceiling grid stretching behind him.`

**Step 5 — Video Animation Prompt (Zero `@` Tags):**
> `High-speed hip-level reverse dolly tracking backward at full 125 BPM club speed: the man strides briskly forward away from the high-top table and glass partition into the glowing cyan and magenta dancefloor haze, his black bomber jacket flowing in motion with a focused closed-mouth smirk as neon ceiling lights and blurred party silhouettes streak past behind him.`

* **Editor Trim (`In – Out`):** `00:00:00.12` → `+2.88s` (`0:00.12 – 0:03.00`) — *cuts straight into the Chorus 1 bass drop at `0:15.4`.*