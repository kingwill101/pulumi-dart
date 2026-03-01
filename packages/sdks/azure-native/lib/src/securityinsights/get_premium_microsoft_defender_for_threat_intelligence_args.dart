// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityinsights_get_premium_microsoft_defender_for_threat_intelligence_args_doc}
/// Arguments for getPremiumMicrosoftDefenderForThreatIntelligence.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_get_premium_microsoft_defender_for_threat_intelligence_args_doc}
class GetPremiumMicrosoftDefenderForThreatIntelligenceArgs {
  /// Connector ID
  final pulumi.Input<String> dataConnectorId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetPremiumMicrosoftDefenderForThreatIntelligenceArgs].
  /// [dataConnectorId] Connector ID
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] The name of the workspace.
  GetPremiumMicrosoftDefenderForThreatIntelligenceArgs({
    required pulumi.Output<String> dataConnectorId,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> workspaceName,
  }) :
      dataConnectorId = pulumi.Input.asInput<String>(dataConnectorId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataConnectorId': dataConnectorId,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetPremiumMicrosoftDefenderForThreatIntelligenceArgs.fromMap(Map<String, dynamic> map) {
    return GetPremiumMicrosoftDefenderForThreatIntelligenceArgs(
      dataConnectorId: pulumi.Output.create<String>(map['dataConnectorId'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

