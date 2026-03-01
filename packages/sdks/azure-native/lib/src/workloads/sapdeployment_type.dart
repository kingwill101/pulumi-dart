/// The deployment type. Eg: SingleServer/ThreeTier
enum SAPDeploymentType {
  singleServer("SingleServer"),
  threeTier("ThreeTier");

  const SAPDeploymentType(this.value);
  final String value;

  static SAPDeploymentType fromValue(String value) {
    for (final item in SAPDeploymentType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SAPDeploymentType value: $value');
  }
}

