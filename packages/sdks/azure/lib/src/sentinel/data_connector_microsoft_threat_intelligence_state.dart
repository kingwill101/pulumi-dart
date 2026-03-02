// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DataConnectorMicrosoftThreatIntelligence resources.
class DataConnectorMicrosoftThreatIntelligenceState {
  /// The ID of the Log Analytics Workspace. Changing this forces a new Data Connector to be created.
  final pulumi.Input<String>? logAnalyticsWorkspaceId;
  /// The lookback date for the Microsoft Emerging Threat Feed in RFC3339. Changing this forces a new Data Connector to be created.
  final pulumi.Input<String>? microsoftEmergingThreatFeedLookbackDate;
  /// The name which should be used for this Microsoft Threat Intelligence Data Connector. Changing this forces a new Microsoft Threat Intelligence Data Connector to be created.
  final pulumi.Input<String>? name;
  /// The ID of the tenant that this Microsoft Threat Intelligence Data Connector connects to. Changing this forces a new Microsoft Threat Intelligence Data Connector to be created.
  ///
  /// > **Note:** Currently, only the same tenant as the running account is allowed. Cross-tenant scenario is not supported yet.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [DataConnectorMicrosoftThreatIntelligenceState].
  /// [logAnalyticsWorkspaceId] The ID of the Log Analytics Workspace. Changing this forces a new Data Connector to be created.
  /// [microsoftEmergingThreatFeedLookbackDate] The lookback date for the Microsoft Emerging Threat Feed in RFC3339. Changing this forces a new Data Connector to be created.
  /// [name] The name which should be used for this Microsoft Threat Intelligence Data Connector. Changing this forces a new Microsoft Threat Intelligence Data Connector to be created.
  /// [tenantId] The ID of the tenant that this Microsoft Threat Intelligence Data Connector connects to. Changing this forces a new Microsoft Threat Intelligence Data Connector to be created.
  DataConnectorMicrosoftThreatIntelligenceState({
    this.logAnalyticsWorkspaceId,
    this.microsoftEmergingThreatFeedLookbackDate,
    this.name,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logAnalyticsWorkspaceId': ?logAnalyticsWorkspaceId,
      'microsoftEmergingThreatFeedLookbackDate': ?microsoftEmergingThreatFeedLookbackDate,
      'name': ?name,
      'tenantId': ?tenantId,
    };
  }

  factory DataConnectorMicrosoftThreatIntelligenceState.fromMap(Map<String, dynamic> map) {
    return DataConnectorMicrosoftThreatIntelligenceState(
      logAnalyticsWorkspaceId: map['logAnalyticsWorkspaceId'] == null ? null : (map['logAnalyticsWorkspaceId'] as String).input(),
      microsoftEmergingThreatFeedLookbackDate: map['microsoftEmergingThreatFeedLookbackDate'] == null ? null : (map['microsoftEmergingThreatFeedLookbackDate'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId'] as String).input(),
    );
  }
}

