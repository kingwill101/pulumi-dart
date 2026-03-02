// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkVirtualPortParamsOpenVSwitch {
  /// Sets the interface ID for Open vSwitch virtual port parameters.
  final pulumi.Input<String>? interfaceId;
  /// Specifies the profile ID for Open vSwitch virtual port parameters.
  final pulumi.Input<String>? profileId;

  /// Creates a new [NetworkVirtualPortParamsOpenVSwitch].
  /// [interfaceId] Sets the interface ID for Open vSwitch virtual port parameters.
  /// [profileId] Specifies the profile ID for Open vSwitch virtual port parameters.
  NetworkVirtualPortParamsOpenVSwitch({
    this.interfaceId,
    this.profileId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interfaceId': ?interfaceId,
      'profileId': ?profileId,
    };
  }

  factory NetworkVirtualPortParamsOpenVSwitch.fromMap(Map<String, dynamic> map) {
    return NetworkVirtualPortParamsOpenVSwitch(
      interfaceId: map['interfaceId'] == null ? null : (map['interfaceId']! as String).input(),
      profileId: map['profileId'] == null ? null : (map['profileId']! as String).input(),
    );
  }
}

