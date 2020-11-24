# Atlatis-Test
Test repo for Atlantis

### Config.yaml file example
create `config.yaml` at root
```
atlantis-url: https://aaa111aaa111.ngrok.io #from ngrok
gh-user: illuminate #github username
gh-token: 6e8ce4271293b688f1986f3e9a6748930ddab4fa #github access token with repositories permission
gh-webhook-secret: illuminate #secret for atlantis webhook
repo-allowlist: github.com/runatlantis/atlantis #Atlantis repositories
```

### Run
```
atlantis server -config config.yaml
```