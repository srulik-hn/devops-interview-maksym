from lib import mod3


def test_mod3_on_div3():
    assert mod3(3) is True


def test_mod3_on_non_div3():
    assert mod3(4) is False
