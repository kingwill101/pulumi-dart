import 'package:pulumi/pulumi.dart' as pulumi;

/// The field indicating if Microsoft provides session ip addresses.
enum SessionAddressProvider implements pulumi.PulumiEnum<String> {
  valueMicrosoft("Microsoft"),
  valuePeer("Peer");

  const SessionAddressProvider(this.wireValue);
  @override
  final String wireValue;

  static SessionAddressProvider fromValue(String value) {
    for (final item in SessionAddressProvider.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SessionAddressProvider value: $value');
  }
}
