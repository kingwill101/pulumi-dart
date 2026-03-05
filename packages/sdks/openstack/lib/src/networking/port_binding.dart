// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PortBinding {
  /// The ID of the host to allocate port on.
  final pulumi.Input<String>? hostId;
  /// Custom data to be passed as `binding:profile`. Data
  /// must be passed as JSON.
  final pulumi.Input<String>? profile;
  /// A map of JSON strings containing additional
  /// details for this specific binding.
  final pulumi.Input<Map<String, String>>? vifDetails;
  /// The VNIC type of the port binding.
  final pulumi.Input<String>? vifType;
  /// VNIC type for the port. Can either be `direct`,
  /// `direct-physical`, `macvtap`, `normal`, `baremetal` or `virtio-forwarder`.
  /// Default value is `normal`. It can be updated on unbound ports only.
  final pulumi.Input<String>? vnicType;

  /// Creates a new [PortBinding].
  /// [hostId] The ID of the host to allocate port on.
  /// [profile] Custom data to be passed as `binding:profile`. Data
  /// [vifDetails] A map of JSON strings containing additional
  /// [vifType] The VNIC type of the port binding.
  /// [vnicType] VNIC type for the port. Can either be `direct`,
  PortBinding({
    this.hostId,
    this.profile,
    this.vifDetails,
    this.vifType,
    this.vnicType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostId': ?hostId,
      'profile': ?profile,
      'vifDetails': ?vifDetails,
      'vifType': ?vifType,
      'vnicType': ?vnicType,
    };
  }

  factory PortBinding.fromMap(Map<String, dynamic> map) {
    return PortBinding(
      hostId: (() { final guardedValue = map['hostId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      profile: (() { final guardedValue = map['profile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vifDetails: (() { final guardedValue = map['vifDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vifType: (() { final guardedValue = map['vifType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vnicType: (() { final guardedValue = map['vnicType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

