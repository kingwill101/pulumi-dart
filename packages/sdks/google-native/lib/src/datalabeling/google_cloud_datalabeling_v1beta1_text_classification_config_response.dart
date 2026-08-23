// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_datalabeling_v1beta1_sentiment_config_response.dart';

/// Config for text classification human labeling task.
class GoogleCloudDatalabelingV1beta1TextClassificationConfigResponse {
  /// Optional. If allow_multi_label is true, contributors are able to choose multiple labels for one text segment.
  final pulumi.Input<bool> allowMultiLabel;
  /// Annotation spec set resource name.
  final pulumi.Input<String> annotationSpecSet;
  /// Optional. Configs for sentiment selection. We deprecate sentiment analysis in data labeling side as it is incompatible with uCAIP.
  final pulumi.Input<GoogleCloudDatalabelingV1beta1SentimentConfigResponse> sentimentConfig;

  /// Creates a new [GoogleCloudDatalabelingV1beta1TextClassificationConfigResponse].
  /// [allowMultiLabel] Optional. If allow_multi_label is true, contributors are able to choose multiple labels for one text segment.
  /// [annotationSpecSet] Annotation spec set resource name.
  /// [sentimentConfig] Optional. Configs for sentiment selection. We deprecate sentiment analysis in data labeling side as it is incompatible with uCAIP.
  const GoogleCloudDatalabelingV1beta1TextClassificationConfigResponse({
    required this.allowMultiLabel,
    required this.annotationSpecSet,
    required this.sentimentConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowMultiLabel': allowMultiLabel,
      'annotationSpecSet': annotationSpecSet,
      'sentimentConfig': pulumi.Input.mapInputValue<GoogleCloudDatalabelingV1beta1SentimentConfigResponse, Map<String, dynamic>>(sentimentConfig, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDatalabelingV1beta1TextClassificationConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatalabelingV1beta1TextClassificationConfigResponse(
      allowMultiLabel: pulumi.Input.fromValue(map['allowMultiLabel'] as bool),
      annotationSpecSet: pulumi.Input.fromValue(map['annotationSpecSet'] as String),
      sentimentConfig: pulumi.Input.fromValue(GoogleCloudDatalabelingV1beta1SentimentConfigResponse.fromMap((map['sentimentConfig']! as Map).cast<String, dynamic>())),
    );
  }
}
