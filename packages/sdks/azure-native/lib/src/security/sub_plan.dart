import 'package:pulumi/pulumi.dart' as pulumi;

/// The available sub plans
enum SubPlan implements pulumi.PulumiEnum<String> {
  p1("P1"),
  p2("P2");

  const SubPlan(this.wireValue);
  @override
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
