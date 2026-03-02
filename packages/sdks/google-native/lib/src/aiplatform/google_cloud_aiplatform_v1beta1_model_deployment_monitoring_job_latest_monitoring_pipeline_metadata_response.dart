// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_rpc_status_response_aiplatform_v1beta1.dart';

/// All metadata of most recent monitoring pipelines.
class GoogleCloudAiplatformV1beta1ModelDeploymentMonitoringJobLatestMonitoringPipelineMetadataResponse {
  /// The time that most recent monitoring pipelines that is related to this run.
  final pulumi.Input<String> runTime;
  /// The status of the most recent monitoring pipeline.
  final pulumi.Input<GoogleRpcStatusResponseAiplatformV1beta1> status;

  /// Creates a new [GoogleCloudAiplatformV1beta1ModelDeploymentMonitoringJobLatestMonitoringPipelineMetadataResponse].
  /// [runTime] The time that most recent monitoring pipelines that is related to this run.
  /// [status] The status of the most recent monitoring pipeline.
  GoogleCloudAiplatformV1beta1ModelDeploymentMonitoringJobLatestMonitoringPipelineMetadataResponse({
    required this.runTime,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'runTime': runTime,
      'status': pulumi.Input.mapInputValue<GoogleRpcStatusResponseAiplatformV1beta1, Map<String, dynamic>>(status, (value) => value.toMap()),
    };
  }

  factory GoogleCloudAiplatformV1beta1ModelDeploymentMonitoringJobLatestMonitoringPipelineMetadataResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1ModelDeploymentMonitoringJobLatestMonitoringPipelineMetadataResponse(
      runTime: (map['runTime'] as String).input(),
      status: (GoogleRpcStatusResponseAiplatformV1beta1.fromMap((map['status'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

