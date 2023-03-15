## A quick way to generate certs for testing

### Usage

#### Docker Run
`docker run -v $(pwd)/certs:/data -e DOMAIN=some.local.domain tangowithfoxtrot/certgen:latest`

#### Docker Compose
```yaml
version: '3.3'
services:
  self-signed:
    image: tangowithfoxtrot/certgen:latest
    environment:
    - DOMAIN=some.local.domain
    volumes:
    - ./certs:/data
```