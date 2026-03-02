// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkspaceEnhancedSecurityCompliance {
  /// Enables automatic cluster updates for this workspace. Defaults to `false`.
  final pulumi.Input<bool>? automaticClusterUpdateEnabled;
  /// Enables compliance security profile for this workspace. Defaults to `false`.
  ///
  /// > **Note:** Changing the value of `compliance_security_profile_enabled` from `true` to `false` forces a replacement of the Databricks workspace.
  ///
  /// > **Note:** The attributes `automatic_cluster_update_enabled` and `enhanced_security_monitoring_enabled` must be set to `true` in order to set `compliance_security_profile_enabled` to `true`.
  final pulumi.Input<bool>? complianceSecurityProfileEnabled;
  /// A list of standards to enforce on this workspace. Possible values include `HIPAA` and `PCI_DSS`.
  ///
  /// > **Note:** `compliance_security_profile_enabled` must be set to `true` in order to use `compliance_security_profile_standards`.
  ///
  /// > **Note:** Removing a standard from the `compliance_security_profile_standards` list forces a replacement of the Databricks workspace.
  final pulumi.Input<List<String>>? complianceSecurityProfileStandards;
  /// Enables enhanced security monitoring for this workspace. Defaults to `false`.
  final pulumi.Input<bool>? enhancedSecurityMonitoringEnabled;

  /// Creates a new [WorkspaceEnhancedSecurityCompliance].
  /// [automaticClusterUpdateEnabled] Enables automatic cluster updates for this workspace. Defaults to `false`.
  /// [complianceSecurityProfileEnabled] Enables compliance security profile for this workspace. Defaults to `false`.
  /// [complianceSecurityProfileStandards] A list of standards to enforce on this workspace. Possible values include `HIPAA` and `PCI_DSS`.
  /// [enhancedSecurityMonitoringEnabled] Enables enhanced security monitoring for this workspace. Defaults to `false`.
  WorkspaceEnhancedSecurityCompliance({
    this.automaticClusterUpdateEnabled,
    this.complianceSecurityProfileEnabled,
    this.complianceSecurityProfileStandards,
    this.enhancedSecurityMonitoringEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automaticClusterUpdateEnabled': ?automaticClusterUpdateEnabled,
      'complianceSecurityProfileEnabled': ?complianceSecurityProfileEnabled,
      'complianceSecurityProfileStandards': ?complianceSecurityProfileStandards,
      'enhancedSecurityMonitoringEnabled': ?enhancedSecurityMonitoringEnabled,
    };
  }

  factory WorkspaceEnhancedSecurityCompliance.fromMap(Map<String, dynamic> map) {
    return WorkspaceEnhancedSecurityCompliance(
      automaticClusterUpdateEnabled: map['automaticClusterUpdateEnabled'] == null ? null : (map['automaticClusterUpdateEnabled'] as bool).input(),
      complianceSecurityProfileEnabled: map['complianceSecurityProfileEnabled'] == null ? null : (map['complianceSecurityProfileEnabled'] as bool).input(),
      complianceSecurityProfileStandards: map['complianceSecurityProfileStandards'] == null ? null : ((map['complianceSecurityProfileStandards'] as List).cast<String>()).input(),
      enhancedSecurityMonitoringEnabled: map['enhancedSecurityMonitoringEnabled'] == null ? null : (map['enhancedSecurityMonitoringEnabled'] as bool).input(),
    );
  }
}

