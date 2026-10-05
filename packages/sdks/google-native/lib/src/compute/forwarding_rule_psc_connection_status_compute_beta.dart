import 'package:pulumi/pulumi.dart' as pulumi;

enum ForwardingRulePscConnectionStatusComputeBeta implements pulumi.PulumiEnum<String> {
  accepted("ACCEPTED"),
  closed("CLOSED"),
  needsAttention("NEEDS_ATTENTION"),
  pending("PENDING"),
  rejected("REJECTED"),
  statusUnspecified("STATUS_UNSPECIFIED");

  const ForwardingRulePscConnectionStatusComputeBeta(this.wireValue);
  @override
  final String wireValue;

  static ForwardingRulePscConnectionStatusComputeBeta fromValue(String value) {
    for (final item in ForwardingRulePscConnectionStatusComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ForwardingRulePscConnectionStatusComputeBeta value: $value');
  }
}
