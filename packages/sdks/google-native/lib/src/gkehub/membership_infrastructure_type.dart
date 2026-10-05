import 'package:pulumi/pulumi.dart' as pulumi;

/// Optional. The infrastructure type this Membership is running on.
enum MembershipInfrastructureType implements pulumi.PulumiEnum<String> {
  infrastructureTypeUnspecified("INFRASTRUCTURE_TYPE_UNSPECIFIED"),
  onPrem("ON_PREM"),
  multiCloud("MULTI_CLOUD");

  const MembershipInfrastructureType(this.wireValue);
  @override
  final String wireValue;

  static MembershipInfrastructureType fromValue(String value) {
    for (final item in MembershipInfrastructureType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MembershipInfrastructureType value: $value');
  }
}
