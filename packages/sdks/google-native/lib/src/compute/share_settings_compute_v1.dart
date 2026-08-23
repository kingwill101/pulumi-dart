// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'share_settings_share_type_compute_v1.dart';

/// The share setting for reservations and sole tenancy node groups.
class ShareSettingsComputeV1 {
  /// A map of project id and project config. This is only valid when share_type's value is SPECIFIC_PROJECTS.
  final pulumi.Input<Map<String, String>>? projectMap;
  /// Type of sharing for this shared-reservation
  final pulumi.Input<ShareSettingsShareTypeComputeV1>? shareType;

  /// Creates a new [ShareSettingsComputeV1].
  /// [projectMap] A map of project id and project config. This is only valid when share_type's value is SPECIFIC_PROJECTS.
  /// [shareType] Type of sharing for this shared-reservation
  const ShareSettingsComputeV1({
    this.projectMap,
    this.shareType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'projectMap': ?projectMap,
      'shareType': ?pulumi.Input.mapOptionalInputValue<ShareSettingsShareTypeComputeV1, String>(shareType, (value) => value.wireValue),
    };
  }

  factory ShareSettingsComputeV1.fromMap(Map<String, dynamic> map) {
    return ShareSettingsComputeV1(
      projectMap: (() { final guardedValue = map['projectMap']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      shareType: (() { final guardedValue = map['shareType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ShareSettingsShareTypeComputeV1.fromValue(guardedValue as String)); })(),
    );
  }
}
