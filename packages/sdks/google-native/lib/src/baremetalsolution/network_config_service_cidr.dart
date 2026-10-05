import 'package:pulumi/pulumi.dart' as pulumi;

/// Service CIDR, if any.
enum NetworkConfigServiceCidr implements pulumi.PulumiEnum<String> {
  serviceCidrUnspecified("SERVICE_CIDR_UNSPECIFIED"),
  disabled("DISABLED"),
  high26("HIGH_26"),
  high27("HIGH_27"),
  high28("HIGH_28");

  const NetworkConfigServiceCidr(this.wireValue);
  @override
  final String wireValue;

  static NetworkConfigServiceCidr fromValue(String value) {
    for (final item in NetworkConfigServiceCidr.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkConfigServiceCidr value: $value');
  }
}
