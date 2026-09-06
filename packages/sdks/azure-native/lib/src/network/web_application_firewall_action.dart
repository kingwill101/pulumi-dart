import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of Actions.
enum WebApplicationFirewallAction implements pulumi.PulumiEnum<String> {
  valueAllow("Allow"),
  valueBlock("Block"),
  valueLog("Log"),
  valueJSChallenge("JSChallenge");

  const WebApplicationFirewallAction(this.wireValue);
  @override
  final String wireValue;

  static WebApplicationFirewallAction fromValue(String value) {
    for (final item in WebApplicationFirewallAction.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WebApplicationFirewallAction value: $value');
  }
}
