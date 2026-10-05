import 'package:pulumi/pulumi.dart' as pulumi;

/// Describe whether the function is 1st Gen or 2nd Gen.
enum FunctionEnvironmentCloudfunctionsV2alpha implements pulumi.PulumiEnum<String> {
  environmentUnspecified("ENVIRONMENT_UNSPECIFIED"),
  gen1("GEN_1"),
  gen2("GEN_2");

  const FunctionEnvironmentCloudfunctionsV2alpha(this.wireValue);
  @override
  final String wireValue;

  static FunctionEnvironmentCloudfunctionsV2alpha fromValue(String value) {
    for (final item in FunctionEnvironmentCloudfunctionsV2alpha.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FunctionEnvironmentCloudfunctionsV2alpha value: $value');
  }
}
