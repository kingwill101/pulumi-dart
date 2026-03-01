/// The job agent identity type
enum JobAgentIdentityType {
  valueNone("None"),
  valueSystemAssigned("SystemAssigned"),
  valueUserAssigned("UserAssigned"),
  valueSystemAssignedUserAssigned("SystemAssignedUserAssigned");

  const JobAgentIdentityType(this.value);
  final String value;

  static JobAgentIdentityType fromValue(String value) {
    for (final item in JobAgentIdentityType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JobAgentIdentityType value: $value');
  }
}

