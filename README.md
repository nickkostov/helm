# helm
Repository containing guidelines for helm

## How to generate template: 

```bash
helm create mychartname
```
## Gets user provided values

```bash
helm get values RELEASE_NAME [flags]
```

# NB:
Do not template namespace in chart. Not an acceptable value.