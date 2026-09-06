import 'package:pulumi/pulumi.dart' as pulumi;

/// The deployment on error behavior type. Possible values are LastSuccessful and SpecificDeployment.
enum OnErrorDeploymentType implements pulumi.PulumiEnum<String> {
  valueLastSuccessful("LastSuccessful"),
  valueSpecificDeployment("SpecificDeployment");

  const OnErrorDeploymentType(this.wireValue);
  @override
  final String wireValue;

  static OnErrorDeploymentType fromValue(String value) {
    for (final item in OnErrorDeploymentType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OnErrorDeploymentType value: $value');
  }
}
