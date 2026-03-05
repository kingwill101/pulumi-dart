// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3beta1_data_store_connection.dart';
import 'google_cloud_dialogflow_cx_v3beta1_fulfillment.dart';

/// The Knowledge Connector settings for this page or flow. This includes information such as the attached Knowledge Bases, and the way to execute fulfillment.
class GoogleCloudDialogflowCxV3beta1KnowledgeConnectorSettings {
  /// Optional. List of related data store connections.
  final pulumi.Input<List<GoogleCloudDialogflowCxV3beta1DataStoreConnection>>? dataStoreConnections;
  /// Whether Knowledge Connector is enabled or not.
  final pulumi.Input<bool>? enabled;
  /// The target flow to transition to. Format: `projects//locations//agents//flows/`.
  final pulumi.Input<String>? targetFlow;
  /// The target page to transition to. Format: `projects//locations//agents//flows//pages/`.
  final pulumi.Input<String>? targetPage;
  /// The fulfillment to be triggered. When the answers from the Knowledge Connector are selected by Dialogflow, you can utitlize the request scoped parameter `$request.knowledge.answers` (contains up to the 5 highest confidence answers) and `$request.knowledge.questions` (contains the corresponding questions) to construct the fulfillment.
  final pulumi.Input<GoogleCloudDialogflowCxV3beta1Fulfillment>? triggerFulfillment;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1KnowledgeConnectorSettings].
  /// [dataStoreConnections] Optional. List of related data store connections.
  /// [enabled] Whether Knowledge Connector is enabled or not.
  /// [targetFlow] The target flow to transition to. Format: `projects//locations//agents//flows/`.
  /// [targetPage] The target page to transition to. Format: `projects//locations//agents//flows//pages/`.
  /// [triggerFulfillment] The fulfillment to be triggered. When the answers from the Knowledge Connector are selected by Dialogflow, you can utitlize the request scoped parameter `$request.knowledge.answers` (contains up to the 5 highest confidence answers) and `$request.knowledge.questions` (contains the corresponding questions) to construct the fulfillment.
  GoogleCloudDialogflowCxV3beta1KnowledgeConnectorSettings({
    this.dataStoreConnections,
    this.enabled,
    this.targetFlow,
    this.targetPage,
    this.triggerFulfillment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataStoreConnections': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDialogflowCxV3beta1DataStoreConnection>, List<Map<String, dynamic>>>(dataStoreConnections, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowCxV3beta1DataStoreConnection, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enabled': ?enabled,
      'targetFlow': ?targetFlow,
      'targetPage': ?targetPage,
      'triggerFulfillment': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowCxV3beta1Fulfillment, Map<String, dynamic>>(triggerFulfillment, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDialogflowCxV3beta1KnowledgeConnectorSettings.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1KnowledgeConnectorSettings(
      dataStoreConnections: (() { final guardedValue = map['dataStoreConnections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDialogflowCxV3beta1DataStoreConnection>(guardedValue, (value) => GoogleCloudDialogflowCxV3beta1DataStoreConnection.fromMap((value as Map).cast<String, dynamic>()))); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      targetFlow: (() { final guardedValue = map['targetFlow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetPage: (() { final guardedValue = map['targetPage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      triggerFulfillment: (() { final guardedValue = map['triggerFulfillment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDialogflowCxV3beta1Fulfillment.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

