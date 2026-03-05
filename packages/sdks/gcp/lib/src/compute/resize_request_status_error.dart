// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resize_request_status_error_error.dart';

class ResizeRequestStatusError {
  /// (Output)
  /// The array of errors encountered while processing this operation.
  /// Structure is documented below.
  final pulumi.Input<List<ResizeRequestStatusErrorError>>? errors;

  /// Creates a new [ResizeRequestStatusError].
  /// [errors] (Output)
  ResizeRequestStatusError({
    this.errors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errors': ?pulumi.Input.mapOptionalInputValue<List<ResizeRequestStatusErrorError>, List<Map<String, dynamic>>>(errors, (value) => pulumi.Input.encodeList<ResizeRequestStatusErrorError, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ResizeRequestStatusError.fromMap(Map<String, dynamic> map) {
    return ResizeRequestStatusError(
      errors: (() { final guardedValue = map['errors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResizeRequestStatusErrorError>(guardedValue, (value) => ResizeRequestStatusErrorError.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

