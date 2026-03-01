enum TrustScope {
  valueGlobalTransactions("GlobalTransactions"),
  valueServiceBroker("ServiceBroker");

  const TrustScope(this.value);
  final String value;

  static TrustScope fromValue(String value) {
    for (final item in TrustScope.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TrustScope value: $value');
  }
}

