import 'package:pulumi/pulumi.dart' as pulumi;

/// The workload type of the subscription. It can be either Production or DevTest.
enum Workload implements pulumi.PulumiEnum<String> {
  valueProduction("Production"),
  valueDevTest("DevTest");

  const Workload(this.wireValue);
  @override
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
