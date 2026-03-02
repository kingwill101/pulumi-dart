// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPortBinding {
  /// The ID of the host, which has the allocatee port.
  final pulumi.Input<String> hostId;
  /// A JSON string containing the binding profile information.
  final pulumi.Input<String> profile;
  /// A map of JSON strings containing additional details for this
  /// specific binding.
  final pulumi.Input<Map<String, String>> vifDetails;
  /// The VNIC type of the port binding.
  final pulumi.Input<String> vifType;
  /// VNIC type for the port.
  final pulumi.Input<String> vnicType;

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
      hostId: (map['hostId'] as String).input(),
      profile: (map['profile'] as String).input(),
      vifDetails: ((map['vifDetails'] as Map).cast<String, String>()).input(),
      vifType: (map['vifType'] as String).input(),
      vnicType: (map['vnicType'] as String).input(),
    );
  }
}

