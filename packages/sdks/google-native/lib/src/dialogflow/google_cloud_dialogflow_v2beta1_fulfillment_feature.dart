// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2beta1_fulfillment_feature_type.dart';

/// Whether fulfillment is enabled for the specific feature.
class GoogleCloudDialogflowV2beta1FulfillmentFeature {
  /// The type of the feature that enabled for fulfillment.
  final pulumi.Input<GoogleCloudDialogflowV2beta1FulfillmentFeatureType>? type;

  /// Creates a new [GoogleCloudDialogflowV2beta1FulfillmentFeature].
  /// [type] The type of the feature that enabled for fulfillment.
  const GoogleCloudDialogflowV2beta1FulfillmentFeature({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2beta1FulfillmentFeatureType, String>(type, (value) => value.wireValue),
    };
  }

  factory GoogleCloudDialogflowV2beta1FulfillmentFeature.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1FulfillmentFeature(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDialogflowV2beta1FulfillmentFeatureType.fromValue(guardedValue as String)); })(),
    );
  }
}

