output "roles" {
  description = "List of created users"
  value = "${alicloud_ram_role.roles.*.id}"
}
