// ignore_for_file: unused_element, unnecessary_cast


class PortBinding {
  /// The ID of the host to allocate port on.
  final String? hostId;
  /// Custom data to be passed as `binding:profile`. Data
  /// must be passed as JSON.
  final String? profile;
  /// A map of JSON strings containing additional
  /// details for this specific binding.
  final Map<String, String>? vifDetails;
  /// The VNIC type of the port binding.
  final String? vifType;
  /// VNIC type for the port. Can either be `direct`,
  /// `direct-physical`, `macvtap`, `normal`, `baremetal` or `virtio-forwarder`.
  /// Default value is `normal`. It can be updated on unbound ports only.
  final String? vnicType;

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
      hostId: map['hostId'] == null ? null : map['hostId'] as String,
      profile: map['profile'] == null ? null : map['profile'] as String,
      vifDetails: map['vifDetails'] == null ? null : (map['vifDetails'] as Map).cast<String, String>(),
      vifType: map['vifType'] == null ? null : map['vifType'] as String,
      vnicType: map['vnicType'] == null ? null : map['vnicType'] as String,
    );
  }
}

