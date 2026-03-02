// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Information that is specific to TfLite models.
class TfLiteModel {
  /// The AutoML model id referencing a model you created with the AutoML API. The name should have format 'projects//locations//models/' (This is the model resource name returned from the AutoML API)
  final pulumi.Input<String>? automlModel;
  /// The TfLite file containing the model. (Stored in Google Cloud). The gcs_tflite_uri should have form: gs://some-bucket/some-model.tflite Note: If you update the file in the original location, it is necessary to call UpdateModel for ML to pick up and validate the updated file.
  final pulumi.Input<String>? gcsTfliteUri;

  /// Creates a new [TfLiteModel].
  /// [automlModel] The AutoML model id referencing a model you created with the AutoML API. The name should have format 'projects//locations//models/' (This is the model resource name returned from the AutoML API)
  /// [gcsTfliteUri] The TfLite file containing the model. (Stored in Google Cloud). The gcs_tflite_uri should have form: gs://some-bucket/some-model.tflite Note: If you update the file in the original location, it is necessary to call UpdateModel for ML to pick up and validate the updated file.
  TfLiteModel({
    this.automlModel,
    this.gcsTfliteUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automlModel': ?automlModel,
      'gcsTfliteUri': ?gcsTfliteUri,
    };
  }

  factory TfLiteModel.fromMap(Map<String, dynamic> map) {
    return TfLiteModel(
      automlModel: map['automlModel'] == null ? null : (map['automlModel']! as String).input(),
      gcsTfliteUri: map['gcsTfliteUri'] == null ? null : (map['gcsTfliteUri']! as String).input(),
    );
  }
}

