// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1_pipeline_task_executor_detail_container_detail_response.dart';
import 'google_cloud_aiplatform_v1_pipeline_task_executor_detail_custom_job_detail_response.dart';

/// The runtime detail of a pipeline executor.
class GoogleCloudAiplatformV1PipelineTaskExecutorDetailResponse {
  /// The detailed info for a container executor.
  final GoogleCloudAiplatformV1PipelineTaskExecutorDetailContainerDetailResponse containerDetail;
  /// The detailed info for a custom job executor.
  final GoogleCloudAiplatformV1PipelineTaskExecutorDetailCustomJobDetailResponse customJobDetail;

  /// Creates a new [GoogleCloudAiplatformV1PipelineTaskExecutorDetailResponse].
  /// [containerDetail] The detailed info for a container executor.
  /// [customJobDetail] The detailed info for a custom job executor.
  GoogleCloudAiplatformV1PipelineTaskExecutorDetailResponse({
    required this.containerDetail,
    required this.customJobDetail,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerDetail': containerDetail.toMap(),
      'customJobDetail': customJobDetail.toMap(),
    };
  }

  factory GoogleCloudAiplatformV1PipelineTaskExecutorDetailResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1PipelineTaskExecutorDetailResponse(
      containerDetail: GoogleCloudAiplatformV1PipelineTaskExecutorDetailContainerDetailResponse.fromMap((map['containerDetail'] as Map).cast<String, dynamic>()),
      customJobDetail: GoogleCloudAiplatformV1PipelineTaskExecutorDetailCustomJobDetailResponse.fromMap((map['customJobDetail'] as Map).cast<String, dynamic>()),
    );
  }
}

