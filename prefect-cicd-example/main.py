"""Example for packaging Prefect Flows in a Docker image and deploying to Prefect Cloud via CICD."""
from prefect-cicd-example.cli.cli import cli

# pylint: disable=no-value-for-parameter
if __name__ == '__main__':
    cli()
