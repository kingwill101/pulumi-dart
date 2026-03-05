enum InstanceSqlNetworkArchitecture {
  sqlNetworkArchitectureUnspecified("SQL_NETWORK_ARCHITECTURE_UNSPECIFIED"),
  newNetworkArchitecture("NEW_NETWORK_ARCHITECTURE"),
  oldNetworkArchitecture("OLD_NETWORK_ARCHITECTURE");

  const InstanceSqlNetworkArchitecture(this.wireValue);
  final String wireValue;

  static InstanceSqlNetworkArchitecture fromValue(String value) {
    for (final item in InstanceSqlNetworkArchitecture.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceSqlNetworkArchitecture value: $value');
  }
}

