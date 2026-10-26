import 'package:pulumi/pulumi.dart' as pulumi;

/// The IP mode for instances. Only applicable in the App Engine flexible environment.
enum NetworkInstanceIpMode implements pulumi.PulumiEnum<String> {
  instanceIpModeUnspecified("INSTANCE_IP_MODE_UNSPECIFIED"),
  external("EXTERNAL"),
  internal("INTERNAL");

  const NetworkInstanceIpMode(this.wireValue);
  @override
  final String wireValue;

  static NetworkInstanceIpMode fromValue(String value) {
    for (final item in NetworkInstanceIpMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkInstanceIpMode value: $value');
  }
}
