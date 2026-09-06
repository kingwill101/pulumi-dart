import 'package:pulumi/pulumi.dart' as pulumi;

enum Protocol implements pulumi.PulumiEnum<String> {
  tCP("TCP"),
  uDP("UDP"),
  all("*");

  const Protocol(this.wireValue);
  @override
  final String wireValue;

  static Protocol fromValue(String value) {
    for (final item in Protocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Protocol value: $value');
  }
}
