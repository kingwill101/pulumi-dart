import 'package:pulumi/pulumi.dart' as pulumi;

/// A code that correspond to one type of user-facing message.
enum InstanceMessageCode implements pulumi.PulumiEnum<String> {
  codeUnspecified("CODE_UNSPECIFIED"),
  zoneDistributionUnbalanced("ZONE_DISTRIBUTION_UNBALANCED");

  const InstanceMessageCode(this.wireValue);
  @override
  final String wireValue;

  static InstanceMessageCode fromValue(String value) {
    for (final item in InstanceMessageCode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceMessageCode value: $value');
  }
}
