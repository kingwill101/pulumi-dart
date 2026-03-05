// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_datalabeling_v1beta1_bounding_box_evaluation_options_response.dart';

/// Configuration details used for calculating evaluation metrics and creating an Evaluation.
class GoogleCloudDatalabelingV1beta1EvaluationConfigResponse {
  /// Only specify this field if the related model performs image object detection (`IMAGE_BOUNDING_BOX_ANNOTATION`). Describes how to evaluate bounding boxes.
  final pulumi.Input<GoogleCloudDatalabelingV1beta1BoundingBoxEvaluationOptionsResponse> boundingBoxEvaluationOptions;

  /// Creates a new [GoogleCloudDatalabelingV1beta1EvaluationConfigResponse].
  /// [boundingBoxEvaluationOptions] Only specify this field if the related model performs image object detection (`IMAGE_BOUNDING_BOX_ANNOTATION`). Describes how to evaluate bounding boxes.
  GoogleCloudDatalabelingV1beta1EvaluationConfigResponse({
    required this.boundingBoxEvaluationOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'boundingBoxEvaluationOptions': pulumi.Input.mapInputValue<GoogleCloudDatalabelingV1beta1BoundingBoxEvaluationOptionsResponse, Map<String, dynamic>>(boundingBoxEvaluationOptions, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDatalabelingV1beta1EvaluationConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatalabelingV1beta1EvaluationConfigResponse(
      boundingBoxEvaluationOptions: pulumi.Input.fromValue(GoogleCloudDatalabelingV1beta1BoundingBoxEvaluationOptionsResponse.fromMap((map['boundingBoxEvaluationOptions']! as Map).cast<String, dynamic>())),
    );
  }
}

