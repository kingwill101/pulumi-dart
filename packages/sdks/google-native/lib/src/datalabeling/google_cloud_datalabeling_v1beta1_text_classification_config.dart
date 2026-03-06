// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_datalabeling_v1beta1_sentiment_config.dart';

/// Config for text classification human labeling task.
class GoogleCloudDatalabelingV1beta1TextClassificationConfig {
  /// Optional. If allow_multi_label is true, contributors are able to choose multiple labels for one text segment.
  final pulumi.Input<bool>? allowMultiLabel;
  /// Annotation spec set resource name.
  final pulumi.Input<String> annotationSpecSet;
  /// Optional. Configs for sentiment selection. We deprecate sentiment analysis in data labeling side as it is incompatible with uCAIP.
  final pulumi.Input<GoogleCloudDatalabelingV1beta1SentimentConfig>? sentimentConfig;

  /// Creates a new [GoogleCloudDatalabelingV1beta1TextClassificationConfig].
  /// [allowMultiLabel] Optional. If allow_multi_label is true, contributors are able to choose multiple labels for one text segment.
  /// [annotationSpecSet] Annotation spec set resource name.
  /// [sentimentConfig] Optional. Configs for sentiment selection. We deprecate sentiment analysis in data labeling side as it is incompatible with uCAIP.
  const GoogleCloudDatalabelingV1beta1TextClassificationConfig({
    this.allowMultiLabel,
    required this.annotationSpecSet,
    this.sentimentConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowMultiLabel': ?allowMultiLabel,
      'annotationSpecSet': annotationSpecSet,
      'sentimentConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDatalabelingV1beta1SentimentConfig, Map<String, dynamic>>(sentimentConfig, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDatalabelingV1beta1TextClassificationConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatalabelingV1beta1TextClassificationConfig(
      allowMultiLabel: (() { final guardedValue = map['allowMultiLabel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      annotationSpecSet: pulumi.Input.fromValue(map['annotationSpecSet'] as String),
      sentimentConfig: (() { final guardedValue = map['sentimentConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDatalabelingV1beta1SentimentConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

