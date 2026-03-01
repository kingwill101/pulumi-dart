// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_v2_fulfillment_feature_type.dart';

/// Whether fulfillment is enabled for the specific feature.
class GoogleCloudDialogflowV2FulfillmentFeature {
  /// The type of the feature that enabled for fulfillment.
  final GoogleCloudDialogflowV2FulfillmentFeatureType? type;

  /// Creates a new [GoogleCloudDialogflowV2FulfillmentFeature].
  /// [type] The type of the feature that enabled for fulfillment.
  GoogleCloudDialogflowV2FulfillmentFeature({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type == null ? null : type!.value,
    };
  }

  factory GoogleCloudDialogflowV2FulfillmentFeature.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2FulfillmentFeature(
      type: map['type'] == null ? null : GoogleCloudDialogflowV2FulfillmentFeatureType.fromValue(map['type'] as String),
    );
  }
}

