import pytest


class TestPrefect_cicd_example():
    """Tests for `prefect_cicd_example` module."""

    def test_one(self):
        assert True


@pytest.mark.integrations
def test_two():
    assert True
