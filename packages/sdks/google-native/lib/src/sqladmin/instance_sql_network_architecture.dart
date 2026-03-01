enum InstanceSqlNetworkArchitecture {
  sqlNetworkArchitectureUnspecified("SQL_NETWORK_ARCHITECTURE_UNSPECIFIED"),
  newNetworkArchitecture("NEW_NETWORK_ARCHITECTURE"),
  oldNetworkArchitecture("OLD_NETWORK_ARCHITECTURE");

  const InstanceSqlNetworkArchitecture(this.value);
  final String value;

  static InstanceSqlNetworkArchitecture fromValue(String value) {
    for (final item in InstanceSqlNetworkArchitecture.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceSqlNetworkArchitecture value: $value');
  }
}

