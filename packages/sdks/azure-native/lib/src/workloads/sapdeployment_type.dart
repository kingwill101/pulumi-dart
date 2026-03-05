/// The deployment type. Eg: SingleServer/ThreeTier
enum SAPDeploymentType {
  singleServer("SingleServer"),
  threeTier("ThreeTier");

  const SAPDeploymentType(this.wireValue);
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

