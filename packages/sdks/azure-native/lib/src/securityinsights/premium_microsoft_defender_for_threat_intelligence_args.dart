// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'premium_mdti_data_connector_data_types.dart';

/// {@template pulumi_securityinsights_premium_microsoft_defender_for_threat_intelligence_args_doc}
/// The set of arguments for PremiumMicrosoftDefenderForThreatIntelligence.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_premium_microsoft_defender_for_threat_intelligence_args_doc}
class PremiumMicrosoftDefenderForThreatIntelligenceArgs {
  /// Connector ID
  final pulumi.Input<String>? dataConnectorId;

  /// The available data types for the connector.
  final pulumi.Input<PremiumMdtiDataConnectorDataTypes> dataTypes;

  /// The kind of the data connector
  /// Expected value is 'PremiumMicrosoftDefenderForThreatIntelligence'.
  final pulumi.Input<String> kind;

  /// The lookback period for the feed to be imported. The date-time to begin importing the feed from, for example: 2024-01-01T00:00:00.000Z.
  final pulumi.Input<String> lookbackPeriod;

  /// The flag to indicate whether the tenant has the premium SKU required to access this connector.
  final pulumi.Input<bool>? requiredSKUsPresent;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// The tenant id to connect to, and get the data from.
  final pulumi.Input<String> tenantId;

  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [PremiumMicrosoftDefenderForThreatIntelligenceArgs].
  /// [dataConnectorId] Connector ID
  /// [dataTypes] The available data types for the connector.
  /// [kind] The kind of the data connector
  /// [lookbackPeriod] The lookback period for the feed to be imported. The date-time to begin importing the feed from, for example: 2024-01-01T00:00:00.000Z.
  /// [requiredSKUsPresent] The flag to indicate whether the tenant has the premium SKU required to access this connector.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tenantId] The tenant id to connect to, and get the data from.
  /// [workspaceName] The name of the workspace.
  PremiumMicrosoftDefenderForThreatIntelligenceArgs({
    this.dataConnectorId,
    required this.dataTypes,
    required this.kind,
    required this.lookbackPeriod,
    this.requiredSKUsPresent,
    required this.resourceGroupName,
    required this.tenantId,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataConnectorId': ?dataConnectorId,
      'dataTypes':
          pulumi.Input.mapInputValue<
            PremiumMdtiDataConnectorDataTypes,
            Map<String, dynamic>
          >(dataTypes, (value) => value.toMap()),
      'kind': kind,
      'lookbackPeriod': lookbackPeriod,
      'requiredSKUsPresent': ?requiredSKUsPresent,
      'resourceGroupName': resourceGroupName,
      'tenantId': tenantId,
      'workspaceName': workspaceName,
    };
  }

  factory PremiumMicrosoftDefenderForThreatIntelligenceArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return PremiumMicrosoftDefenderForThreatIntelligenceArgs(
      dataConnectorId: (() {
        final guardedValue = map['dataConnectorId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dataTypes: pulumi.Input.fromValue(
        PremiumMdtiDataConnectorDataTypes.fromMap(
          (map['dataTypes']! as Map).cast<String, dynamic>(),
        ),
      ),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      lookbackPeriod: pulumi.Input.fromValue(map['lookbackPeriod'] as String),
      requiredSKUsPresent: (() {
        final guardedValue = map['requiredSKUsPresent'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
