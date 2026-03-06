// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sentinel_data_connector_threat_intelligence_taxii_data_connector_threat_intelligence_taxii_args_doc}
/// The set of arguments for DataConnectorThreatIntelligenceTaxii.
/// {@endtemplate}
/// {@macro pulumi_sentinel_data_connector_threat_intelligence_taxii_data_connector_threat_intelligence_taxii_args_doc}
class DataConnectorThreatIntelligenceTaxiiArgs {
  /// The API root URI of the TAXII server.
  final pulumi.Input<String> apiRootUrl;
  /// The collection ID of the TAXII server.
  final pulumi.Input<String> collectionId;
  /// The friendly name which should be used for this Threat Intelligence TAXII Data Connector.
  final pulumi.Input<String> displayName;
  /// The ID of the Log Analytics Workspace that this Threat Intelligence TAXII Data Connector resides in. Changing this forces a new Threat Intelligence TAXII Data Connector to be created.
  final pulumi.Input<String> logAnalyticsWorkspaceId;
  /// The lookback date for the TAXII server in RFC3339. Defaults to `1970-01-01T00:00:00Z`.
  final pulumi.Input<String>? lookbackDate;
  /// The name which should be used for this Threat Intelligence TAXII Data Connector. Changing this forces a new Threat Intelligence TAXII Data Connector to be created.
  final pulumi.Input<String>? name;
  /// The password for the TAXII server.
  final pulumi.Input<String>? password;
  /// The polling frequency for the TAXII server. Possible values are `OnceAMinute`, `OnceAnHour` and `OnceADay`. Defaults to `OnceAnHour`.
  final pulumi.Input<String>? pollingFrequency;
  /// The ID of the tenant that this Threat Intelligence TAXII Data Connector connects to. Changing this forces a new Threat Intelligence TAXII Data Connector to be created.
  ///
  /// &gt; **Note:** Currently, only the same tenant as the running account is allowed. Cross-tenant scenario is not supported yet.
  final pulumi.Input<String>? tenantId;
  /// The user name for the TAXII server.
  final pulumi.Input<String>? userName;

  /// Creates a new [DataConnectorThreatIntelligenceTaxiiArgs].
  /// [apiRootUrl] The API root URI of the TAXII server.
  /// [collectionId] The collection ID of the TAXII server.
  /// [displayName] The friendly name which should be used for this Threat Intelligence TAXII Data Connector.
  /// [logAnalyticsWorkspaceId] The ID of the Log Analytics Workspace that this Threat Intelligence TAXII Data Connector resides in. Changing this forces a new Threat Intelligence TAXII Data Connector to be created.
  /// [lookbackDate] The lookback date for the TAXII server in RFC3339. Defaults to `1970-01-01T00:00:00Z`.
  /// [name] The name which should be used for this Threat Intelligence TAXII Data Connector. Changing this forces a new Threat Intelligence TAXII Data Connector to be created.
  /// [password] The password for the TAXII server.
  /// [pollingFrequency] The polling frequency for the TAXII server. Possible values are `OnceAMinute`, `OnceAnHour` and `OnceADay`. Defaults to `OnceAnHour`.
  /// [tenantId] The ID of the tenant that this Threat Intelligence TAXII Data Connector connects to. Changing this forces a new Threat Intelligence TAXII Data Connector to be created.
  /// [userName] The user name for the TAXII server.
  const DataConnectorThreatIntelligenceTaxiiArgs({
    required this.apiRootUrl,
    required this.collectionId,
    required this.displayName,
    required this.logAnalyticsWorkspaceId,
    this.lookbackDate,
    this.name,
    this.password,
    this.pollingFrequency,
    this.tenantId,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiRootUrl': apiRootUrl,
      'collectionId': collectionId,
      'displayName': displayName,
      'logAnalyticsWorkspaceId': logAnalyticsWorkspaceId,
      'lookbackDate': ?lookbackDate,
      'name': ?name,
      'password': ?password,
      'pollingFrequency': ?pollingFrequency,
      'tenantId': ?tenantId,
      'userName': ?userName,
    };
  }

  factory DataConnectorThreatIntelligenceTaxiiArgs.fromMap(Map<String, dynamic> map) {
    return DataConnectorThreatIntelligenceTaxiiArgs(
      apiRootUrl: pulumi.Input.fromValue(map['apiRootUrl'] as String),
      collectionId: pulumi.Input.fromValue(map['collectionId'] as String),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      logAnalyticsWorkspaceId: pulumi.Input.fromValue(map['logAnalyticsWorkspaceId'] as String),
      lookbackDate: (() { final guardedValue = map['lookbackDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pollingFrequency: (() { final guardedValue = map['pollingFrequency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userName: (() { final guardedValue = map['userName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

