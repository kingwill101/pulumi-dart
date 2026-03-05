/// A list of administrative states which once set can override health probe so that Load Balancer will always forward new connections to backend, or deny new connections and reset existing connections.
enum LoadBalancerBackendAddressAdminState {
  valueNone("None"),
  valueUp("Up"),
  valueDown("Down");

  const LoadBalancerBackendAddressAdminState(this.wireValue);
  final String wireValue;

  static LoadBalancerBackendAddressAdminState fromValue(String value) {
    for (final item in LoadBalancerBackendAddressAdminState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LoadBalancerBackendAddressAdminState value: $value');
  }
}

