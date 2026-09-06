import 'package:pulumi/pulumi.dart' as pulumi;

/// The indicator to enable multi-hop peering support.
enum BgpMultiHop implements pulumi.PulumiEnum<String> {
  valueTrue("True"),
  valueFalse("False");

  const BgpMultiHop(this.wireValue);
  @override
  final String wireValue;

  static BgpMultiHop fromValue(String value) {
    for (final item in BgpMultiHop.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BgpMultiHop value: $value');
  }
}
