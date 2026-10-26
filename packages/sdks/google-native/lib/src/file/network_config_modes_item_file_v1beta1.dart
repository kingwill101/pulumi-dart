import 'package:pulumi/pulumi.dart' as pulumi;

enum NetworkConfigModesItemFileV1beta1 implements pulumi.PulumiEnum<String> {
  addressModeUnspecified("ADDRESS_MODE_UNSPECIFIED"),
  modeIpv4("MODE_IPV4");

  const NetworkConfigModesItemFileV1beta1(this.wireValue);
  @override
  final String wireValue;

  static NetworkConfigModesItemFileV1beta1 fromValue(String value) {
    for (final item in NetworkConfigModesItemFileV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkConfigModesItemFileV1beta1 value: $value');
  }
}
