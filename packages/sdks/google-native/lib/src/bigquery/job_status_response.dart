// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'error_proto_response.dart';

class JobStatusResponse {
  /// Final error result of the job. If present, indicates that the job has completed and was unsuccessful.
  final pulumi.Input<ErrorProtoResponse> errorResult;
  /// The first errors encountered during the running of the job. The final message includes the number of errors that caused the process to stop. Errors here do not necessarily mean that the job has completed or was unsuccessful.
  final pulumi.Input<List<ErrorProtoResponse>> errors;
  /// Running state of the job.
  final pulumi.Input<String> state;

  /// Creates a new [JobStatusResponse].
  /// [errorResult] Final error result of the job. If present, indicates that the job has completed and was unsuccessful.
  /// [errors] The first errors encountered during the running of the job. The final message includes the number of errors that caused the process to stop. Errors here do not necessarily mean that the job has completed or was unsuccessful.
  /// [state] Running state of the job.
  const JobStatusResponse({
    required this.errorResult,
    required this.errors,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorResult': pulumi.Input.mapInputValue<ErrorProtoResponse, Map<String, dynamic>>(errorResult, (value) => value.toMap()),
      'errors': pulumi.Input.mapInputValue<List<ErrorProtoResponse>, List<Map<String, dynamic>>>(errors, (value) => pulumi.Input.encodeList<ErrorProtoResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'state': state,
    };
  }

  factory JobStatusResponse.fromMap(Map<String, dynamic> map) {
    return JobStatusResponse(
      errorResult: pulumi.Input.fromValue(ErrorProtoResponse.fromMap((map['errorResult']! as Map).cast<String, dynamic>())),
      errors: pulumi.Input.fromValue(pulumi.Input.decodeList<ErrorProtoResponse>(map['errors']!, (value) => ErrorProtoResponse.fromMap((value as Map).cast<String, dynamic>()))),
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}

