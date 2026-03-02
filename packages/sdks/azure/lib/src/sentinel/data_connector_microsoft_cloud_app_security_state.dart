// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DataConnectorMicrosoftCloudAppSecurity resources.
class DataConnectorMicrosoftCloudAppSecurityState {
  /// Should the alerts be enabled? Defaults to `true`.
  final pulumi.Input<bool>? alertsEnabled;
  /// Should the Discovery Logs be enabled? Defaults to `true`.
  ///
  /// > **Note:** One of either `alerts_enabled` or `discovery_logs_enabled` has to be specified.
  final pulumi.Input<bool>? discoveryLogsEnabled;
  /// The ID of the Log Analytics Workspace that this Microsoft Cloud App Security Data Connector resides in. Changing this forces a new Microsoft Cloud App Security Data Connector to be created.
  final pulumi.Input<String>? logAnalyticsWorkspaceId;
  /// The name which should be used for this Microsoft Cloud App Security Data Connector. Changing this forces a new Microsoft Cloud App Security Data Connector to be created.
  final pulumi.Input<String>? name;
  /// The ID of the Tenant that this Microsoft Cloud App Security Data Connector connects to.
  ///
  /// > **Note:** Currently, only the same tenant as the running account is allowed. Cross-tenant scenario is not supported yet.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [DataConnectorMicrosoftCloudAppSecurityState].
  /// [alertsEnabled] Should the alerts be enabled? Defaults to `true`.
  /// [discoveryLogsEnabled] Should the Discovery Logs be enabled? Defaults to `true`.
  /// [logAnalyticsWorkspaceId] The ID of the Log Analytics Workspace that this Microsoft Cloud App Security Data Connector resides in. Changing this forces a new Microsoft Cloud App Security Data Connector to be created.
  /// [name] The name which should be used for this Microsoft Cloud App Security Data Connector. Changing this forces a new Microsoft Cloud App Security Data Connector to be created.
  /// [tenantId] The ID of the Tenant that this Microsoft Cloud App Security Data Connector connects to.
  DataConnectorMicrosoftCloudAppSecurityState({
    this.alertsEnabled,
    this.discoveryLogsEnabled,
    this.logAnalyticsWorkspaceId,
    this.name,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertsEnabled': ?alertsEnabled,
      'discoveryLogsEnabled': ?discoveryLogsEnabled,
      'logAnalyticsWorkspaceId': ?logAnalyticsWorkspaceId,
      'name': ?name,
      'tenantId': ?tenantId,
    };
  }

  factory DataConnectorMicrosoftCloudAppSecurityState.fromMap(Map<String, dynamic> map) {
    return DataConnectorMicrosoftCloudAppSecurityState(
      alertsEnabled: map['alertsEnabled'] == null ? null : (map['alertsEnabled'] as bool).input(),
      discoveryLogsEnabled: map['discoveryLogsEnabled'] == null ? null : (map['discoveryLogsEnabled'] as bool).input(),
      logAnalyticsWorkspaceId: map['logAnalyticsWorkspaceId'] == null ? null : (map['logAnalyticsWorkspaceId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId'] as String).input(),
    );
  }
}

