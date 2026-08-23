// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityinsights_get_threat_intelligence_indicator_args_doc}
/// Arguments for getThreatIntelligenceIndicator.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_get_threat_intelligence_indicator_args_doc}
class GetThreatIntelligenceIndicatorArgs {
  /// Threat intelligence indicator name field.
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetThreatIntelligenceIndicatorArgs].
  /// [name] Threat intelligence indicator name field.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] The name of the workspace.
  const GetThreatIntelligenceIndicatorArgs({
    required this.name,
    required this.resourceGroupName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetThreatIntelligenceIndicatorArgs.fromMap(Map<String, dynamic> map) {
    return GetThreatIntelligenceIndicatorArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
