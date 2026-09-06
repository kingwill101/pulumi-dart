import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of the group member.
enum GroupMemberType implements pulumi.PulumiEnum<String> {
  valueVirtualNetwork("VirtualNetwork"),
  valueSubnet("Subnet");

  const GroupMemberType(this.wireValue);
  @override
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
