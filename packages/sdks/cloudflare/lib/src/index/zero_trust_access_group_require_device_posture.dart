// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessGroupRequireDevicePosture {
  /// The ID of a device posture integration.
  final pulumi.Input<String> integrationUid;

  /// Creates a new [ZeroTrustAccessGroupRequireDevicePosture].
  /// [integrationUid] The ID of a device posture integration.
  const ZeroTrustAccessGroupRequireDevicePosture({
    required this.integrationUid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'integrationUid': integrationUid,
    };
  }

  factory ZeroTrustAccessGroupRequireDevicePosture.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessGroupRequireDevicePosture(
      integrationUid: pulumi.Input.fromValue(map['integrationUid'] as String),
    );
  }
}
