// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3beta1_data_store_connection_response.dart';
import 'google_cloud_dialogflow_cx_v3beta1_fulfillment_response.dart';

/// The Knowledge Connector settings for this page or flow. This includes information such as the attached Knowledge Bases, and the way to execute fulfillment.
class GoogleCloudDialogflowCxV3beta1KnowledgeConnectorSettingsResponse {
  /// Optional. List of related data store connections.
  final pulumi.Input<List<GoogleCloudDialogflowCxV3beta1DataStoreConnectionResponse>> dataStoreConnections;
  /// Whether Knowledge Connector is enabled or not.
  final pulumi.Input<bool> enabled;
  /// The target flow to transition to. Format: `projects//locations//agents//flows/`.
  final pulumi.Input<String> targetFlow;
  /// The target page to transition to. Format: `projects//locations//agents//flows//pages/`.
  final pulumi.Input<String> targetPage;
  /// The fulfillment to be triggered. When the answers from the Knowledge Connector are selected by Dialogflow, you can utitlize the request scoped parameter `$request.knowledge.answers` (contains up to the 5 highest confidence answers) and `$request.knowledge.questions` (contains the corresponding questions) to construct the fulfillment.
  final pulumi.Input<GoogleCloudDialogflowCxV3beta1FulfillmentResponse> triggerFulfillment;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1KnowledgeConnectorSettingsResponse].
  /// [dataStoreConnections] Optional. List of related data store connections.
  /// [enabled] Whether Knowledge Connector is enabled or not.
  /// [targetFlow] The target flow to transition to. Format: `projects//locations//agents//flows/`.
  /// [targetPage] The target page to transition to. Format: `projects//locations//agents//flows//pages/`.
  /// [triggerFulfillment] The fulfillment to be triggered. When the answers from the Knowledge Connector are selected by Dialogflow, you can utitlize the request scoped parameter `$request.knowledge.answers` (contains up to the 5 highest confidence answers) and `$request.knowledge.questions` (contains the corresponding questions) to construct the fulfillment.
  const GoogleCloudDialogflowCxV3beta1KnowledgeConnectorSettingsResponse({
    required this.dataStoreConnections,
    required this.enabled,
    required this.targetFlow,
    required this.targetPage,
    required this.triggerFulfillment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataStoreConnections': pulumi.Input.mapInputValue<List<GoogleCloudDialogflowCxV3beta1DataStoreConnectionResponse>, List<Map<String, dynamic>>>(dataStoreConnections, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowCxV3beta1DataStoreConnectionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enabled': enabled,
      'targetFlow': targetFlow,
      'targetPage': targetPage,
      'triggerFulfillment': pulumi.Input.mapInputValue<GoogleCloudDialogflowCxV3beta1FulfillmentResponse, Map<String, dynamic>>(triggerFulfillment, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDialogflowCxV3beta1KnowledgeConnectorSettingsResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1KnowledgeConnectorSettingsResponse(
      dataStoreConnections: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDialogflowCxV3beta1DataStoreConnectionResponse>(map['dataStoreConnections']!, (value) => GoogleCloudDialogflowCxV3beta1DataStoreConnectionResponse.fromMap((value as Map).cast<String, dynamic>()))),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      targetFlow: pulumi.Input.fromValue(map['targetFlow'] as String),
      targetPage: pulumi.Input.fromValue(map['targetPage'] as String),
      triggerFulfillment: pulumi.Input.fromValue(GoogleCloudDialogflowCxV3beta1FulfillmentResponse.fromMap((map['triggerFulfillment']! as Map).cast<String, dynamic>())),
    );
  }
}
