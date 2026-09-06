import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines whether to send email notifications from AMicrosoft Defender for Cloud to persons with specific RBAC roles on the subscription.
enum State implements pulumi.PulumiEnum<String> {
  passed("Passed"),
  failed("Failed"),
  skipped("Skipped"),
  unsupported("Unsupported"),
  on("On"),
  off("Off");

  const State(this.wireValue);
  @override
  final String wireValue;

  static State fromValue(String value) {
    for (final item in State.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown State value: $value');
  }
}
