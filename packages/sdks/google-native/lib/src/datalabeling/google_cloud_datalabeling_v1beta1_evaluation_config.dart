// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_datalabeling_v1beta1_bounding_box_evaluation_options.dart';

/// Configuration details used for calculating evaluation metrics and creating an Evaluation.
class GoogleCloudDatalabelingV1beta1EvaluationConfig {
  /// Only specify this field if the related model performs image object detection (`IMAGE_BOUNDING_BOX_ANNOTATION`). Describes how to evaluate bounding boxes.
  final pulumi.Input<
    GoogleCloudDatalabelingV1beta1BoundingBoxEvaluationOptions
  >?
  boundingBoxEvaluationOptions;

  /// Creates a new [GoogleCloudDatalabelingV1beta1EvaluationConfig].
  /// [boundingBoxEvaluationOptions] Only specify this field if the related model performs image object detection (`IMAGE_BOUNDING_BOX_ANNOTATION`). Describes how to evaluate bounding boxes.
  GoogleCloudDatalabelingV1beta1EvaluationConfig({
    this.boundingBoxEvaluationOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'boundingBoxEvaluationOptions':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudDatalabelingV1beta1BoundingBoxEvaluationOptions,
            Map<String, dynamic>
          >(boundingBoxEvaluationOptions, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDatalabelingV1beta1EvaluationConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDatalabelingV1beta1EvaluationConfig(
      boundingBoxEvaluationOptions: (() {
        final guardedValue = map['boundingBoxEvaluationOptions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudDatalabelingV1beta1BoundingBoxEvaluationOptions.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
