// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessPolicyIncludeDevicePosture {
  /// The ID of a device posture integration.
  final pulumi.Input<String> integrationUid;

  /// Creates a new [AccessPolicyIncludeDevicePosture].
  /// [integrationUid] The ID of a device posture integration.
  const AccessPolicyIncludeDevicePosture({
    required this.integrationUid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'integrationUid': integrationUid,
    };
  }

  factory AccessPolicyIncludeDevicePosture.fromMap(Map<String, dynamic> map) {
    return AccessPolicyIncludeDevicePosture(
      integrationUid: pulumi.Input.fromValue(map['integrationUid'] as String),
    );
  }
}
