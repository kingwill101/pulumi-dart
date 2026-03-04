// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2_article_suggestion_model_metadata_training_model_type.dart';

/// Metadata for article suggestion models.
class GoogleCloudDialogflowV2ArticleSuggestionModelMetadata {
  /// Optional. Type of the article suggestion model. If not provided, model_type is used.
  final pulumi.Input<
    GoogleCloudDialogflowV2ArticleSuggestionModelMetadataTrainingModelType
  >?
  trainingModelType;

  /// Creates a new [GoogleCloudDialogflowV2ArticleSuggestionModelMetadata].
  /// [trainingModelType] Optional. Type of the article suggestion model. If not provided, model_type is used.
  GoogleCloudDialogflowV2ArticleSuggestionModelMetadata({
    this.trainingModelType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'trainingModelType':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudDialogflowV2ArticleSuggestionModelMetadataTrainingModelType,
            String
          >(trainingModelType, (value) => value.wireValue),
    };
  }

  factory GoogleCloudDialogflowV2ArticleSuggestionModelMetadata.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowV2ArticleSuggestionModelMetadata(
      trainingModelType: (() {
        final guardedValue = map['trainingModelType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudDialogflowV2ArticleSuggestionModelMetadataTrainingModelType.fromValue(
            guardedValue as String,
          ),
        );
      })(),
    );
  }
}
