enum TrustScope {
  valueGlobalTransactions("GlobalTransactions"),
  valueServiceBroker("ServiceBroker");

  const TrustScope(this.wireValue);
  final String wireValue;

  static TrustScope fromValue(String value) {
    for (final item in TrustScope.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TrustScope value: $value');
  }
}
