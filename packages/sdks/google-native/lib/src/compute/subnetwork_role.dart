/// The role of subnetwork. Currently, this field is only used when purpose = REGIONAL_MANAGED_PROXY. The value can be set to ACTIVE or BACKUP. An ACTIVE subnetwork is one that is currently being used for Envoy-based load balancers in a region. A BACKUP subnetwork is one that is ready to be promoted to ACTIVE or is currently draining. This field can be updated with a patch request.
enum SubnetworkRole {
  active("ACTIVE"),
  backup("BACKUP");

  const SubnetworkRole(this.wireValue);
  final String wireValue;

  static SubnetworkRole fromValue(String value) {
    for (final item in SubnetworkRole.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SubnetworkRole value: $value');
  }
}

