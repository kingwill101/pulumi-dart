// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resize_request_status_last_attempt_error_error.dart';

class ResizeRequestStatusLastAttemptError {
  /// (Output)
  /// The array of errors encountered while processing this operation.
  /// Structure is documented below.
  final pulumi.Input<List<ResizeRequestStatusLastAttemptErrorError>>? errors;

  /// Creates a new [ResizeRequestStatusLastAttemptError].
  /// [errors] (Output)
  const ResizeRequestStatusLastAttemptError({
    this.errors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errors': ?pulumi.Input.mapOptionalInputValue<List<ResizeRequestStatusLastAttemptErrorError>, List<Map<String, dynamic>>>(errors, (value) => pulumi.Input.encodeList<ResizeRequestStatusLastAttemptErrorError, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ResizeRequestStatusLastAttemptError.fromMap(Map<String, dynamic> map) {
    return ResizeRequestStatusLastAttemptError(
      errors: (() { final guardedValue = map['errors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResizeRequestStatusLastAttemptErrorError>(guardedValue, (value) => ResizeRequestStatusLastAttemptErrorError.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
