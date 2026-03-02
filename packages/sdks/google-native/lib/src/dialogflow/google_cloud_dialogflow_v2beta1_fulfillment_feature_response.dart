// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Whether fulfillment is enabled for the specific feature.
class GoogleCloudDialogflowV2beta1FulfillmentFeatureResponse {
  /// The type of the feature that enabled for fulfillment.
  final pulumi.Input<String> type;

  /// Creates a new [GoogleCloudDialogflowV2beta1FulfillmentFeatureResponse].
  /// [type] The type of the feature that enabled for fulfillment.
  GoogleCloudDialogflowV2beta1FulfillmentFeatureResponse({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory GoogleCloudDialogflowV2beta1FulfillmentFeatureResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1FulfillmentFeatureResponse(
      type: (map['type'] as String).input(),
    );
  }
}

