// ignore_for_file: unused_element, unnecessary_cast


class GetWorkspaceEnhancedSecurityCompliance {
  /// Whether automatic cluster updates for this workspace is enabled.
  final bool automaticClusterUpdateEnabled;
  /// Whether compliance security profile for this workspace is enabled.
  final bool complianceSecurityProfileEnabled;
  /// A list of standards enforced on this workspace.
  final List<String> complianceSecurityProfileStandards;
  /// Whether enhanced security monitoring for this workspace is enabled.
  final bool enhancedSecurityMonitoringEnabled;

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
      automaticClusterUpdateEnabled: map['automaticClusterUpdateEnabled'] as bool,
      complianceSecurityProfileEnabled: map['complianceSecurityProfileEnabled'] as bool,
      complianceSecurityProfileStandards: (map['complianceSecurityProfileStandards'] as List).cast<String>(),
      enhancedSecurityMonitoringEnabled: map['enhancedSecurityMonitoringEnabled'] as bool,
    );
  }
}

