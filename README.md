# local-webapps

Shared repository for small self-made WebApps served locally on Android using Termux.

## Layout

- `index.html` — launcher/home page
- `apps/` — one directory per WebApp
- `shared/` — common resources
- `serve.sh` — localhost-only web server

## Termux

```sh
pkg install git python
cd local-webapps
chmod +x serve.sh
./serve.sh
```

Open `http://localhost:8000/` in Chrome.

After changes are pushed to GitHub:

```sh
cd ~/local-webapps
git pull
```

## Adding an app

Create `apps/my-app/`, put its `index.html` and supporting files there, and add
a link from the root `index.html`.

Keep credentials, tokens, secrets and private device data out of Git. The
`.local/` directory is ignored and can hold local-only material.
