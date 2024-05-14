# Usage

First, add your flux file to the `./flux/` directory on your host machine. It will be available inside the container.

Then execute the runner script:

```bash
docker exec -it metafix-runner ./bin/metafix-runner ./flux/[your-flux-file]
```
