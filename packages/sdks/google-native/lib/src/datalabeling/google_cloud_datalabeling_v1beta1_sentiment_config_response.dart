// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Config for setting up sentiments.
class GoogleCloudDatalabelingV1beta1SentimentConfigResponse {
  /// If set to true, contributors will have the option to select sentiment of the label they selected, to mark it as negative or positive label. Default is false.
  final pulumi.Input<bool> enableLabelSentimentSelection;

  /// Creates a new [GoogleCloudDatalabelingV1beta1SentimentConfigResponse].
  /// [enableLabelSentimentSelection] If set to true, contributors will have the option to select sentiment of the label they selected, to mark it as negative or positive label. Default is false.
  const GoogleCloudDatalabelingV1beta1SentimentConfigResponse({
    required this.enableLabelSentimentSelection,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableLabelSentimentSelection': enableLabelSentimentSelection,
    };
  }

  factory GoogleCloudDatalabelingV1beta1SentimentConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatalabelingV1beta1SentimentConfigResponse(
      enableLabelSentimentSelection: pulumi.Input.fromValue(map['enableLabelSentimentSelection'] as bool),
    );
  }
}
