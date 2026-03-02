// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_rollout_status_manifest_checkin_status.dart';
import 'extended_error_info.dart';

/// The status.
class CustomRolloutPropertiesStatus {
  /// The completed regions.
  final pulumi.Input<List<String>>? completedRegions;
  /// The failed or skipped regions.
  final pulumi.Input<Map<String, ExtendedErrorInfo>>? failedOrSkippedRegions;
  /// The manifest checkin status.
  final pulumi.Input<CustomRolloutStatusManifestCheckinStatus>? manifestCheckinStatus;

  /// Creates a new [CustomRolloutPropertiesStatus].
  /// [completedRegions] The completed regions.
  /// [failedOrSkippedRegions] The failed or skipped regions.
  /// [manifestCheckinStatus] The manifest checkin status.
  CustomRolloutPropertiesStatus({
    this.completedRegions,
    this.failedOrSkippedRegions,
    this.manifestCheckinStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'completedRegions': ?completedRegions,
      'failedOrSkippedRegions': ?pulumi.Input.mapOptionalInputValue<Map<String, ExtendedErrorInfo>, Map<String, Map<String, dynamic>>>(failedOrSkippedRegions, (value) => pulumi.Input.encodeMapValues<ExtendedErrorInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'manifestCheckinStatus': ?pulumi.Input.mapOptionalInputValue<CustomRolloutStatusManifestCheckinStatus, Map<String, dynamic>>(manifestCheckinStatus, (value) => value.toMap()),
    };
  }

  factory CustomRolloutPropertiesStatus.fromMap(Map<String, dynamic> map) {
    return CustomRolloutPropertiesStatus(
      completedRegions: map['completedRegions'] == null ? null : ((map['completedRegions']! as List).cast<String>()).input(),
      failedOrSkippedRegions: map['failedOrSkippedRegions'] == null ? null : (pulumi.Input.decodeMapValues<ExtendedErrorInfo>(map['failedOrSkippedRegions']!, (value) => ExtendedErrorInfo.fromMap((value as Map).cast<String, dynamic>()))).input(),
      manifestCheckinStatus: map['manifestCheckinStatus'] == null ? null : (CustomRolloutStatusManifestCheckinStatus.fromMap((map['manifestCheckinStatus']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

