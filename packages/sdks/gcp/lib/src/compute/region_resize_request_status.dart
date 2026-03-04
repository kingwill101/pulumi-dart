// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_resize_request_status_error.dart';
import 'region_resize_request_status_last_attempt.dart';

class RegionResizeRequestStatus {
  /// (Output)
  /// Fatal errors encountered during the queueing or provisioning phases of the ResizeRequest that caused the transition to the FAILED state. Contrary to the lastAttempt errors, this field is final and errors are never removed from here, as the ResizeRequest is not going to retry.
  /// Structure is documented below.
  final pulumi.Input<List<RegionResizeRequestStatusError>>? errors;

  /// (Output)
  /// Information about the last attempt to fulfill the request. The value is temporary since the ResizeRequest can retry, as long as it's still active and the last attempt value can either be cleared or replaced with a different error. Since ResizeRequest retries infrequently, the value may be stale and no longer show an active problem. The value is cleared when ResizeRequest transitions to the final state (becomes inactive). If the final state is FAILED the error describing it will be storred in the "error" field only.
  /// Structure is documented below.
  final pulumi.Input<List<RegionResizeRequestStatusLastAttempt>>? lastAttempts;

  /// Creates a new [RegionResizeRequestStatus].
  /// [errors] (Output)
  /// [lastAttempts] (Output)
  RegionResizeRequestStatus({this.errors, this.lastAttempts});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errors':
          ?pulumi.Input.mapOptionalInputValue<
            List<RegionResizeRequestStatusError>,
            List<Map<String, dynamic>>
          >(
            errors,
            (value) =>
                pulumi.Input.encodeList<
                  RegionResizeRequestStatusError,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'lastAttempts':
          ?pulumi.Input.mapOptionalInputValue<
            List<RegionResizeRequestStatusLastAttempt>,
            List<Map<String, dynamic>>
          >(
            lastAttempts,
            (value) =>
                pulumi.Input.encodeList<
                  RegionResizeRequestStatusLastAttempt,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory RegionResizeRequestStatus.fromMap(Map<String, dynamic> map) {
    return RegionResizeRequestStatus(
      errors: (() {
        final guardedValue = map['errors'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<RegionResizeRequestStatusError>(
            guardedValue,
            (value) => RegionResizeRequestStatusError.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      lastAttempts: (() {
        final guardedValue = map['lastAttempts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<RegionResizeRequestStatusLastAttempt>(
            guardedValue,
            (value) => RegionResizeRequestStatusLastAttempt.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
