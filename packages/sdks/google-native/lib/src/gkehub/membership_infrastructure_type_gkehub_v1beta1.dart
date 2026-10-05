import 'package:pulumi/pulumi.dart' as pulumi;

/// Optional. The infrastructure type this Membership is running on.
enum MembershipInfrastructureTypeGkehubV1beta1 implements pulumi.PulumiEnum<String> {
  infrastructureTypeUnspecified("INFRASTRUCTURE_TYPE_UNSPECIFIED"),
  onPrem("ON_PREM"),
  multiCloud("MULTI_CLOUD");

  const MembershipInfrastructureTypeGkehubV1beta1(this.wireValue);
  @override
  final String wireValue;

  static MembershipInfrastructureTypeGkehubV1beta1 fromValue(String value) {
    for (final item in MembershipInfrastructureTypeGkehubV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MembershipInfrastructureTypeGkehubV1beta1 value: $value');
  }
}
