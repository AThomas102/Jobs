# Jobs

Job applications, experiences, role CVs, and interview learning.

Workflow for agents is in [`AGENTS.md`](./AGENTS.md). Historical Word/PDF CVs stay under `CV files/`; new role CVs are Typst sources under `Applications/<role>/cv.typ`. Company feedback and self-reflection go under [`Interviews/`](./Interviews/) (verbatim, from [`Templates/interview.md`](./Templates/interview.md)) so later prep can target weak topics.

## Typst CV

Install [Typst](https://typst.app/) (Arch: `yay -S typst`). Compile a role CV from the repo root:

```bash
./scripts/build-cv.sh Applications/<role>/cv.typ
```

The PDF is written beside the `.typ` file and is gitignored. Upload the PDF; keep `forms.md` / `application.md` for paste-in fields.
