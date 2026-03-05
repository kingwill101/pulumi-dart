// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2_fulfillment_feature_type.dart';

/// Whether fulfillment is enabled for the specific feature.
class GoogleCloudDialogflowV2FulfillmentFeature {
  /// The type of the feature that enabled for fulfillment.
  final pulumi.Input<GoogleCloudDialogflowV2FulfillmentFeatureType>? type;

  /// Creates a new [GoogleCloudDialogflowV2FulfillmentFeature].
  /// [type] The type of the feature that enabled for fulfillment.
  GoogleCloudDialogflowV2FulfillmentFeature({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2FulfillmentFeatureType, String>(type, (value) => value.wireValue),
    };
  }

  factory GoogleCloudDialogflowV2FulfillmentFeature.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2FulfillmentFeature(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDialogflowV2FulfillmentFeatureType.fromValue(guardedValue as String)); })(),
    );
  }
}

