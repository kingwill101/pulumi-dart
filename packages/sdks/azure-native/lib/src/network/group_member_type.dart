/// The type of the group member.
enum GroupMemberType {
  valueVirtualNetwork("VirtualNetwork"),
  valueSubnet("Subnet");

  const GroupMemberType(this.value);
  final String value;

  static GroupMemberType fromValue(String value) {
    for (final item in GroupMemberType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GroupMemberType value: $value');
  }
}

