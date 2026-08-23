// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_resize_request_status_last_attempt_error_error.dart';

class RegionResizeRequestStatusLastAttemptError {
  /// (Output)
  /// The array of errors encountered while processing this operation.
  /// Structure is documented below.
  final pulumi.Input<List<RegionResizeRequestStatusLastAttemptErrorError>>? errors;

  /// Creates a new [RegionResizeRequestStatusLastAttemptError].
  /// [errors] (Output)
  const RegionResizeRequestStatusLastAttemptError({
    this.errors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errors': ?pulumi.Input.mapOptionalInputValue<List<RegionResizeRequestStatusLastAttemptErrorError>, List<Map<String, dynamic>>>(errors, (value) => pulumi.Input.encodeList<RegionResizeRequestStatusLastAttemptErrorError, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RegionResizeRequestStatusLastAttemptError.fromMap(Map<String, dynamic> map) {
    return RegionResizeRequestStatusLastAttemptError(
      errors: (() { final guardedValue = map['errors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RegionResizeRequestStatusLastAttemptErrorError>(guardedValue, (value) => RegionResizeRequestStatusLastAttemptErrorError.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
