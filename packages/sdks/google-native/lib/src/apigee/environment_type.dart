import 'package:pulumi/pulumi.dart' as pulumi;

/// Optional. EnvironmentType selected for the environment.
enum EnvironmentType implements pulumi.PulumiEnum<String> {
  environmentTypeUnspecified("ENVIRONMENT_TYPE_UNSPECIFIED"),
  base("BASE"),
  intermediate("INTERMEDIATE"),
  comprehensive("COMPREHENSIVE");

  const EnvironmentType(this.wireValue);
  @override
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
