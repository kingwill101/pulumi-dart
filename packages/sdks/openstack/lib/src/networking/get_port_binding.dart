// ignore_for_file: unused_element, unnecessary_cast


class GetPortBinding {
  /// The ID of the host, which has the allocatee port.
  final String hostId;
  /// A JSON string containing the binding profile information.
  final String profile;
  /// A map of JSON strings containing additional details for this
  /// specific binding.
  final Map<String, String> vifDetails;
  /// The VNIC type of the port binding.
  final String vifType;
  /// VNIC type for the port.
  final String vnicType;

  /// Creates a new [GetPortBinding].
  /// [hostId] The ID of the host, which has the allocatee port.
  /// [profile] A JSON string containing the binding profile information.
  /// [vifDetails] A map of JSON strings containing additional details for this
  /// [vifType] The VNIC type of the port binding.
  /// [vnicType] VNIC type for the port.
  GetPortBinding({
    required this.hostId,
    required this.profile,
    required this.vifDetails,
    required this.vifType,
    required this.vnicType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostId': hostId,
      'profile': profile,
      'vifDetails': vifDetails,
      'vifType': vifType,
      'vnicType': vnicType,
    };
  }

  factory GetPortBinding.fromMap(Map<String, dynamic> map) {
    return GetPortBinding(
      hostId: map['hostId'] as String,
      profile: map['profile'] as String,
      vifDetails: (map['vifDetails'] as Map).cast<String, String>(),
      vifType: map['vifType'] as String,
      vnicType: map['vnicType'] as String,
    );
  }
}

