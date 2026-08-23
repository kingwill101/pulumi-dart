// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2beta1_fulfillment_feature.dart';
import 'google_cloud_dialogflow_v2beta1_fulfillment_generic_web_service.dart';

/// By default, your agent responds to a matched intent with a static response. As an alternative, you can provide a more dynamic response by using fulfillment. When you enable fulfillment for an intent, Dialogflow responds to that intent by calling a service that you define. For example, if an end-user wants to schedule a haircut on Friday, your service can check your database and respond to the end-user with availability information for Friday. For more information, see the [fulfillment guide](https://cloud.google.com/dialogflow/docs/fulfillment-overview).
class GoogleCloudDialogflowV2beta1Fulfillment {
  /// The human-readable name of the fulfillment, unique within the agent. This field is not used for Fulfillment in an Environment.
  final pulumi.Input<String>? displayName;
  /// Whether fulfillment is enabled.
  final pulumi.Input<bool>? enabled;
  /// The field defines whether the fulfillment is enabled for certain features.
  final pulumi.Input<List<GoogleCloudDialogflowV2beta1FulfillmentFeature>>? features;
  /// Configuration for a generic web service.
  final pulumi.Input<GoogleCloudDialogflowV2beta1FulfillmentGenericWebService>? genericWebService;
  /// The unique identifier of the fulfillment. Supported formats: - `projects//agent/fulfillment` - `projects//locations//agent/fulfillment` This field is not used for Fulfillment in an Environment.
  final pulumi.Input<String> name;

  /// Creates a new [GoogleCloudDialogflowV2beta1Fulfillment].
  /// [displayName] The human-readable name of the fulfillment, unique within the agent. This field is not used for Fulfillment in an Environment.
  /// [enabled] Whether fulfillment is enabled.
  /// [features] The field defines whether the fulfillment is enabled for certain features.
  /// [genericWebService] Configuration for a generic web service.
  /// [name] The unique identifier of the fulfillment. Supported formats: - `projects//agent/fulfillment` - `projects//locations//agent/fulfillment` This field is not used for Fulfillment in an Environment.
  const GoogleCloudDialogflowV2beta1Fulfillment({
    this.displayName,
    this.enabled,
    this.features,
    this.genericWebService,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'enabled': ?enabled,
      'features': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDialogflowV2beta1FulfillmentFeature>, List<Map<String, dynamic>>>(features, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowV2beta1FulfillmentFeature, Map<String, dynamic>>(value, (value) => value.toMap())),
      'genericWebService': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2beta1FulfillmentGenericWebService, Map<String, dynamic>>(genericWebService, (value) => value.toMap()),
      'name': name,
    };
  }

  factory GoogleCloudDialogflowV2beta1Fulfillment.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1Fulfillment(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      features: (() { final guardedValue = map['features']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDialogflowV2beta1FulfillmentFeature>(guardedValue, (value) => GoogleCloudDialogflowV2beta1FulfillmentFeature.fromMap((value as Map).cast<String, dynamic>()))); })(),
      genericWebService: (() { final guardedValue = map['genericWebService']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDialogflowV2beta1FulfillmentGenericWebService.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
