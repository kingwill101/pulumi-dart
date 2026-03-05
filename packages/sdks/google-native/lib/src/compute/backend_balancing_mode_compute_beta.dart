/// Specifies how to determine whether the backend of a load balancer can handle additional traffic or is fully loaded. For usage guidelines, see Connection balancing mode. Backends must use compatible balancing modes. For more information, see Supported balancing modes and target capacity settings and Restrictions and guidance for instance groups. Note: Currently, if you use the API to configure incompatible balancing modes, the configuration might be accepted even though it has no impact and is ignored. Specifically, Backend.maxUtilization is ignored when Backend.balancingMode is RATE. In the future, this incompatible combination will be rejected.
enum BackendBalancingModeComputeBeta {
  connection("CONNECTION"),
  rate("RATE"),
  utilization("UTILIZATION");

  const BackendBalancingModeComputeBeta(this.wireValue);
  final String wireValue;

  static BackendBalancingModeComputeBeta fromValue(String value) {
    for (final item in BackendBalancingModeComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BackendBalancingModeComputeBeta value: $value');
  }
}

