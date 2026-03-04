// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_pipeline_task_executor_detail_container_detail_response.dart';
import 'google_cloud_aiplatform_v1beta1_pipeline_task_executor_detail_custom_job_detail_response.dart';

/// The runtime detail of a pipeline executor.
class GoogleCloudAiplatformV1beta1PipelineTaskExecutorDetailResponse {
  /// The detailed info for a container executor.
  final pulumi.Input<
    GoogleCloudAiplatformV1beta1PipelineTaskExecutorDetailContainerDetailResponse
  >
  containerDetail;

  /// The detailed info for a custom job executor.
  final pulumi.Input<
    GoogleCloudAiplatformV1beta1PipelineTaskExecutorDetailCustomJobDetailResponse
  >
  customJobDetail;

  /// Creates a new [GoogleCloudAiplatformV1beta1PipelineTaskExecutorDetailResponse].
  /// [containerDetail] The detailed info for a container executor.
  /// [customJobDetail] The detailed info for a custom job executor.
  GoogleCloudAiplatformV1beta1PipelineTaskExecutorDetailResponse({
    required this.containerDetail,
    required this.customJobDetail,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerDetail':
          pulumi.Input.mapInputValue<
            GoogleCloudAiplatformV1beta1PipelineTaskExecutorDetailContainerDetailResponse,
            Map<String, dynamic>
          >(containerDetail, (value) => value.toMap()),
      'customJobDetail':
          pulumi.Input.mapInputValue<
            GoogleCloudAiplatformV1beta1PipelineTaskExecutorDetailCustomJobDetailResponse,
            Map<String, dynamic>
          >(customJobDetail, (value) => value.toMap()),
    };
  }

  factory GoogleCloudAiplatformV1beta1PipelineTaskExecutorDetailResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudAiplatformV1beta1PipelineTaskExecutorDetailResponse(
      containerDetail: pulumi.Input.fromValue(
        GoogleCloudAiplatformV1beta1PipelineTaskExecutorDetailContainerDetailResponse.fromMap(
          (map['containerDetail']! as Map).cast<String, dynamic>(),
        ),
      ),
      customJobDetail: pulumi.Input.fromValue(
        GoogleCloudAiplatformV1beta1PipelineTaskExecutorDetailCustomJobDetailResponse.fromMap(
          (map['customJobDetail']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
