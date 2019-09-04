Rust WASM32 Nightly in Docker
====================

This repository use ubuntu 18.04 to build a working wasm build-ready environment and dockerized.

You can use the following command to pull this image which currently stores at [Docker Hub](https://hub.docker.com/jasongop/rust-wasm32)

```bash
docker pull jasongop/rust-wasm32:1.39.0-nightly
```

You can make this image as the base image to build your wasm project by using:

```Dockerfile
FROM rust-wasm32:1.39.0-nightly

...snip...
```

or:

```Dockerfile
FROM rust-wasm32:latest
```

Feel free to fill an [issue](https://github.com/deamwork/docker-rust-wasm32-nightly/issues) or submit your [pull request](https://github.com/deamwork/docker-rust-wasm32-nightly/pulls).

## License

This project and its file are under BSD-3-Clause open-source license.
