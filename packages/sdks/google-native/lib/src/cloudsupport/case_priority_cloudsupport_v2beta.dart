/// The priority of this case.
enum CasePriorityCloudsupportV2beta {
  priorityUnspecified("PRIORITY_UNSPECIFIED"),
  p0("P0"),
  p1("P1"),
  p2("P2"),
  p3("P3"),
  p4("P4");

  const CasePriorityCloudsupportV2beta(this.wireValue);
  final String wireValue;

  static CasePriorityCloudsupportV2beta fromValue(String value) {
    for (final item in CasePriorityCloudsupportV2beta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CasePriorityCloudsupportV2beta value: $value');
  }
}
