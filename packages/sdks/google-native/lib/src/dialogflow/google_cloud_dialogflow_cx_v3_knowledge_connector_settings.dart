// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3_data_store_connection.dart';
import 'google_cloud_dialogflow_cx_v3_fulfillment.dart';

/// The Knowledge Connector settings for this page or flow. This includes information such as the attached Knowledge Bases, and the way to execute fulfillment.
class GoogleCloudDialogflowCxV3KnowledgeConnectorSettings {
  /// Optional. List of related data store connections.
  final pulumi.Input<List<GoogleCloudDialogflowCxV3DataStoreConnection>>? dataStoreConnections;
  /// Whether Knowledge Connector is enabled or not.
  final pulumi.Input<bool>? enabled;
  /// The target flow to transition to. Format: `projects//locations//agents//flows/`.
  final pulumi.Input<String>? targetFlow;
  /// The target page to transition to. Format: `projects//locations//agents//flows//pages/`.
  final pulumi.Input<String>? targetPage;
  /// The fulfillment to be triggered. When the answers from the Knowledge Connector are selected by Dialogflow, you can utitlize the request scoped parameter `$request.knowledge.answers` (contains up to the 5 highest confidence answers) and `$request.knowledge.questions` (contains the corresponding questions) to construct the fulfillment.
  final pulumi.Input<GoogleCloudDialogflowCxV3Fulfillment>? triggerFulfillment;

  /// Creates a new [GoogleCloudDialogflowCxV3KnowledgeConnectorSettings].
  /// [dataStoreConnections] Optional. List of related data store connections.
  /// [enabled] Whether Knowledge Connector is enabled or not.
  /// [targetFlow] The target flow to transition to. Format: `projects//locations//agents//flows/`.
  /// [targetPage] The target page to transition to. Format: `projects//locations//agents//flows//pages/`.
  /// [triggerFulfillment] The fulfillment to be triggered. When the answers from the Knowledge Connector are selected by Dialogflow, you can utitlize the request scoped parameter `$request.knowledge.answers` (contains up to the 5 highest confidence answers) and `$request.knowledge.questions` (contains the corresponding questions) to construct the fulfillment.
  GoogleCloudDialogflowCxV3KnowledgeConnectorSettings({
    this.dataStoreConnections,
    this.enabled,
    this.targetFlow,
    this.targetPage,
    this.triggerFulfillment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataStoreConnections': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDialogflowCxV3DataStoreConnection>, List<Map<String, dynamic>>>(dataStoreConnections, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowCxV3DataStoreConnection, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enabled': ?enabled,
      'targetFlow': ?targetFlow,
      'targetPage': ?targetPage,
      'triggerFulfillment': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowCxV3Fulfillment, Map<String, dynamic>>(triggerFulfillment, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDialogflowCxV3KnowledgeConnectorSettings.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3KnowledgeConnectorSettings(
      dataStoreConnections: map['dataStoreConnections'] == null ? null : (pulumi.Input.decodeList<GoogleCloudDialogflowCxV3DataStoreConnection>(map['dataStoreConnections']!, (value) => GoogleCloudDialogflowCxV3DataStoreConnection.fromMap((value as Map).cast<String, dynamic>()))).input(),
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      targetFlow: map['targetFlow'] == null ? null : (map['targetFlow']! as String).input(),
      targetPage: map['targetPage'] == null ? null : (map['targetPage']! as String).input(),
      triggerFulfillment: map['triggerFulfillment'] == null ? null : (GoogleCloudDialogflowCxV3Fulfillment.fromMap((map['triggerFulfillment']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

