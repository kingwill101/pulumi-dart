// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sentinel_data_connector_microsoft_cloud_app_security_data_connector_microsoft_cloud_app_security_args_doc}
/// The set of arguments for DataConnectorMicrosoftCloudAppSecurity.
/// {@endtemplate}
/// {@macro pulumi_sentinel_data_connector_microsoft_cloud_app_security_data_connector_microsoft_cloud_app_security_args_doc}
class DataConnectorMicrosoftCloudAppSecurityArgs {
  /// Should the alerts be enabled? Defaults to `true`.
  final pulumi.Input<bool>? alertsEnabled;
  /// Should the Discovery Logs be enabled? Defaults to `true`.
  ///
  /// &gt; **Note:** One of either `alerts_enabled` or `discovery_logs_enabled` has to be specified.
  final pulumi.Input<bool>? discoveryLogsEnabled;
  /// The ID of the Log Analytics Workspace that this Microsoft Cloud App Security Data Connector resides in. Changing this forces a new Microsoft Cloud App Security Data Connector to be created.
  final pulumi.Input<String> logAnalyticsWorkspaceId;
  /// The name which should be used for this Microsoft Cloud App Security Data Connector. Changing this forces a new Microsoft Cloud App Security Data Connector to be created.
  final pulumi.Input<String>? name;
  /// The ID of the Tenant that this Microsoft Cloud App Security Data Connector connects to.
  ///
  /// &gt; **Note:** Currently, only the same tenant as the running account is allowed. Cross-tenant scenario is not supported yet.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [DataConnectorMicrosoftCloudAppSecurityArgs].
  /// [alertsEnabled] Should the alerts be enabled? Defaults to `true`.
  /// [discoveryLogsEnabled] Should the Discovery Logs be enabled? Defaults to `true`.
  /// [logAnalyticsWorkspaceId] The ID of the Log Analytics Workspace that this Microsoft Cloud App Security Data Connector resides in. Changing this forces a new Microsoft Cloud App Security Data Connector to be created.
  /// [name] The name which should be used for this Microsoft Cloud App Security Data Connector. Changing this forces a new Microsoft Cloud App Security Data Connector to be created.
  /// [tenantId] The ID of the Tenant that this Microsoft Cloud App Security Data Connector connects to.
  const DataConnectorMicrosoftCloudAppSecurityArgs({
    this.alertsEnabled,
    this.discoveryLogsEnabled,
    required this.logAnalyticsWorkspaceId,
    this.name,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertsEnabled': ?alertsEnabled,
      'discoveryLogsEnabled': ?discoveryLogsEnabled,
      'logAnalyticsWorkspaceId': logAnalyticsWorkspaceId,
      'name': ?name,
      'tenantId': ?tenantId,
    };
  }

  factory DataConnectorMicrosoftCloudAppSecurityArgs.fromMap(Map<String, dynamic> map) {
    return DataConnectorMicrosoftCloudAppSecurityArgs(
      alertsEnabled: (() { final guardedValue = map['alertsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      discoveryLogsEnabled: (() { final guardedValue = map['discoveryLogsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      logAnalyticsWorkspaceId: pulumi.Input.fromValue(map['logAnalyticsWorkspaceId'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

