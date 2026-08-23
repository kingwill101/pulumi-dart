// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkspaceEnhancedSecurityCompliance {
  /// Whether automatic cluster updates for this workspace is enabled.
  final pulumi.Input<bool> automaticClusterUpdateEnabled;
  /// Whether compliance security profile for this workspace is enabled.
  final pulumi.Input<bool> complianceSecurityProfileEnabled;
  /// A list of standards enforced on this workspace.
  final pulumi.Input<List<String>> complianceSecurityProfileStandards;
  /// Whether enhanced security monitoring for this workspace is enabled.
  final pulumi.Input<bool> enhancedSecurityMonitoringEnabled;

  /// Creates a new [GetWorkspaceEnhancedSecurityCompliance].
  /// [automaticClusterUpdateEnabled] Whether automatic cluster updates for this workspace is enabled.
  /// [complianceSecurityProfileEnabled] Whether compliance security profile for this workspace is enabled.
  /// [complianceSecurityProfileStandards] A list of standards enforced on this workspace.
  /// [enhancedSecurityMonitoringEnabled] Whether enhanced security monitoring for this workspace is enabled.
  const GetWorkspaceEnhancedSecurityCompliance({
    required this.automaticClusterUpdateEnabled,
    required this.complianceSecurityProfileEnabled,
    required this.complianceSecurityProfileStandards,
    required this.enhancedSecurityMonitoringEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automaticClusterUpdateEnabled': automaticClusterUpdateEnabled,
      'complianceSecurityProfileEnabled': complianceSecurityProfileEnabled,
      'complianceSecurityProfileStandards': complianceSecurityProfileStandards,
      'enhancedSecurityMonitoringEnabled': enhancedSecurityMonitoringEnabled,
    };
  }

  factory GetWorkspaceEnhancedSecurityCompliance.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceEnhancedSecurityCompliance(
      automaticClusterUpdateEnabled: pulumi.Input.fromValue(map['automaticClusterUpdateEnabled'] as bool),
      complianceSecurityProfileEnabled: pulumi.Input.fromValue(map['complianceSecurityProfileEnabled'] as bool),
      complianceSecurityProfileStandards: pulumi.Input.fromValue((map['complianceSecurityProfileStandards'] as List).cast<String>()),
      enhancedSecurityMonitoringEnabled: pulumi.Input.fromValue(map['enhancedSecurityMonitoringEnabled'] as bool),
    );
  }
}
