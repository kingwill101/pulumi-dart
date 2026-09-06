import 'package:pulumi/pulumi.dart' as pulumi;

/// Azure Networking ACL Action.
enum ACLAction implements pulumi.PulumiEnum<String> {
  valueAllow("Allow"),
  valueDeny("Deny");

  const ACLAction(this.wireValue);
  @override
  final String wireValue;

  static ACLAction fromValue(String value) {
    for (final item in ACLAction.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ACLAction value: $value');
  }
}
