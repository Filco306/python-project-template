from src.run import hello_world


def test_hello():
    assert hello_world() == "Hello world!"
