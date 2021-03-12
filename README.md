# sfneal/nginx-flask

[![Build Status](https://travis-ci.com/sfneal/nginx-flask.svg?branch=master&style=flat-square)](https://travis-ci.com/sfneal/nginx-flask)
[![Total Downloads](https://img.shields.io/docker/pulls/stephenneal/nginx-flask?style=flat-square)](https://hub.docker.com/r/stephenneal/nginx-flask)
[![Latest Version](https://img.shields.io/docker/v/stephenneal/nginx-flask?sort=semver&style=flat-square)](https://hub.docker.com/r/stephenneal/nginx-flask)

nginx-flask is a Nginx webserver for Python Flask applications that can be configured with a few environment variables

## Installation

Docker images can be pulled using the Docker CLI.

```bash
docker pull stephenneal/nginx-flask:1.19-alpine-v1
```

## Usage

Add a 'webserver' container for your Python Flask application. 

```yaml
webserver:
  image: stephenneal/nginx-flask:1.19-alpine-v1
  container_name: webserver
  ports:
    - 5000:4000
  environment:
    - service=api-media # Python Flask app container name
    - port=5000
  depends_on:
    - api-media # Python Flask app container name
  networks:
    - app-network
```

## Contributing

Please see [CONTRIBUTING](CONTRIBUTING.md) for details.

### Security

If you discover any security related issues, please email stephen.neal14@gmail.com instead of using the issue tracker.

## Credits

- [Stephen Neal](https://github.com/sfneal)
- [All Contributors](../../contributors)

## License

The MIT License (MIT). Please see [License File](LICENSE.md) for more information.
