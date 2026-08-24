// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessPolicyExcludeDevicePosture {
  /// The ID of a device posture integration.
  final pulumi.Input<String> integrationUid;

  /// Creates a new [AccessPolicyExcludeDevicePosture].
  /// [integrationUid] The ID of a device posture integration.
  const AccessPolicyExcludeDevicePosture({
    required this.integrationUid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'integrationUid': integrationUid,
    };
  }

  factory AccessPolicyExcludeDevicePosture.fromMap(Map<String, dynamic> map) {
    return AccessPolicyExcludeDevicePosture(
      integrationUid: pulumi.Input.fromValue(map['integrationUid'] as String),
    );
  }
}
