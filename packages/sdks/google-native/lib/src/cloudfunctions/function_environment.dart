/// Describe whether the function is 1st Gen or 2nd Gen.
enum FunctionEnvironment {
  environmentUnspecified("ENVIRONMENT_UNSPECIFIED"),
  gen1("GEN_1"),
  gen2("GEN_2");

  const FunctionEnvironment(this.wireValue);
  final String wireValue;

  static FunctionEnvironment fromValue(String value) {
    for (final item in FunctionEnvironment.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FunctionEnvironment value: $value');
  }
}

