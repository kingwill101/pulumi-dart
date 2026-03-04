// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sentinel_data_connector_threat_intelligence_data_connector_threat_intelligence_args_doc}
/// The set of arguments for DataConnectorThreatIntelligence.
/// {@endtemplate}
/// {@macro pulumi_sentinel_data_connector_threat_intelligence_data_connector_threat_intelligence_args_doc}
class DataConnectorThreatIntelligenceArgs {
  /// The ID of the Log Analytics Workspace that this Threat Intelligence Data Connector resides in. Changing this forces a new Threat Intelligence Data Connector to be created.
  final pulumi.Input<String> logAnalyticsWorkspaceId;

  /// The lookback date for the this Threat Intelligence Data Connector in RFC3339. Defaults to `1970-01-01T00:00:00Z`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? lookbackDate;

  /// The name which should be used for this Threat Intelligence Data Connector. Changing this forces a new Threat Intelligence Data Connector to be created.
  final pulumi.Input<String>? name;

  /// The ID of the tenant that this Threat Intelligence Data Connector connects to. Changing this forces a new Threat Intelligence Data Connector to be created.
  ///
  /// &gt; **Note:** Currently, only the same tenant as the running account is allowed. Cross-tenant scenario is not supported yet.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [DataConnectorThreatIntelligenceArgs].
  /// [logAnalyticsWorkspaceId] The ID of the Log Analytics Workspace that this Threat Intelligence Data Connector resides in. Changing this forces a new Threat Intelligence Data Connector to be created.
  /// [lookbackDate] The lookback date for the this Threat Intelligence Data Connector in RFC3339. Defaults to `1970-01-01T00:00:00Z`. Changing this forces a new resource to be created.
  /// [name] The name which should be used for this Threat Intelligence Data Connector. Changing this forces a new Threat Intelligence Data Connector to be created.
  /// [tenantId] The ID of the tenant that this Threat Intelligence Data Connector connects to. Changing this forces a new Threat Intelligence Data Connector to be created.
  DataConnectorThreatIntelligenceArgs({
    required this.logAnalyticsWorkspaceId,
    this.lookbackDate,
    this.name,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logAnalyticsWorkspaceId': logAnalyticsWorkspaceId,
      'lookbackDate': ?lookbackDate,
      'name': ?name,
      'tenantId': ?tenantId,
    };
  }

  factory DataConnectorThreatIntelligenceArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return DataConnectorThreatIntelligenceArgs(
      logAnalyticsWorkspaceId: pulumi.Input.fromValue(
        map['logAnalyticsWorkspaceId'] as String,
      ),
      lookbackDate: (() {
        final guardedValue = map['lookbackDate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
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
