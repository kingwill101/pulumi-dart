// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2_smart_reply_model_metadata_training_model_type.dart';

/// Metadata for smart reply models.
class GoogleCloudDialogflowV2SmartReplyModelMetadata {
  /// Optional. Type of the smart reply model. If not provided, model_type is used.
  final pulumi.Input<
    GoogleCloudDialogflowV2SmartReplyModelMetadataTrainingModelType
  >?
  trainingModelType;

  /// Creates a new [GoogleCloudDialogflowV2SmartReplyModelMetadata].
  /// [trainingModelType] Optional. Type of the smart reply model. If not provided, model_type is used.
  GoogleCloudDialogflowV2SmartReplyModelMetadata({this.trainingModelType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'trainingModelType':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudDialogflowV2SmartReplyModelMetadataTrainingModelType,
            String
          >(trainingModelType, (value) => value.wireValue),
    };
  }

  factory GoogleCloudDialogflowV2SmartReplyModelMetadata.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowV2SmartReplyModelMetadata(
      trainingModelType: (() {
        final guardedValue = map['trainingModelType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudDialogflowV2SmartReplyModelMetadataTrainingModelType.fromValue(
            guardedValue as String,
          ),
        );
      })(),
    );
  }
}
