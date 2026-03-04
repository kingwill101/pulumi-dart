// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sentinel_data_connector_microsoft_threat_protection_data_connector_microsoft_threat_protection_args_doc}
/// The set of arguments for DataConnectorMicrosoftThreatProtection.
/// {@endtemplate}
/// {@macro pulumi_sentinel_data_connector_microsoft_threat_protection_data_connector_microsoft_threat_protection_args_doc}
class DataConnectorMicrosoftThreatProtectionArgs {
  /// The ID of the Log Analytics Workspace that this Microsoft Threat Protection Data Connector resides in. Changing this forces a new Microsoft Threat Protection Data Connector to be created.
  final pulumi.Input<String> logAnalyticsWorkspaceId;

  /// The name which should be used for this Microsoft Threat Protection Data Connector. Changing this forces a new Microsoft Threat Protection Data Connector to be created.
  final pulumi.Input<String>? name;

  /// The ID of the tenant that this Microsoft Threat Protection Data Connector connects to. Changing this forces a new Microsoft Threat Protection Data Connector to be created.
  ///
  /// &gt; **Note:** Currently, only the same tenant as the running account is allowed. Cross-tenant scenario is not supported yet.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [DataConnectorMicrosoftThreatProtectionArgs].
  /// [logAnalyticsWorkspaceId] The ID of the Log Analytics Workspace that this Microsoft Threat Protection Data Connector resides in. Changing this forces a new Microsoft Threat Protection Data Connector to be created.
  /// [name] The name which should be used for this Microsoft Threat Protection Data Connector. Changing this forces a new Microsoft Threat Protection Data Connector to be created.
  /// [tenantId] The ID of the tenant that this Microsoft Threat Protection Data Connector connects to. Changing this forces a new Microsoft Threat Protection Data Connector to be created.
  DataConnectorMicrosoftThreatProtectionArgs({
    required this.logAnalyticsWorkspaceId,
    this.name,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logAnalyticsWorkspaceId': logAnalyticsWorkspaceId,
      'name': ?name,
      'tenantId': ?tenantId,
    };
  }

  factory DataConnectorMicrosoftThreatProtectionArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return DataConnectorMicrosoftThreatProtectionArgs(
      logAnalyticsWorkspaceId: pulumi.Input.fromValue(
        map['logAnalyticsWorkspaceId'] as String,
      ),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tenantId: (() {
        final guardedValue = map['tenantId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
