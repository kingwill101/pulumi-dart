// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'validation_check_result_response.dart';

/// ValidationCheckStatus defines the detailed validation check status.
class ValidationCheckStatusResponse {
  /// Individual checks which failed as part of the Preflight check execution.
  final pulumi.Input<List<ValidationCheckResultResponse>> result;

  /// Creates a new [ValidationCheckStatusResponse].
  /// [result] Individual checks which failed as part of the Preflight check execution.
  const ValidationCheckStatusResponse({
    required this.result,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'result': pulumi.Input.mapInputValue<List<ValidationCheckResultResponse>, List<Map<String, dynamic>>>(result, (value) => pulumi.Input.encodeList<ValidationCheckResultResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ValidationCheckStatusResponse.fromMap(Map<String, dynamic> map) {
    return ValidationCheckStatusResponse(
      result: pulumi.Input.fromValue(pulumi.Input.decodeList<ValidationCheckResultResponse>(map['result']!, (value) => ValidationCheckResultResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
