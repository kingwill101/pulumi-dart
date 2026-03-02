// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dataplex_v1_job_response.dart';

/// Status of the task execution (e.g. Jobs).
class GoogleCloudDataplexV1TaskExecutionStatusResponse {
  /// latest job execution
  final pulumi.Input<GoogleCloudDataplexV1JobResponse> latestJob;
  /// Last update time of the status.
  final pulumi.Input<String> updateTime;

  /// Creates a new [GoogleCloudDataplexV1TaskExecutionStatusResponse].
  /// [latestJob] latest job execution
  /// [updateTime] Last update time of the status.
  GoogleCloudDataplexV1TaskExecutionStatusResponse({
    required this.latestJob,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'latestJob': pulumi.Input.mapInputValue<GoogleCloudDataplexV1JobResponse, Map<String, dynamic>>(latestJob, (value) => value.toMap()),
      'updateTime': updateTime,
    };
  }

  factory GoogleCloudDataplexV1TaskExecutionStatusResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1TaskExecutionStatusResponse(
      latestJob: (GoogleCloudDataplexV1JobResponse.fromMap((map['latestJob'] as Map).cast<String, dynamic>())).input(),
      updateTime: (map['updateTime'] as String).input(),
    );
  }
}

