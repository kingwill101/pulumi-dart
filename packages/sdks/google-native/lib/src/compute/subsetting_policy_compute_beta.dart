import 'package:pulumi/pulumi.dart' as pulumi;

enum SubsettingPolicyComputeBeta implements pulumi.PulumiEnum<String> {
  consistentHashSubsetting("CONSISTENT_HASH_SUBSETTING"),
  none("NONE");

  const SubsettingPolicyComputeBeta(this.wireValue);
  @override
  final String wireValue;

  static SubsettingPolicyComputeBeta fromValue(String value) {
    for (final item in SubsettingPolicyComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SubsettingPolicyComputeBeta value: $value');
  }
}
