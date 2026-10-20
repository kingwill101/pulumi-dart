import 'package:pulumi/pulumi.dart' as pulumi;

enum GlobalForwardingRulePscConnectionStatusComputeBeta implements pulumi.PulumiEnum<String> {
  accepted("ACCEPTED"),
  closed("CLOSED"),
  needsAttention("NEEDS_ATTENTION"),
  pending("PENDING"),
  rejected("REJECTED"),
  statusUnspecified("STATUS_UNSPECIFIED");

  const GlobalForwardingRulePscConnectionStatusComputeBeta(this.wireValue);
  @override
  final String wireValue;

  static GlobalForwardingRulePscConnectionStatusComputeBeta fromValue(String value) {
    for (final item in GlobalForwardingRulePscConnectionStatusComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GlobalForwardingRulePscConnectionStatusComputeBeta value: $value');
  }
}
