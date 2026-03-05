// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_rpc_status_response.dart';

/// All metadata of most recent monitoring pipelines.
class GoogleCloudAiplatformV1ModelDeploymentMonitoringJobLatestMonitoringPipelineMetadataResponse {
  /// The time that most recent monitoring pipelines that is related to this run.
  final pulumi.Input<String> runTime;
  /// The status of the most recent monitoring pipeline.
  final pulumi.Input<GoogleRpcStatusResponse> status;

  /// Creates a new [GoogleCloudAiplatformV1ModelDeploymentMonitoringJobLatestMonitoringPipelineMetadataResponse].
  /// [runTime] The time that most recent monitoring pipelines that is related to this run.
  /// [status] The status of the most recent monitoring pipeline.
  GoogleCloudAiplatformV1ModelDeploymentMonitoringJobLatestMonitoringPipelineMetadataResponse({
    required this.runTime,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'runTime': runTime,
      'status': pulumi.Input.mapInputValue<GoogleRpcStatusResponse, Map<String, dynamic>>(status, (value) => value.toMap()),
    };
  }

  factory GoogleCloudAiplatformV1ModelDeploymentMonitoringJobLatestMonitoringPipelineMetadataResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1ModelDeploymentMonitoringJobLatestMonitoringPipelineMetadataResponse(
      runTime: pulumi.Input.fromValue(map['runTime'] as String),
      status: pulumi.Input.fromValue(GoogleRpcStatusResponse.fromMap((map['status']! as Map).cast<String, dynamic>())),
    );
  }
}

