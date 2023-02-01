# Git LFS Buildkite Plugin

Install Git LFS before checkout.

## Example

Add the following to your `pipeline.yml`:

```yml
steps:
  - label: ":pipeline: Pipeline upload"
    command: /usr/bin/buildkite-agent pipeline upload
    plugins:
      - zhixuenlai/git-lfs#v1.0.0:
          version: '3.3.0'
```

## Configuration

### `version` (Required, string)

The version of the Git LFS to be installed, for example `3.3.0`. The available version can be found on the [GitHub releases page](https://github.com/git-lfs/git-lfs/releases).

## Developing

To validate the plugin.yml

```shell
docker-compose run --rm lint
```

To run the tests:

```shell
docker-compose run --rm tests
```

## Contributing

1. Fork the repo
2. Make the changes
3. Run the tests
4. Commit and push your changes
5. Send a pull request
