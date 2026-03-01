// ignore_for_file: unused_element, unnecessary_cast


class InterfaceVlan {
  /// The VLAN interface's private IPv4 address in CIDR notation.
  final String? ipamAddress;
  /// The VLAN's unique label. Must be between 1 and 64 characters.
  final String vlanLabel;

  /// Creates a new [InterfaceVlan].
  /// [ipamAddress] The VLAN interface's private IPv4 address in CIDR notation.
  /// [vlanLabel] The VLAN's unique label. Must be between 1 and 64 characters.
  InterfaceVlan({
    this.ipamAddress,
    required this.vlanLabel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipamAddress': ?ipamAddress,
      'vlanLabel': vlanLabel,
    };
  }

  factory InterfaceVlan.fromMap(Map<String, dynamic> map) {
    return InterfaceVlan(
      ipamAddress: map['ipamAddress'] == null ? null : map['ipamAddress'] as String,
      vlanLabel: map['vlanLabel'] as String,
    );
  }
}

