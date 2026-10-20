import 'package:pulumi/pulumi.dart' as pulumi;

/// Optional. Type of the private cloud. Defaults to STANDARD.
enum PrivateCloudType implements pulumi.PulumiEnum<String> {
  standard("STANDARD"),
  timeLimited("TIME_LIMITED"),
  stretched("STRETCHED");

  const PrivateCloudType(this.wireValue);
  @override
  final String wireValue;

  static PrivateCloudType fromValue(String value) {
    for (final item in PrivateCloudType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PrivateCloudType value: $value');
  }
}
