// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Config for setting up sentiments.
class GoogleCloudDatalabelingV1beta1SentimentConfig {
  /// If set to true, contributors will have the option to select sentiment of the label they selected, to mark it as negative or positive label. Default is false.
  final pulumi.Input<bool>? enableLabelSentimentSelection;

  /// Creates a new [GoogleCloudDatalabelingV1beta1SentimentConfig].
  /// [enableLabelSentimentSelection] If set to true, contributors will have the option to select sentiment of the label they selected, to mark it as negative or positive label. Default is false.
  GoogleCloudDatalabelingV1beta1SentimentConfig({
    this.enableLabelSentimentSelection,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableLabelSentimentSelection': ?enableLabelSentimentSelection,
    };
  }

  factory GoogleCloudDatalabelingV1beta1SentimentConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatalabelingV1beta1SentimentConfig(
      enableLabelSentimentSelection: map['enableLabelSentimentSelection'] == null ? null : (map['enableLabelSentimentSelection'] as bool).input(),
    );
  }
}

