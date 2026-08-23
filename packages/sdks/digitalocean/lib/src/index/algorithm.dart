enum Algorithm {
  roundRobin("round_robin"),
  leastConnections("least_connections");

  const Algorithm(this.wireValue);
  final String wireValue;

  static Algorithm fromValue(String value) {
    for (final item in Algorithm.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Algorithm value: $value');
  }
}
