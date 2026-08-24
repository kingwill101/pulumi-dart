// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessApplicationPolicyExcludeDevicePosture {
  /// The ID of a device posture integration.
  final pulumi.Input<String> integrationUid;

  /// Creates a new [AccessApplicationPolicyExcludeDevicePosture].
  /// [integrationUid] The ID of a device posture integration.
  const AccessApplicationPolicyExcludeDevicePosture({
    required this.integrationUid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'integrationUid': integrationUid,
    };
  }

  factory AccessApplicationPolicyExcludeDevicePosture.fromMap(Map<String, dynamic> map) {
    return AccessApplicationPolicyExcludeDevicePosture(
      integrationUid: pulumi.Input.fromValue(map['integrationUid'] as String),
    );
  }
}
