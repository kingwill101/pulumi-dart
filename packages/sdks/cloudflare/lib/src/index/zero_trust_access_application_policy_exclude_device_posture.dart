// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessApplicationPolicyExcludeDevicePosture {
  /// The ID of a device posture integration.
  final pulumi.Input<String> integrationUid;

  /// Creates a new [ZeroTrustAccessApplicationPolicyExcludeDevicePosture].
  /// [integrationUid] The ID of a device posture integration.
  const ZeroTrustAccessApplicationPolicyExcludeDevicePosture({
    required this.integrationUid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'integrationUid': integrationUid,
    };
  }

  factory ZeroTrustAccessApplicationPolicyExcludeDevicePosture.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessApplicationPolicyExcludeDevicePosture(
      integrationUid: pulumi.Input.fromValue(map['integrationUid'] as String),
    );
  }
}
