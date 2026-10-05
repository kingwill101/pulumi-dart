import 'package:pulumi/pulumi.dart' as pulumi;

enum GlobalForwardingRulePscConnectionStatus implements pulumi.PulumiEnum<String> {
  accepted("ACCEPTED"),
  closed("CLOSED"),
  needsAttention("NEEDS_ATTENTION"),
  pending("PENDING"),
  rejected("REJECTED"),
  statusUnspecified("STATUS_UNSPECIFIED");

  const GlobalForwardingRulePscConnectionStatus(this.wireValue);
  @override
  final String wireValue;

  static GlobalForwardingRulePscConnectionStatus fromValue(String value) {
    for (final item in GlobalForwardingRulePscConnectionStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GlobalForwardingRulePscConnectionStatus value: $value');
  }
}
