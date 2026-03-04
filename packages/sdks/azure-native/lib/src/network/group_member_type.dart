/// The type of the group member.
enum GroupMemberType {
  valueVirtualNetwork("VirtualNetwork"),
  valueSubnet("Subnet");

  const GroupMemberType(this.wireValue);
  final String wireValue;

  static GroupMemberType fromValue(String value) {
    for (final item in GroupMemberType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GroupMemberType value: $value');
  }
}
