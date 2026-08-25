// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resize_request_status_error_error_error_detail.dart';

class ResizeRequestStatusErrorError {
  /// (Output)
  /// The error type identifier for this error.
  final pulumi.Input<String?>? code;
  /// (Output)
  /// An array of messages that contain the error details. There is a set of defined message types to use for providing details.The syntax depends on the error code. For example, QuotaExceededInfo will have details when the error code is QUOTA_EXCEEDED.
  /// Structure is documented below.
  final pulumi.Input<List<ResizeRequestStatusErrorErrorErrorDetail>?>? errorDetails;
  /// (Output)
  /// Indicates the field in the request that caused the error. This property is optional.
  final pulumi.Input<String?>? location;
  /// (Output)
  /// The localized error message in the above locale.
  final pulumi.Input<String?>? message;

  /// Creates a new [ResizeRequestStatusErrorError].
  /// [code] (Output)
  /// [errorDetails] (Output)
  /// [location] (Output)
  /// [message] (Output)
  const ResizeRequestStatusErrorError({
    this.code,
    this.errorDetails,
    this.location,
    this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'errorDetails': ?pulumi.Input.mapOptionalInputValue<List<ResizeRequestStatusErrorErrorErrorDetail>, List<Map<String, dynamic>>>(errorDetails, (value) => pulumi.Input.encodeList<ResizeRequestStatusErrorErrorErrorDetail, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'message': ?message,
    };
  }

  factory ResizeRequestStatusErrorError.fromMap(Map<String, dynamic> map) {
    return ResizeRequestStatusErrorError(
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      errorDetails: (() { final guardedValue = map['errorDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResizeRequestStatusErrorErrorErrorDetail>(guardedValue, (value) => ResizeRequestStatusErrorErrorErrorDetail.fromMap((value as Map).cast<String, dynamic>()))); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
