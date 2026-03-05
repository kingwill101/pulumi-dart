/// Optional. EnvironmentType selected for the environment.
enum EnvironmentType {
  environmentTypeUnspecified("ENVIRONMENT_TYPE_UNSPECIFIED"),
  base("BASE"),
  intermediate("INTERMEDIATE"),
  comprehensive("COMPREHENSIVE");

  const EnvironmentType(this.wireValue);
  final String wireValue;

  static EnvironmentType fromValue(String value) {
    for (final item in EnvironmentType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnvironmentType value: $value');
  }
}

