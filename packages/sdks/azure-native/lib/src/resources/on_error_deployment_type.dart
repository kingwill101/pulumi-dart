/// The deployment on error behavior type. Possible values are LastSuccessful and SpecificDeployment.
enum OnErrorDeploymentType {
  valueLastSuccessful("LastSuccessful"),
  valueSpecificDeployment("SpecificDeployment");

  const OnErrorDeploymentType(this.wireValue);
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
