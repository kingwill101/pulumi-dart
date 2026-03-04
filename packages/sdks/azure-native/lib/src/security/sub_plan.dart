/// The available sub plans
enum SubPlan {
  valueP1("P1"),
  valueP2("P2");

  const SubPlan(this.wireValue);
  final String wireValue;

  static SubPlan fromValue(String value) {
    for (final item in SubPlan.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SubPlan value: $value');
  }
}
