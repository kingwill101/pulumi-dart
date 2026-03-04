// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_rollout_status_manifest_checkin_status_response.dart';
import 'extended_error_info_response.dart';

/// The status.
class CustomRolloutPropertiesStatusResponse {
  /// The completed regions.
  final pulumi.Input<List<String>>? completedRegions;

  /// The failed or skipped regions.
  final pulumi.Input<Map<String, ExtendedErrorInfoResponse>>?
  failedOrSkippedRegions;

  /// The manifest checkin status.
  final pulumi.Input<CustomRolloutStatusManifestCheckinStatusResponse>?
  manifestCheckinStatus;

  /// Creates a new [CustomRolloutPropertiesStatusResponse].
  /// [completedRegions] The completed regions.
  /// [failedOrSkippedRegions] The failed or skipped regions.
  /// [manifestCheckinStatus] The manifest checkin status.
  CustomRolloutPropertiesStatusResponse({
    this.completedRegions,
    this.failedOrSkippedRegions,
    this.manifestCheckinStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'completedRegions': ?completedRegions,
      'failedOrSkippedRegions':
          ?pulumi.Input.mapOptionalInputValue<
            Map<String, ExtendedErrorInfoResponse>,
            Map<String, Map<String, dynamic>>
          >(
            failedOrSkippedRegions,
            (value) =>
                pulumi.Input.encodeMapValues<
                  ExtendedErrorInfoResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'manifestCheckinStatus':
          ?pulumi.Input.mapOptionalInputValue<
            CustomRolloutStatusManifestCheckinStatusResponse,
            Map<String, dynamic>
          >(manifestCheckinStatus, (value) => value.toMap()),
    };
  }

  factory CustomRolloutPropertiesStatusResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return CustomRolloutPropertiesStatusResponse(
      completedRegions: (() {
        final guardedValue = map['completedRegions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      failedOrSkippedRegions: (() {
        final guardedValue = map['failedOrSkippedRegions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeMapValues<ExtendedErrorInfoResponse>(
            guardedValue,
            (value) => ExtendedErrorInfoResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      manifestCheckinStatus: (() {
        final guardedValue = map['manifestCheckinStatus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CustomRolloutStatusManifestCheckinStatusResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
