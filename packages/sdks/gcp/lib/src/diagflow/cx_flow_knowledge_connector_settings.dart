// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_flow_knowledge_connector_settings_data_store_connection.dart';
import 'cx_flow_knowledge_connector_settings_trigger_fulfillment.dart';

class CxFlowKnowledgeConnectorSettings {
  /// Optional. List of related data store connections.
  /// Structure is documented below.
  final pulumi.Input<List<CxFlowKnowledgeConnectorSettingsDataStoreConnection>>? dataStoreConnections;
  /// Whether Knowledge Connector is enabled or not.
  final pulumi.Input<bool>? enabled;
  /// The target flow to transition to. Format: projects/&lt;ProjectID&gt;/locations/&lt;LocationID&gt;/agents/&lt;AgentID&gt;/flows/&lt;FlowID&gt;.
  /// This field is part of a union field `target`: Only one of `targetPage` or `targetFlow` may be set.
  final pulumi.Input<String>? targetFlow;
  /// The target page to transition to. Format: projects/&lt;ProjectID&gt;/locations/&lt;LocationID&gt;/agents/&lt;AgentID&gt;/flows/&lt;FlowID&gt;/pages/&lt;PageID&gt;.
  /// The page must be in the same host flow (the flow that owns this `KnowledgeConnectorSettings`).
  /// This field is part of a union field `target`: Only one of `targetPage` or `targetFlow` may be set.
  final pulumi.Input<String>? targetPage;
  /// The fulfillment to be triggered.
  /// When the answers from the Knowledge Connector are selected by Dialogflow, you can utitlize the request scoped parameter $request.knowledge.answers (contains up to the 5 highest confidence answers) and $request.knowledge.questions (contains the corresponding questions) to construct the fulfillment.
  /// Structure is documented below.
  final pulumi.Input<CxFlowKnowledgeConnectorSettingsTriggerFulfillment>? triggerFulfillment;

  /// Creates a new [CxFlowKnowledgeConnectorSettings].
  /// [dataStoreConnections] Optional. List of related data store connections.
  /// [enabled] Whether Knowledge Connector is enabled or not.
  /// [targetFlow] The target flow to transition to. Format: projects/&lt;ProjectID&gt;/locations/&lt;LocationID&gt;/agents/&lt;AgentID&gt;/flows/&lt;FlowID&gt;.
  /// [targetPage] The target page to transition to. Format: projects/&lt;ProjectID&gt;/locations/&lt;LocationID&gt;/agents/&lt;AgentID&gt;/flows/&lt;FlowID&gt;/pages/&lt;PageID&gt;.
  /// [triggerFulfillment] The fulfillment to be triggered.
  CxFlowKnowledgeConnectorSettings({
    this.dataStoreConnections,
    this.enabled,
    this.targetFlow,
    this.targetPage,
    this.triggerFulfillment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataStoreConnections': ?pulumi.Input.mapOptionalInputValue<List<CxFlowKnowledgeConnectorSettingsDataStoreConnection>, List<Map<String, dynamic>>>(dataStoreConnections, (value) => pulumi.Input.encodeList<CxFlowKnowledgeConnectorSettingsDataStoreConnection, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enabled': ?enabled,
      'targetFlow': ?targetFlow,
      'targetPage': ?targetPage,
      'triggerFulfillment': ?pulumi.Input.mapOptionalInputValue<CxFlowKnowledgeConnectorSettingsTriggerFulfillment, Map<String, dynamic>>(triggerFulfillment, (value) => value.toMap()),
    };
  }

  factory CxFlowKnowledgeConnectorSettings.fromMap(Map<String, dynamic> map) {
    return CxFlowKnowledgeConnectorSettings(
      dataStoreConnections: (() { final guardedValue = map['dataStoreConnections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CxFlowKnowledgeConnectorSettingsDataStoreConnection>(guardedValue, (value) => CxFlowKnowledgeConnectorSettingsDataStoreConnection.fromMap((value as Map).cast<String, dynamic>()))); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      targetFlow: (() { final guardedValue = map['targetFlow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetPage: (() { final guardedValue = map['targetPage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      triggerFulfillment: (() { final guardedValue = map['triggerFulfillment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CxFlowKnowledgeConnectorSettingsTriggerFulfillment.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

