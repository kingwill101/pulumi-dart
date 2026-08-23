// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesInterfaceVirtualPortParamsOpenVSwitch {
  /// Specifies the interface ID for the Open vSwitch virtual port parameters.
  final pulumi.Input<String>? interfaceId;
  /// Sets the profile ID for the Open vSwitch virtual port parameters.
  final pulumi.Input<String>? profileId;

  /// Creates a new [DomainDevicesInterfaceVirtualPortParamsOpenVSwitch].
  /// [interfaceId] Specifies the interface ID for the Open vSwitch virtual port parameters.
  /// [profileId] Sets the profile ID for the Open vSwitch virtual port parameters.
  const DomainDevicesInterfaceVirtualPortParamsOpenVSwitch({
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
      interfaceId: (() { final guardedValue = map['interfaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      profileId: (() { final guardedValue = map['profileId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
