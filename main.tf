provider "alicloud" {
    access_key = "${var.alicloud_access_key}"
    secret_key = "${var.alicloud_secret_key}"
}

resource "alicloud_ram_role" "roles" {
  count = "${length(var.rolenames)}"
  name = "${element(var.rolenames, count.index)}"
  description = "${element(var.descs, count.index)}"
  document = "${var.document}"
  force = true
}
