/// The failover deployment model.
enum FailoverDeploymentModel {
  valueNotApplicable("NotApplicable"),
  valueClassic("Classic"),
  valueResourceManager("ResourceManager");

  const FailoverDeploymentModel(this.wireValue);
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

