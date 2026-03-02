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
  GetWorkspaceEnhancedSecurityCompliance({
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
      automaticClusterUpdateEnabled: (map['automaticClusterUpdateEnabled'] as bool).input(),
      complianceSecurityProfileEnabled: (map['complianceSecurityProfileEnabled'] as bool).input(),
      complianceSecurityProfileStandards: ((map['complianceSecurityProfileStandards'] as List).cast<String>()).input(),
      enhancedSecurityMonitoringEnabled: (map['enhancedSecurityMonitoringEnabled'] as bool).input(),
    );
  }
}

