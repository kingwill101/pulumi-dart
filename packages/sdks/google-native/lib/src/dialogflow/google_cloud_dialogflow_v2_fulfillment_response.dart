// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2_fulfillment_feature_response.dart';
import 'google_cloud_dialogflow_v2_fulfillment_generic_web_service_response.dart';

/// By default, your agent responds to a matched intent with a static response. As an alternative, you can provide a more dynamic response by using fulfillment. When you enable fulfillment for an intent, Dialogflow responds to that intent by calling a service that you define. For example, if an end-user wants to schedule a haircut on Friday, your service can check your database and respond to the end-user with availability information for Friday. For more information, see the [fulfillment guide](https://cloud.google.com/dialogflow/docs/fulfillment-overview).
class GoogleCloudDialogflowV2FulfillmentResponse {
  /// Optional. The human-readable name of the fulfillment, unique within the agent. This field is not used for Fulfillment in an Environment.
  final pulumi.Input<String> displayName;
  /// Optional. Whether fulfillment is enabled.
  final pulumi.Input<bool> enabled;
  /// Optional. The field defines whether the fulfillment is enabled for certain features.
  final pulumi.Input<List<GoogleCloudDialogflowV2FulfillmentFeatureResponse>> features;
  /// Configuration for a generic web service.
  final pulumi.Input<GoogleCloudDialogflowV2FulfillmentGenericWebServiceResponse> genericWebService;
  /// The unique identifier of the fulfillment. Supported formats: - `projects//agent/fulfillment` - `projects//locations//agent/fulfillment` This field is not used for Fulfillment in an Environment.
  final pulumi.Input<String> name;

  /// Creates a new [GoogleCloudDialogflowV2FulfillmentResponse].
  /// [displayName] Optional. The human-readable name of the fulfillment, unique within the agent. This field is not used for Fulfillment in an Environment.
  /// [enabled] Optional. Whether fulfillment is enabled.
  /// [features] Optional. The field defines whether the fulfillment is enabled for certain features.
  /// [genericWebService] Configuration for a generic web service.
  /// [name] The unique identifier of the fulfillment. Supported formats: - `projects//agent/fulfillment` - `projects//locations//agent/fulfillment` This field is not used for Fulfillment in an Environment.
  GoogleCloudDialogflowV2FulfillmentResponse({
    required this.displayName,
    required this.enabled,
    required this.features,
    required this.genericWebService,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'enabled': enabled,
      'features': pulumi.Input.mapInputValue<List<GoogleCloudDialogflowV2FulfillmentFeatureResponse>, List<Map<String, dynamic>>>(features, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowV2FulfillmentFeatureResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'genericWebService': pulumi.Input.mapInputValue<GoogleCloudDialogflowV2FulfillmentGenericWebServiceResponse, Map<String, dynamic>>(genericWebService, (value) => value.toMap()),
      'name': name,
    };
  }

  factory GoogleCloudDialogflowV2FulfillmentResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2FulfillmentResponse(
      displayName: (map['displayName'] as String).input(),
      enabled: (map['enabled'] as bool).input(),
      features: (pulumi.Input.decodeList<GoogleCloudDialogflowV2FulfillmentFeatureResponse>(map['features'], (value) => GoogleCloudDialogflowV2FulfillmentFeatureResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      genericWebService: (GoogleCloudDialogflowV2FulfillmentGenericWebServiceResponse.fromMap((map['genericWebService'] as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
    );
  }
}

