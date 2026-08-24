// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessApplicationPolicyIncludeDevicePosture {
  /// The ID of a device posture integration.
  final pulumi.Input<String> integrationUid;

  /// Creates a new [AccessApplicationPolicyIncludeDevicePosture].
  /// [integrationUid] The ID of a device posture integration.
  const AccessApplicationPolicyIncludeDevicePosture({
    required this.integrationUid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'integrationUid': integrationUid,
    };
  }

  factory AccessApplicationPolicyIncludeDevicePosture.fromMap(Map<String, dynamic> map) {
    return AccessApplicationPolicyIncludeDevicePosture(
      integrationUid: pulumi.Input.fromValue(map['integrationUid'] as String),
    );
  }
}
