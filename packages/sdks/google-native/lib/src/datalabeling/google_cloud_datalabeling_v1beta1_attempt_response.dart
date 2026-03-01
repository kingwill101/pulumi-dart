// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_rpc_status_response.dart';

/// Records a failed evaluation job run.
class GoogleCloudDatalabelingV1beta1AttemptResponse {
  final String attemptTime;
  /// Details of errors that occurred.
  final List<GoogleRpcStatusResponse> partialFailures;

  /// Creates a new [GoogleCloudDatalabelingV1beta1AttemptResponse].
  /// [attemptTime] Required.
  /// [partialFailures] Details of errors that occurred.
  GoogleCloudDatalabelingV1beta1AttemptResponse({
    required this.attemptTime,
    required this.partialFailures,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attemptTime': attemptTime,
      'partialFailures': pulumi.Input.encodeList<GoogleRpcStatusResponse, Map<String, dynamic>>(partialFailures, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDatalabelingV1beta1AttemptResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatalabelingV1beta1AttemptResponse(
      attemptTime: map['attemptTime'] as String,
      partialFailures: pulumi.Input.decodeList<GoogleRpcStatusResponse>(map['partialFailures'], (value) => GoogleRpcStatusResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

