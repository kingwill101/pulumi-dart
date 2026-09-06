import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies how the first party applications should be inter-operated with user's application.
enum InteropExecutionMode implements pulumi.PulumiEnum<String> {
  valueFirstPartyAppWithTests("firstPartyAppWithTests"),
  valueFirstPartyApp("firstPartyApp");

  const InteropExecutionMode(this.wireValue);
  @override
  final String wireValue;

  static InteropExecutionMode fromValue(String value) {
    for (final item in InteropExecutionMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InteropExecutionMode value: $value');
  }
}
