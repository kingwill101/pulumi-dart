// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessGroupsResultExcludeDevicePosture {
  /// The ID of a device posture integration.
  final pulumi.Input<String> integrationUid;

  /// Creates a new [GetZeroTrustAccessGroupsResultExcludeDevicePosture].
  /// [integrationUid] The ID of a device posture integration.
  const GetZeroTrustAccessGroupsResultExcludeDevicePosture({
    required this.integrationUid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'integrationUid': integrationUid,
    };
  }

  factory GetZeroTrustAccessGroupsResultExcludeDevicePosture.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessGroupsResultExcludeDevicePosture(
      integrationUid: pulumi.Input.fromValue(map['integrationUid'] as String),
    );
  }
}
