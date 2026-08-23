// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Metadata for article suggestion models.
class GoogleCloudDialogflowV2ArticleSuggestionModelMetadataResponse {
  /// Optional. Type of the article suggestion model. If not provided, model_type is used.
  final pulumi.Input<String> trainingModelType;

  /// Creates a new [GoogleCloudDialogflowV2ArticleSuggestionModelMetadataResponse].
  /// [trainingModelType] Optional. Type of the article suggestion model. If not provided, model_type is used.
  const GoogleCloudDialogflowV2ArticleSuggestionModelMetadataResponse({
    required this.trainingModelType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'trainingModelType': trainingModelType,
    };
  }

  factory GoogleCloudDialogflowV2ArticleSuggestionModelMetadataResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2ArticleSuggestionModelMetadataResponse(
      trainingModelType: pulumi.Input.fromValue(map['trainingModelType'] as String),
    );
  }
}
