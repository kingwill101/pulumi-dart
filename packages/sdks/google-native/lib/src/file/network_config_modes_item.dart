import 'package:pulumi/pulumi.dart' as pulumi;

enum NetworkConfigModesItem implements pulumi.PulumiEnum<String> {
  addressModeUnspecified("ADDRESS_MODE_UNSPECIFIED"),
  modeIpv4("MODE_IPV4");

  const NetworkConfigModesItem(this.wireValue);
  @override
  final String wireValue;

  static NetworkConfigModesItem fromValue(String value) {
    for (final item in NetworkConfigModesItem.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkConfigModesItem value: $value');
  }
}
