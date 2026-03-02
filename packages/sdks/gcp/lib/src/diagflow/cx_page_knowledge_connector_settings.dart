// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_page_knowledge_connector_settings_data_store_connection.dart';
import 'cx_page_knowledge_connector_settings_trigger_fulfillment.dart';

class CxPageKnowledgeConnectorSettings {
  /// Optional. List of related data store connections.
  /// Structure is documented below.
  final pulumi.Input<List<CxPageKnowledgeConnectorSettingsDataStoreConnection>>? dataStoreConnections;
  /// Whether Knowledge Connector is enabled or not.
  final pulumi.Input<bool>? enabled;
  /// The target flow to transition to. Format: projects/<ProjectID>/locations/<LocationID>/agents/<AgentID>/flows/<FlowID>.
  /// This field is part of a union field `target`: Only one of `targetPage` or `targetFlow` may be set.
  final pulumi.Input<String>? targetFlow;
  /// The target page to transition to. Format: projects/<ProjectID>/locations/<LocationID>/agents/<AgentID>/flows/<FlowID>/pages/<PageID>.
  /// The page must be in the same host flow (the flow that owns this `KnowledgeConnectorSettings`).
  /// This field is part of a union field `target`: Only one of `targetPage` or `targetFlow` may be set.
  final pulumi.Input<String>? targetPage;
  /// The fulfillment to be triggered.
  /// When the answers from the Knowledge Connector are selected by Dialogflow, you can utitlize the request scoped parameter $request.knowledge.answers (contains up to the 5 highest confidence answers) and $request.knowledge.questions (contains the corresponding questions) to construct the fulfillment.
  /// Structure is documented below.
  final pulumi.Input<CxPageKnowledgeConnectorSettingsTriggerFulfillment>? triggerFulfillment;

  /// Creates a new [CxPageKnowledgeConnectorSettings].
  /// [dataStoreConnections] Optional. List of related data store connections.
  /// [enabled] Whether Knowledge Connector is enabled or not.
  /// [targetFlow] The target flow to transition to. Format: projects/<ProjectID>/locations/<LocationID>/agents/<AgentID>/flows/<FlowID>.
  /// [targetPage] The target page to transition to. Format: projects/<ProjectID>/locations/<LocationID>/agents/<AgentID>/flows/<FlowID>/pages/<PageID>.
  /// [triggerFulfillment] The fulfillment to be triggered.
  CxPageKnowledgeConnectorSettings({
    this.dataStoreConnections,
    this.enabled,
    this.targetFlow,
    this.targetPage,
    this.triggerFulfillment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataStoreConnections': ?pulumi.Input.mapOptionalInputValue<List<CxPageKnowledgeConnectorSettingsDataStoreConnection>, List<Map<String, dynamic>>>(dataStoreConnections, (value) => pulumi.Input.encodeList<CxPageKnowledgeConnectorSettingsDataStoreConnection, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enabled': ?enabled,
      'targetFlow': ?targetFlow,
      'targetPage': ?targetPage,
      'triggerFulfillment': ?pulumi.Input.mapOptionalInputValue<CxPageKnowledgeConnectorSettingsTriggerFulfillment, Map<String, dynamic>>(triggerFulfillment, (value) => value.toMap()),
    };
  }

  factory CxPageKnowledgeConnectorSettings.fromMap(Map<String, dynamic> map) {
    return CxPageKnowledgeConnectorSettings(
      dataStoreConnections: map['dataStoreConnections'] == null ? null : (pulumi.Input.decodeList<CxPageKnowledgeConnectorSettingsDataStoreConnection>(map['dataStoreConnections']!, (value) => CxPageKnowledgeConnectorSettingsDataStoreConnection.fromMap((value as Map).cast<String, dynamic>()))).input(),
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      targetFlow: map['targetFlow'] == null ? null : (map['targetFlow']! as String).input(),
      targetPage: map['targetPage'] == null ? null : (map['targetPage']! as String).input(),
      triggerFulfillment: map['triggerFulfillment'] == null ? null : (CxPageKnowledgeConnectorSettingsTriggerFulfillment.fromMap((map['triggerFulfillment']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

