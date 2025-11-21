# Inference

## Benefits

**Control** - design without dogma; your needs > their needs

**Freedom** - no "content violation" blockers; e.g. [Content that recreates the likeness of living public figures without their consent](https://openai.com/policies/creating-sora-videos-in-line-with-our-policies/)

**Privacy** - open-source means ownership; true zero data retention; no external threat

**Speed** - best available cloud computers for pennies; your time is precious

## Providers

[Runpod](https://www.runpod.io) is preferred for being cheap, easy, and ephemeral.

1. [Watch this so you get the general idea](https://youtu.be/uIVEZEVSWA4)
2. Add $10 credit to start your first ~20 hours of tinkering
3. Create your first pod with all the default options (A40 or RTX 5090, etc.)

Others worth comparing include [CoreWeave](https://www.coreweave.com), [Crusoe](https://www.crusoe.ai), [Lambda](https://lambda.ai), [Modal](https://modal.com), [Northflank](https://northflank.com), [Replicate](https://replicate.com), [Together](https://www.together.ai), [Vast](https://vast.ai), and [Vertex](https://cloud.google.com/vertex-ai).

## Presets

### [Ollama](https://ollama.com) for text

### [Comfy](https://comfy.org) for media

Presently, [Wan2.2](https://wan.video/research-and-open-source) is the most popular open source text-to-video (t2v) and image-to-video (i2v) model and will eventually be replaced by [Wan2.5](https://wan.video). Perfect for celebrity memes and pranking your family and friends.

Since a template doesn’t exist in the Runpod hub, I am converting YouTube tutorials into presets with a single command in the web terminal to make it as effortless as possible to start using.

Because we are using Runpod with the beefiest hardware for pennies per hour, we can use highram fp16 models with 10B+ parameters.

```bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/mattborn/inference/refs/heads/main/get.sh)"
```
