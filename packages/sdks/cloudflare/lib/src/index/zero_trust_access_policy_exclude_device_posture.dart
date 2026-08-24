// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessPolicyExcludeDevicePosture {
  /// The ID of a device posture integration.
  final pulumi.Input<String> integrationUid;

  /// Creates a new [ZeroTrustAccessPolicyExcludeDevicePosture].
  /// [integrationUid] The ID of a device posture integration.
  const ZeroTrustAccessPolicyExcludeDevicePosture({
    required this.integrationUid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'integrationUid': integrationUid,
    };
  }

  factory ZeroTrustAccessPolicyExcludeDevicePosture.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessPolicyExcludeDevicePosture(
      integrationUid: pulumi.Input.fromValue(map['integrationUid'] as String),
    );
  }
}
