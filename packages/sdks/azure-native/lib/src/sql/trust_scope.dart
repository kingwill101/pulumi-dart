import 'package:pulumi/pulumi.dart' as pulumi;

enum TrustScope implements pulumi.PulumiEnum<String> {
  valueGlobalTransactions("GlobalTransactions"),
  valueServiceBroker("ServiceBroker");

  const TrustScope(this.wireValue);
  @override
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
