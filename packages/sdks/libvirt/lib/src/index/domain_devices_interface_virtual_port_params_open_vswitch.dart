// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesInterfaceVirtualPortParamsOpenVSwitch {
  /// Specifies the interface ID for the Open vSwitch virtual port parameters.
  final String? interfaceId;
  /// Sets the profile ID for the Open vSwitch virtual port parameters.
  final String? profileId;

  /// Creates a new [DomainDevicesInterfaceVirtualPortParamsOpenVSwitch].
  /// [interfaceId] Specifies the interface ID for the Open vSwitch virtual port parameters.
  /// [profileId] Sets the profile ID for the Open vSwitch virtual port parameters.
  DomainDevicesInterfaceVirtualPortParamsOpenVSwitch({
    this.interfaceId,
    this.profileId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interfaceId': ?interfaceId,
      'profileId': ?profileId,
    };
  }

  factory DomainDevicesInterfaceVirtualPortParamsOpenVSwitch.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceVirtualPortParamsOpenVSwitch(
      interfaceId: map['interfaceId'] == null ? null : map['interfaceId'] as String,
      profileId: map['profileId'] == null ? null : map['profileId'] as String,
    );
  }
}

