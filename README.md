# nuudge Homebrew tap

Homebrew formulae for [nudge](https://github.com/nuudge/nudge), a coding agent
for your terminal and on the go.

## Usage

```sh
brew install nuudge/tap/nudge
```

Recent Homebrew versions refuse third-party taps until trusted — if you see
"untrusted tap", run `brew trust nuudge/tap` and install again.

Always use the full `nuudge/tap/nudge` name: a bare `brew install nudge`
resolves to an unrelated cask (macadmins' Nudge). Upgrade with
`brew upgrade nuudge/tap/nudge`.

The formula installs prebuilt release binaries (Apple Silicon macOS and x86_64
Linux) — no source build.

> **Note:** for the `nuudge/tap/nudge` short name to resolve, this repository
> must live at `github.com/nuudge/homebrew-tap`.
