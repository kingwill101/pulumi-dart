// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_rpc_status_response.dart';

/// Records a failed evaluation job run.
class GoogleCloudDatalabelingV1beta1AttemptResponse {
  final pulumi.Input<String> attemptTime;
  /// Details of errors that occurred.
  final pulumi.Input<List<GoogleRpcStatusResponse>> partialFailures;

  /// Creates a new [GoogleCloudDatalabelingV1beta1AttemptResponse].
  /// [attemptTime] Required.
  /// [partialFailures] Details of errors that occurred.
  const GoogleCloudDatalabelingV1beta1AttemptResponse({
    required this.attemptTime,
    required this.partialFailures,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attemptTime': attemptTime,
      'partialFailures': pulumi.Input.mapInputValue<List<GoogleRpcStatusResponse>, List<Map<String, dynamic>>>(partialFailures, (value) => pulumi.Input.encodeList<GoogleRpcStatusResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GoogleCloudDatalabelingV1beta1AttemptResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatalabelingV1beta1AttemptResponse(
      attemptTime: pulumi.Input.fromValue(map['attemptTime'] as String),
      partialFailures: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleRpcStatusResponse>(map['partialFailures']!, (value) => GoogleRpcStatusResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

