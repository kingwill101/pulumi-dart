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
    pulumi.Output<String>? logAnalyticsWorkspaceId,
    pulumi.Output<String>? microsoftEmergingThreatFeedLookbackDate,
    pulumi.Output<String>? name,
    pulumi.Output<String>? tenantId,
  }) :
      logAnalyticsWorkspaceId = pulumi.Input.asOptionalInput<String>(logAnalyticsWorkspaceId),
      microsoftEmergingThreatFeedLookbackDate = pulumi.Input.asOptionalInput<String>(microsoftEmergingThreatFeedLookbackDate),
      name = pulumi.Input.asOptionalInput<String>(name),
      tenantId = pulumi.Input.asOptionalInput<String>(tenantId);

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
      logAnalyticsWorkspaceId: map['logAnalyticsWorkspaceId'] == null ? null : pulumi.Output.create<String>(map['logAnalyticsWorkspaceId'] as String),
      microsoftEmergingThreatFeedLookbackDate: map['microsoftEmergingThreatFeedLookbackDate'] == null ? null : pulumi.Output.create<String>(map['microsoftEmergingThreatFeedLookbackDate'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      tenantId: map['tenantId'] == null ? null : pulumi.Output.create<String>(map['tenantId'] as String),
    );
  }
}

