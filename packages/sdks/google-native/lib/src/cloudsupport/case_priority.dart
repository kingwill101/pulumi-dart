import 'package:pulumi/pulumi.dart' as pulumi;

/// The priority of this case.
enum CasePriority implements pulumi.PulumiEnum<String> {
  priorityUnspecified("PRIORITY_UNSPECIFIED"),
  p0("P0"),
  p1("P1"),
  p2("P2"),
  p3("P3"),
  p4("P4");

  const CasePriority(this.wireValue);
  @override
  final String wireValue;

  static CasePriority fromValue(String value) {
    for (final item in CasePriority.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CasePriority value: $value');
  }
}
