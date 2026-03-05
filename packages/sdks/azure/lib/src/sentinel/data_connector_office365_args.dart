// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sentinel_data_connector_office365_data_connector_office365_args_doc}
/// The set of arguments for DataConnectorOffice365.
/// {@endtemplate}
/// {@macro pulumi_sentinel_data_connector_office365_data_connector_office365_args_doc}
class DataConnectorOffice365Args {
  /// Should the Exchange data connector be enabled? Defaults to `true`.
  final pulumi.Input<bool>? exchangeEnabled;
  /// The ID of the Log Analytics Workspace that this Office 365 Data Connector resides in. Changing this forces a new Office 365 Data Connector to be created.
  final pulumi.Input<String> logAnalyticsWorkspaceId;
  /// The name which should be used for this Office 365 Data Connector. Changing this forces a new Office 365 Data Connector to be created.
  final pulumi.Input<String>? name;
  /// Should the SharePoint data connector be enabled? Defaults to `true`.
  final pulumi.Input<bool>? sharepointEnabled;
  /// Should the Microsoft Teams data connector be enabled? Defaults to `true`.
  ///
  /// &gt; **Note:** At least one of `exchange_enabled`, `sharedpoint_enabled` and `teams_enabled` has to be specified.
  final pulumi.Input<bool>? teamsEnabled;
  /// The ID of the Tenant that this Office 365 Data Connector connects to. Changing this forces a new Office 365 Data Connector to be created.
  ///
  /// &gt; **Note:** Currently, only the same tenant as the running account is allowed. Cross-tenant scenario is not supported yet.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [DataConnectorOffice365Args].
  /// [exchangeEnabled] Should the Exchange data connector be enabled? Defaults to `true`.
  /// [logAnalyticsWorkspaceId] The ID of the Log Analytics Workspace that this Office 365 Data Connector resides in. Changing this forces a new Office 365 Data Connector to be created.
  /// [name] The name which should be used for this Office 365 Data Connector. Changing this forces a new Office 365 Data Connector to be created.
  /// [sharepointEnabled] Should the SharePoint data connector be enabled? Defaults to `true`.
  /// [teamsEnabled] Should the Microsoft Teams data connector be enabled? Defaults to `true`.
  /// [tenantId] The ID of the Tenant that this Office 365 Data Connector connects to. Changing this forces a new Office 365 Data Connector to be created.
  DataConnectorOffice365Args({
    this.exchangeEnabled,
    required this.logAnalyticsWorkspaceId,
    this.name,
    this.sharepointEnabled,
    this.teamsEnabled,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exchangeEnabled': ?exchangeEnabled,
      'logAnalyticsWorkspaceId': logAnalyticsWorkspaceId,
      'name': ?name,
      'sharepointEnabled': ?sharepointEnabled,
      'teamsEnabled': ?teamsEnabled,
      'tenantId': ?tenantId,
    };
  }

  factory DataConnectorOffice365Args.fromMap(Map<String, dynamic> map) {
    return DataConnectorOffice365Args(
      exchangeEnabled: (() { final guardedValue = map['exchangeEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      logAnalyticsWorkspaceId: pulumi.Input.fromValue(map['logAnalyticsWorkspaceId'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sharepointEnabled: (() { final guardedValue = map['sharepointEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      teamsEnabled: (() { final guardedValue = map['teamsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

