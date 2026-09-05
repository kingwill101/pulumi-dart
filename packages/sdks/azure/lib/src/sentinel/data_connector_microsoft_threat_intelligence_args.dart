// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sentinel_data_connector_microsoft_threat_intelligence_data_connector_microsoft_threat_intelligence_args_doc}
/// The set of arguments for DataConnectorMicrosoftThreatIntelligence.
/// {@endtemplate}
/// {@macro pulumi_sentinel_data_connector_microsoft_threat_intelligence_data_connector_microsoft_threat_intelligence_args_doc}
class DataConnectorMicrosoftThreatIntelligenceArgs {
  /// The ID of the Log Analytics Workspace. Changing this forces a new Data Connector to be created.
  final pulumi.Input<String> logAnalyticsWorkspaceId;
  /// The lookback date for the Microsoft Emerging Threat Feed in RFC3339. Changing this forces a new Data Connector to be created.
  final pulumi.Input<String> microsoftEmergingThreatFeedLookbackDate;
  /// The name which should be used for this Microsoft Threat Intelligence Data Connector. Changing this forces a new Microsoft Threat Intelligence Data Connector to be created.
  final pulumi.Input<String?>? name;
  /// The ID of the tenant that this Microsoft Threat Intelligence Data Connector connects to. Changing this forces a new Microsoft Threat Intelligence Data Connector to be created.
  ///
  /// &gt; **Note:** Currently, only the same tenant as the running account is allowed. Cross-tenant scenario is not supported yet.
  final pulumi.Input<String?>? tenantId;

  /// Creates a new [DataConnectorMicrosoftThreatIntelligenceArgs].
  /// [logAnalyticsWorkspaceId] The ID of the Log Analytics Workspace. Changing this forces a new Data Connector to be created.
  /// [microsoftEmergingThreatFeedLookbackDate] The lookback date for the Microsoft Emerging Threat Feed in RFC3339. Changing this forces a new Data Connector to be created.
  /// [name] The name which should be used for this Microsoft Threat Intelligence Data Connector. Changing this forces a new Microsoft Threat Intelligence Data Connector to be created.
  /// [tenantId] The ID of the tenant that this Microsoft Threat Intelligence Data Connector connects to. Changing this forces a new Microsoft Threat Intelligence Data Connector to be created.
  const DataConnectorMicrosoftThreatIntelligenceArgs({
    required this.logAnalyticsWorkspaceId,
    required this.microsoftEmergingThreatFeedLookbackDate,
    this.name,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logAnalyticsWorkspaceId': logAnalyticsWorkspaceId,
      'microsoftEmergingThreatFeedLookbackDate': microsoftEmergingThreatFeedLookbackDate,
      'name': ?name,
      'tenantId': ?tenantId,
    };
  }

  factory DataConnectorMicrosoftThreatIntelligenceArgs.fromMap(Map<String, dynamic> map) {
    return DataConnectorMicrosoftThreatIntelligenceArgs(
      logAnalyticsWorkspaceId: pulumi.Input.fromValue(map['logAnalyticsWorkspaceId'] as String),
      microsoftEmergingThreatFeedLookbackDate: pulumi.Input.fromValue(map['microsoftEmergingThreatFeedLookbackDate'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
