import 'package:pulumi/pulumi.dart' as pulumi;

/// The state of read-only routing. If enabled, connections that have application intent set to readonly in their connection string may be routed to a readonly secondary replica in the same region. Not applicable to a Hyperscale database within an elastic pool.
enum DatabaseReadScale implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const DatabaseReadScale(this.wireValue);
  @override
  final String wireValue;

  static DatabaseReadScale fromValue(String value) {
    for (final item in DatabaseReadScale.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DatabaseReadScale value: $value');
  }
}
