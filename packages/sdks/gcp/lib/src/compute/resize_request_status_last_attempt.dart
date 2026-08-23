// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resize_request_status_last_attempt_error.dart';

class ResizeRequestStatusLastAttempt {
  /// (Output)
  /// Fatal errors encountered during the queueing or provisioning phases of the ResizeRequest that caused the transition to the FAILED state. Contrary to the lastAttempt errors, this field is final and errors are never removed from here, as the ResizeRequest is not going to retry.
  /// Structure is documented below.
  final pulumi.Input<List<ResizeRequestStatusLastAttemptError>>? errors;

  /// Creates a new [ResizeRequestStatusLastAttempt].
  /// [errors] (Output)
  const ResizeRequestStatusLastAttempt({
    this.errors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errors': ?pulumi.Input.mapOptionalInputValue<List<ResizeRequestStatusLastAttemptError>, List<Map<String, dynamic>>>(errors, (value) => pulumi.Input.encodeList<ResizeRequestStatusLastAttemptError, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ResizeRequestStatusLastAttempt.fromMap(Map<String, dynamic> map) {
    return ResizeRequestStatusLastAttempt(
      errors: (() { final guardedValue = map['errors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResizeRequestStatusLastAttemptError>(guardedValue, (value) => ResizeRequestStatusLastAttemptError.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
