// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Dialogflow interaction data.
class GoogleCloudContactcenterinsightsV1DialogflowInteractionDataResponse {
  /// The confidence of the match ranging from 0.0 (completely uncertain) to 1.0 (completely certain).
  final pulumi.Input<double> confidence;
  /// The Dialogflow intent resource path. Format: projects/{project}/agent/{agent}/intents/{intent}
  final pulumi.Input<String> dialogflowIntentId;

  /// Creates a new [GoogleCloudContactcenterinsightsV1DialogflowInteractionDataResponse].
  /// [confidence] The confidence of the match ranging from 0.0 (completely uncertain) to 1.0 (completely certain).
  /// [dialogflowIntentId] The Dialogflow intent resource path. Format: projects/{project}/agent/{agent}/intents/{intent}
  const GoogleCloudContactcenterinsightsV1DialogflowInteractionDataResponse({
    required this.confidence,
    required this.dialogflowIntentId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'confidence': confidence,
      'dialogflowIntentId': dialogflowIntentId,
    };
  }

  factory GoogleCloudContactcenterinsightsV1DialogflowInteractionDataResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudContactcenterinsightsV1DialogflowInteractionDataResponse(
      confidence: pulumi.Input.fromValue(map['confidence'] as double),
      dialogflowIntentId: pulumi.Input.fromValue(map['dialogflowIntentId'] as String),
    );
  }
}

