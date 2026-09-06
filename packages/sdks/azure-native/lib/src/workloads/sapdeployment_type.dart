import 'package:pulumi/pulumi.dart' as pulumi;

/// The deployment type. Eg: SingleServer/ThreeTier
enum SAPDeploymentType implements pulumi.PulumiEnum<String> {
  singleServer("SingleServer"),
  threeTier("ThreeTier");

  const SAPDeploymentType(this.wireValue);
  @override
  final String wireValue;

  static SAPDeploymentType fromValue(String value) {
    for (final item in SAPDeploymentType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SAPDeploymentType value: $value');
  }
}
