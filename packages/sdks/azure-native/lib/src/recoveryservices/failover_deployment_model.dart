import 'package:pulumi/pulumi.dart' as pulumi;

/// The failover deployment model.
enum FailoverDeploymentModel implements pulumi.PulumiEnum<String> {
  valueNotApplicable("NotApplicable"),
  valueClassic("Classic"),
  valueResourceManager("ResourceManager");

  const FailoverDeploymentModel(this.wireValue);
  @override
  final String wireValue;

  static FailoverDeploymentModel fromValue(String value) {
    for (final item in FailoverDeploymentModel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FailoverDeploymentModel value: $value');
  }
}
