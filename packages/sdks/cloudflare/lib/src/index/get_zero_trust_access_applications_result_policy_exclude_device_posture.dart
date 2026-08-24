// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessApplicationsResultPolicyExcludeDevicePosture {
  /// The ID of a device posture integration.
  final pulumi.Input<String> integrationUid;

  /// Creates a new [GetZeroTrustAccessApplicationsResultPolicyExcludeDevicePosture].
  /// [integrationUid] The ID of a device posture integration.
  const GetZeroTrustAccessApplicationsResultPolicyExcludeDevicePosture({
    required this.integrationUid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'integrationUid': integrationUid,
    };
  }

  factory GetZeroTrustAccessApplicationsResultPolicyExcludeDevicePosture.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessApplicationsResultPolicyExcludeDevicePosture(
      integrationUid: pulumi.Input.fromValue(map['integrationUid'] as String),
    );
  }
}
