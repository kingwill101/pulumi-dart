/// The job agent identity type
enum JobAgentIdentityType {
  valueNone("None"),
  valueSystemAssigned("SystemAssigned"),
  valueUserAssigned("UserAssigned"),
  valueSystemAssignedUserAssigned("SystemAssignedUserAssigned");

  const JobAgentIdentityType(this.wireValue);
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

