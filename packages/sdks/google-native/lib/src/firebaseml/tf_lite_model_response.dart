// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Information that is specific to TfLite models.
class TfLiteModelResponse {
  /// The AutoML model id referencing a model you created with the AutoML API. The name should have format 'projects//locations//models/' (This is the model resource name returned from the AutoML API)
  final pulumi.Input<String> automlModel;
  /// The TfLite file containing the model. (Stored in Google Cloud). The gcs_tflite_uri should have form: gs://some-bucket/some-model.tflite Note: If you update the file in the original location, it is necessary to call UpdateModel for ML to pick up and validate the updated file.
  final pulumi.Input<String> gcsTfliteUri;
  /// The size of the TFLite model
  final pulumi.Input<String> sizeBytes;

  /// Creates a new [TfLiteModelResponse].
  /// [automlModel] The AutoML model id referencing a model you created with the AutoML API. The name should have format 'projects//locations//models/' (This is the model resource name returned from the AutoML API)
  /// [gcsTfliteUri] The TfLite file containing the model. (Stored in Google Cloud). The gcs_tflite_uri should have form: gs://some-bucket/some-model.tflite Note: If you update the file in the original location, it is necessary to call UpdateModel for ML to pick up and validate the updated file.
  /// [sizeBytes] The size of the TFLite model
  const TfLiteModelResponse({
    required this.automlModel,
    required this.gcsTfliteUri,
    required this.sizeBytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automlModel': automlModel,
      'gcsTfliteUri': gcsTfliteUri,
      'sizeBytes': sizeBytes,
    };
  }

  factory TfLiteModelResponse.fromMap(Map<String, dynamic> map) {
    return TfLiteModelResponse(
      automlModel: pulumi.Input.fromValue(map['automlModel'] as String),
      gcsTfliteUri: pulumi.Input.fromValue(map['gcsTfliteUri'] as String),
      sizeBytes: pulumi.Input.fromValue(map['sizeBytes'] as String),
    );
  }
}

