import 'package:pulumi/pulumi.dart' as pulumi;

/// Protocol to be filtered on.
enum PcProtocol implements pulumi.PulumiEnum<String> {
  valueTCP("TCP"),
  valueUDP("UDP"),
  valueAny("Any");

  const PcProtocol(this.wireValue);
  @override
  final String wireValue;

  static PcProtocol fromValue(String value) {
    for (final item in PcProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PcProtocol value: $value');
  }
}
