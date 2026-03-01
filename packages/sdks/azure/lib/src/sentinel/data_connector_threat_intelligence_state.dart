// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DataConnectorThreatIntelligence resources.
class DataConnectorThreatIntelligenceState {
  /// The ID of the Log Analytics Workspace that this Threat Intelligence Data Connector resides in. Changing this forces a new Threat Intelligence Data Connector to be created.
  final pulumi.Input<String>? logAnalyticsWorkspaceId;
  /// The lookback date for the this Threat Intelligence Data Connector in RFC3339. Defaults to `1970-01-01T00:00:00Z`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? lookbackDate;
  /// The name which should be used for this Threat Intelligence Data Connector. Changing this forces a new Threat Intelligence Data Connector to be created.
  final pulumi.Input<String>? name;
  /// The ID of the tenant that this Threat Intelligence Data Connector connects to. Changing this forces a new Threat Intelligence Data Connector to be created.
  ///
  /// > **Note:** Currently, only the same tenant as the running account is allowed. Cross-tenant scenario is not supported yet.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [DataConnectorThreatIntelligenceState].
  /// [logAnalyticsWorkspaceId] The ID of the Log Analytics Workspace that this Threat Intelligence Data Connector resides in. Changing this forces a new Threat Intelligence Data Connector to be created.
  /// [lookbackDate] The lookback date for the this Threat Intelligence Data Connector in RFC3339. Defaults to `1970-01-01T00:00:00Z`. Changing this forces a new resource to be created.
  /// [name] The name which should be used for this Threat Intelligence Data Connector. Changing this forces a new Threat Intelligence Data Connector to be created.
  /// [tenantId] The ID of the tenant that this Threat Intelligence Data Connector connects to. Changing this forces a new Threat Intelligence Data Connector to be created.
  DataConnectorThreatIntelligenceState({
    pulumi.Output<String>? logAnalyticsWorkspaceId,
    pulumi.Output<String>? lookbackDate,
    pulumi.Output<String>? name,
    pulumi.Output<String>? tenantId,
  }) :
      logAnalyticsWorkspaceId = pulumi.Input.asOptionalInput<String>(logAnalyticsWorkspaceId),
      lookbackDate = pulumi.Input.asOptionalInput<String>(lookbackDate),
      name = pulumi.Input.asOptionalInput<String>(name),
      tenantId = pulumi.Input.asOptionalInput<String>(tenantId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logAnalyticsWorkspaceId': ?logAnalyticsWorkspaceId,
      'lookbackDate': ?lookbackDate,
      'name': ?name,
      'tenantId': ?tenantId,
    };
  }

  factory DataConnectorThreatIntelligenceState.fromMap(Map<String, dynamic> map) {
    return DataConnectorThreatIntelligenceState(
      logAnalyticsWorkspaceId: map['logAnalyticsWorkspaceId'] == null ? null : pulumi.Output.create<String>(map['logAnalyticsWorkspaceId'] as String),
      lookbackDate: map['lookbackDate'] == null ? null : pulumi.Output.create<String>(map['lookbackDate'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      tenantId: map['tenantId'] == null ? null : pulumi.Output.create<String>(map['tenantId'] as String),
    );
  }
}

