# tests/api_tests/test_api_sample.py
import requests

def test_get_status():
    response = requests.get("https://httpbin.org/status/200")
    assert response.status_code == 200
