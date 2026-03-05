/// The workload type of the subscription. It can be either Production or DevTest.
enum Workload {
  valueProduction("Production"),
  valueDevTest("DevTest");

  const Workload(this.wireValue);
  final String wireValue;

  static Workload fromValue(String value) {
    for (final item in Workload.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Workload value: $value');
  }
}

