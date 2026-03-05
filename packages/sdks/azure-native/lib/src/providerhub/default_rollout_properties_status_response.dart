// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'default_rollout_status_manifest_checkin_status_response.dart';
import 'extended_error_info_response.dart';

/// The default rollout status.
class DefaultRolloutPropertiesStatusResponse {
  /// The completed regions.
  final pulumi.Input<List<String>>? completedRegions;
  /// The failed or skipped regions.
  final pulumi.Input<Map<String, ExtendedErrorInfoResponse>>? failedOrSkippedRegions;
  /// The manifest checkin status.
  final pulumi.Input<DefaultRolloutStatusManifestCheckinStatusResponse>? manifestCheckinStatus;
  /// The next traffic region.
  final pulumi.Input<String>? nextTrafficRegion;
  /// The next traffic region scheduled time.
  final pulumi.Input<String>? nextTrafficRegionScheduledTime;
  /// The subscription reregistration result.
  final pulumi.Input<String>? subscriptionReregistrationResult;

  /// Creates a new [DefaultRolloutPropertiesStatusResponse].
  /// [completedRegions] The completed regions.
  /// [failedOrSkippedRegions] The failed or skipped regions.
  /// [manifestCheckinStatus] The manifest checkin status.
  /// [nextTrafficRegion] The next traffic region.
  /// [nextTrafficRegionScheduledTime] The next traffic region scheduled time.
  /// [subscriptionReregistrationResult] The subscription reregistration result.
  DefaultRolloutPropertiesStatusResponse({
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
      'failedOrSkippedRegions': ?pulumi.Input.mapOptionalInputValue<Map<String, ExtendedErrorInfoResponse>, Map<String, Map<String, dynamic>>>(failedOrSkippedRegions, (value) => pulumi.Input.encodeMapValues<ExtendedErrorInfoResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'manifestCheckinStatus': ?pulumi.Input.mapOptionalInputValue<DefaultRolloutStatusManifestCheckinStatusResponse, Map<String, dynamic>>(manifestCheckinStatus, (value) => value.toMap()),
      'nextTrafficRegion': ?nextTrafficRegion,
      'nextTrafficRegionScheduledTime': ?nextTrafficRegionScheduledTime,
      'subscriptionReregistrationResult': ?subscriptionReregistrationResult,
    };
  }

  factory DefaultRolloutPropertiesStatusResponse.fromMap(Map<String, dynamic> map) {
    return DefaultRolloutPropertiesStatusResponse(
      completedRegions: (() { final guardedValue = map['completedRegions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      failedOrSkippedRegions: (() { final guardedValue = map['failedOrSkippedRegions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<ExtendedErrorInfoResponse>(guardedValue, (value) => ExtendedErrorInfoResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      manifestCheckinStatus: (() { final guardedValue = map['manifestCheckinStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefaultRolloutStatusManifestCheckinStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      nextTrafficRegion: (() { final guardedValue = map['nextTrafficRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nextTrafficRegionScheduledTime: (() { final guardedValue = map['nextTrafficRegionScheduledTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subscriptionReregistrationResult: (() { final guardedValue = map['subscriptionReregistrationResult']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

