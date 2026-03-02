// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'default_rollout_status_manifest_checkin_status.dart';
import 'extended_error_info.dart';

/// The default rollout status.
class DefaultRolloutPropertiesStatus {
  /// The completed regions.
  final pulumi.Input<List<String>>? completedRegions;
  /// The failed or skipped regions.
  final pulumi.Input<Map<String, ExtendedErrorInfo>>? failedOrSkippedRegions;
  /// The manifest checkin status.
  final pulumi.Input<DefaultRolloutStatusManifestCheckinStatus>? manifestCheckinStatus;
  /// The next traffic region.
  final pulumi.Input<String>? nextTrafficRegion;
  /// The next traffic region scheduled time.
  final pulumi.Input<String>? nextTrafficRegionScheduledTime;
  /// The subscription reregistration result.
  final pulumi.Input<String>? subscriptionReregistrationResult;

  /// Creates a new [DefaultRolloutPropertiesStatus].
  /// [completedRegions] The completed regions.
  /// [failedOrSkippedRegions] The failed or skipped regions.
  /// [manifestCheckinStatus] The manifest checkin status.
  /// [nextTrafficRegion] The next traffic region.
  /// [nextTrafficRegionScheduledTime] The next traffic region scheduled time.
  /// [subscriptionReregistrationResult] The subscription reregistration result.
  DefaultRolloutPropertiesStatus({
    this.completedRegions,
    this.failedOrSkippedRegions,
    this.manifestCheckinStatus,
    this.nextTrafficRegion,
    this.nextTrafficRegionScheduledTime,
    this.subscriptionReregistrationResult,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'completedRegions': ?completedRegions,
      'failedOrSkippedRegions': ?pulumi.Input.mapOptionalInputValue<Map<String, ExtendedErrorInfo>, Map<String, Map<String, dynamic>>>(failedOrSkippedRegions, (value) => pulumi.Input.encodeMapValues<ExtendedErrorInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'manifestCheckinStatus': ?pulumi.Input.mapOptionalInputValue<DefaultRolloutStatusManifestCheckinStatus, Map<String, dynamic>>(manifestCheckinStatus, (value) => value.toMap()),
      'nextTrafficRegion': ?nextTrafficRegion,
      'nextTrafficRegionScheduledTime': ?nextTrafficRegionScheduledTime,
      'subscriptionReregistrationResult': ?subscriptionReregistrationResult,
    };
  }

  factory DefaultRolloutPropertiesStatus.fromMap(Map<String, dynamic> map) {
    return DefaultRolloutPropertiesStatus(
      completedRegions: map['completedRegions'] == null ? null : ((map['completedRegions']! as List).cast<String>()).input(),
      failedOrSkippedRegions: map['failedOrSkippedRegions'] == null ? null : (pulumi.Input.decodeMapValues<ExtendedErrorInfo>(map['failedOrSkippedRegions']!, (value) => ExtendedErrorInfo.fromMap((value as Map).cast<String, dynamic>()))).input(),
      manifestCheckinStatus: map['manifestCheckinStatus'] == null ? null : (DefaultRolloutStatusManifestCheckinStatus.fromMap((map['manifestCheckinStatus']! as Map).cast<String, dynamic>())).input(),
      nextTrafficRegion: map['nextTrafficRegion'] == null ? null : (map['nextTrafficRegion']! as String).input(),
      nextTrafficRegionScheduledTime: map['nextTrafficRegionScheduledTime'] == null ? null : (map['nextTrafficRegionScheduledTime']! as String).input(),
      subscriptionReregistrationResult: map['subscriptionReregistrationResult'] == null ? null : (map['subscriptionReregistrationResult']! as String).input(),
    );
  }
}

