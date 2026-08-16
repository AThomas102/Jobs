# Jobs

Job applications, experiences, and role CVs.

Workflow for agents is in [`AGENTS.md`](./AGENTS.md). Historical Word/PDF CVs stay under `CV files/`; new role CVs are Typst sources under `Applications/<role>/cv.typ`.

## Typst CV

Install [Typst](https://typst.app/) (Arch: `yay -S typst`). Compile a role CV from the repo root:

```bash
./scripts/build-cv.sh Applications/<role>/cv.typ
```

The PDF is written beside the `.typ` file and is gitignored. Upload the PDF; keep `forms.md` / `application.md` for paste-in fields.
