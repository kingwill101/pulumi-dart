// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_resize_request_status_last_attempt_error_error_error_detail.dart';

class RegionResizeRequestStatusLastAttemptErrorError {
  /// (Output)
  /// The error type identifier for this error.
  final pulumi.Input<String>? code;
  /// (Output)
  /// An array of messages that contain the error details. There is a set of defined message types to use for providing details.The syntax depends on the error code. For example, QuotaExceededInfo will have details when the error code is QUOTA_EXCEEDED.
  /// Structure is documented below.
  final pulumi.Input<List<RegionResizeRequestStatusLastAttemptErrorErrorErrorDetail>>? errorDetails;
  /// (Output)
  /// Indicates the field in the request that caused the error. This property is optional.
  final pulumi.Input<String>? location;
  /// (Output)
  /// The localized error message in the above locale.
  final pulumi.Input<String>? message;

  /// Creates a new [RegionResizeRequestStatusLastAttemptErrorError].
  /// [code] (Output)
  /// [errorDetails] (Output)
  /// [location] (Output)
  /// [message] (Output)
  RegionResizeRequestStatusLastAttemptErrorError({
    this.code,
    this.errorDetails,
    this.location,
    this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'errorDetails': ?pulumi.Input.mapOptionalInputValue<List<RegionResizeRequestStatusLastAttemptErrorErrorErrorDetail>, List<Map<String, dynamic>>>(errorDetails, (value) => pulumi.Input.encodeList<RegionResizeRequestStatusLastAttemptErrorErrorErrorDetail, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'message': ?message,
    };
  }

  factory RegionResizeRequestStatusLastAttemptErrorError.fromMap(Map<String, dynamic> map) {
    return RegionResizeRequestStatusLastAttemptErrorError(
      code: map['code'] == null ? null : (map['code']! as String).input(),
      errorDetails: map['errorDetails'] == null ? null : (pulumi.Input.decodeList<RegionResizeRequestStatusLastAttemptErrorErrorErrorDetail>(map['errorDetails']!, (value) => RegionResizeRequestStatusLastAttemptErrorErrorErrorDetail.fromMap((value as Map).cast<String, dynamic>()))).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      message: map['message'] == null ? null : (map['message']! as String).input(),
    );
  }
}

