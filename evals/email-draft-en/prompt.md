---
name: email-draft-en
description: English email and English request; the draft is in English, with a placeholder for the missing date and the "nothing sent" closing.
tags: [bozza-email-con-ok, trigger, en]
runs: 3
max_turns: 10
timeout_seconds: 300
allowed_tools: [Read, Glob, Grep, Skill]
---

Can you draft a reply to this? Sign it "Tom".

Hi Tom,
we loved the workshop last month. Could you run it again for our new team in November? Let me know which dates work and the fee for 12 people.
Best,
Sarah
