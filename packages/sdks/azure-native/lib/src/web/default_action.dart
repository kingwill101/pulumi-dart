import 'package:pulumi/pulumi.dart' as pulumi;

/// Default action for scm access restriction if no rules are matched.
enum DefaultAction implements pulumi.PulumiEnum<String> {
  allow("Allow"),
  deny("Deny");

  const DefaultAction(this.wireValue);
  @override
  final String wireValue;

  static DefaultAction fromValue(String value) {
    for (final item in DefaultAction.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DefaultAction value: $value');
  }
}
