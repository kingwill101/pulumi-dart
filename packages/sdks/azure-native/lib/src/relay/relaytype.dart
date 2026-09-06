import 'package:pulumi/pulumi.dart' as pulumi;

/// WCF relay type.
enum Relaytype implements pulumi.PulumiEnum<String> {
  valueNetTcp("NetTcp"),
  valueHttp("Http");

  const Relaytype(this.wireValue);
  @override
  final String wireValue;

  static Relaytype fromValue(String value) {
    for (final item in Relaytype.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Relaytype value: $value');
  }
}
