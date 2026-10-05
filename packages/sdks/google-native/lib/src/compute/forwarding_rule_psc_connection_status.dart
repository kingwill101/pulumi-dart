import 'package:pulumi/pulumi.dart' as pulumi;

enum ForwardingRulePscConnectionStatus implements pulumi.PulumiEnum<String> {
  accepted("ACCEPTED"),
  closed("CLOSED"),
  needsAttention("NEEDS_ATTENTION"),
  pending("PENDING"),
  rejected("REJECTED"),
  statusUnspecified("STATUS_UNSPECIFIED");

  const ForwardingRulePscConnectionStatus(this.wireValue);
  @override
  final String wireValue;

  static ForwardingRulePscConnectionStatus fromValue(String value) {
    for (final item in ForwardingRulePscConnectionStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ForwardingRulePscConnectionStatus value: $value');
  }
}
