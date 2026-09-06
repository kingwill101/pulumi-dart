import 'package:pulumi/pulumi.dart' as pulumi;

/// The job agent identity type
enum JobAgentIdentityType implements pulumi.PulumiEnum<String> {
  valueNone("None"),
  valueSystemAssigned("SystemAssigned"),
  valueUserAssigned("UserAssigned"),
  valueSystemAssignedUserAssigned("SystemAssignedUserAssigned");

  const JobAgentIdentityType(this.wireValue);
  @override
  final String wireValue;

  static JobAgentIdentityType fromValue(String value) {
    for (final item in JobAgentIdentityType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JobAgentIdentityType value: $value');
  }
}
