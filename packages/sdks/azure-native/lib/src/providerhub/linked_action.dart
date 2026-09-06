import 'package:pulumi/pulumi.dart' as pulumi;

/// The linked action.
enum LinkedAction implements pulumi.PulumiEnum<String> {
  notSpecified("NotSpecified"),
  blocked("Blocked"),
  validate("Validate"),
  enabled("Enabled");

  const LinkedAction(this.wireValue);
  @override
  final String wireValue;

  static LinkedAction fromValue(String value) {
    for (final item in LinkedAction.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LinkedAction value: $value');
  }
}
