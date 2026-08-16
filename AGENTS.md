This repo is for generating applications and filling forms for job applications.
The following directories describe all the required info about the applicant:
CV files (historical originals — Word/PDF archive)
Applications (including previous applications for reference; current role CVs are `cv.typ`)

All future applications and forms should be filled using info available about 
the candidate from this repo. 
NEVER hallucinate or make up information about the candidate.

# How to create an application #
A job application should have at least the following files:
job_description.md
forms.md

And once completed it will also include:
application.md
cv.typ (role-tailored Typst CV; see CV (Typst) below)

The forms.md shows the forms required to be filled in for the given application.
Each form entry in forms.md must include two parts:
1. **Context** — verbatim copy of any instructions, requirements, or constraints for that form (from the job advert, application portal, or user). Do not reword context.
2. **Response** — the completed form content ready to paste into the application.

When the user or job advert adds information about a form, ALWAYS copy it verbatim into the Context section of the relevant form in forms.md before updating the Response.

An application.md is the final result for each application. This shows in final 
result of the application IE the completed application forms from forms.md.
If an Application.md does not exist start by deriving it from the template at
Templates/application.md

All the other files under each application directory in Applications/ can be
used as a style guide on how to fill out this current application.

If there is not enough information about the candidate available to fill out a
given form, stop and notify the user.

If there is only a little information about a form requirement, keep it brief, so it is obvious to the user that more information is needed there.

# Improving #
If the user provides a new experience/technical ability, ALWAYS maintain a verbatim copy of this in the directory Experiences/. This is so future agents refer back to this. Never put reworded information in the CV files or Experiences/ directories.

NEVER EVER edit old completed applications. They are just for reference.

# Testing

- Tests must assert **intended** behaviour, not “whatever the code currently does.”
- If a test fails, **report the failure** and diagnose (bad data vs code bug vs wrong intended assertion) before changing production code.
- **Never** silently loosen, rewrite, or delete assertions to match broken behaviour.
- We should **never** match broken behaviour.

If the user provides new instructions about how to improve the workflow, you may edit this AGENTS.md file. Although only ever do this if you are sure this is an improvement.
# Documentation #
All scripts, templates, and reusable helpers MUST use clean, concise Google-style docstrings (or the closest equivalent for that language).

Required shape:
- One-line summary first.
- Optional short description only when the summary is not enough.
- `Args:` / `Returns:` / `Raises:` (or language-equivalent) when there are parameters, outputs, or failure modes.
- Types live in annotations (or language-equivalent signatures) — do not restate them in the docstring.
- No narrative fluff, restated signatures, or obvious commentary.

This applies to Typst helpers (`Templates/`), shell scripts (`scripts/`), and any future Python or other code in this repo.

# Style

Always use British English spelling of words, if american English is used always correct to British English in the current application submission forms.
Be as concise as possible when you can. Try to follow the STAR methodology:
Situation: What was going on in the scene when this event took place?
Task: What was your responsibility? What did you own?
Action: What did you do?
Result: What did you accomplish? (Quantify it!)

Avoid, except when absolutely necessary, repetition in 3s, this makes it very clearly written by AI, e.g:
Manual generation was slow, inconsistent, and difficult to trace across releases.
 
# Corrections #
Be careful when corrections are requested by the user that only the area of required change is edited and other locations are not accidentally changed. This is because the user will be making changes to the documents at the same time as an agent.

Always go over the provided forms once again after completing your task. This is to check for unnecessary verbosity and grammar or spelling checks.

# Formatting #
Ensure each point is always split up into sharp bullet point sections for things like employment history.

# CV (Typst) #
- Role CVs: `Applications/<role>/cv.typ` importing `Templates/cv/template.typ`
- Build: `./scripts/build-cv.sh Applications/<role>/cv.typ` (uses system `typst`, e.g. from yay)
- Upload the PDF; keep `forms.md` / `application.md` for paste-in fields
- `Experiences/` stays verbatim notes only
