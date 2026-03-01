/// The workload type of the subscription. It can be either Production or DevTest.
enum Workload {
  valueProduction("Production"),
  valueDevTest("DevTest");

  const Workload(this.value);
  final String value;

  static Workload fromValue(String value) {
    for (final item in Workload.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Workload value: $value');
  }
}

