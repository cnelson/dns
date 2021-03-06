resource "aws_route53_zone" "login_toplevel" {
  name = "login.gov"

  tags {
    Project = "dns"
  }
}

output "login_ns" {
  value="${aws_route53_zone.login_toplevel.name_servers}"
}
