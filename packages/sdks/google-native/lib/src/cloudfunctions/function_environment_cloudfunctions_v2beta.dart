/// Describe whether the function is 1st Gen or 2nd Gen.
enum FunctionEnvironmentCloudfunctionsV2beta {
  environmentUnspecified("ENVIRONMENT_UNSPECIFIED"),
  gen1("GEN_1"),
  gen2("GEN_2");

  const FunctionEnvironmentCloudfunctionsV2beta(this.value);
  final String value;

  static FunctionEnvironmentCloudfunctionsV2beta fromValue(String value) {
    for (final item in FunctionEnvironmentCloudfunctionsV2beta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FunctionEnvironmentCloudfunctionsV2beta value: $value');
  }
}

