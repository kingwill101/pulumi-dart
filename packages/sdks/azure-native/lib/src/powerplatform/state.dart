import 'package:pulumi/pulumi.dart' as pulumi;

/// lockbox configuration
enum State implements pulumi.PulumiEnum<String> {
  enabled("Enabled"),
  disabled("Disabled"),
  notConfigured("NotConfigured");

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
