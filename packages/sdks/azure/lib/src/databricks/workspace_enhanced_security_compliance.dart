// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkspaceEnhancedSecurityCompliance {
  /// Enables automatic cluster updates for this workspace. Defaults to `false`.
  final pulumi.Input<bool>? automaticClusterUpdateEnabled;
  /// Enables compliance security profile for this workspace. Defaults to `false`.
  ///
  /// &gt; **Note:** Changing the value of `compliance_security_profile_enabled` from `true` to `false` forces a replacement of the Databricks workspace.
  ///
  /// &gt; **Note:** The attributes `automatic_cluster_update_enabled` and `enhanced_security_monitoring_enabled` must be set to `true` in order to set `compliance_security_profile_enabled` to `true`.
  final pulumi.Input<bool>? complianceSecurityProfileEnabled;
  /// A list of standards to enforce on this workspace. Possible values include `HIPAA` and `PCI_DSS`.
  ///
  /// &gt; **Note:** `compliance_security_profile_enabled` must be set to `true` in order to use `compliance_security_profile_standards`.
  ///
  /// &gt; **Note:** Removing a standard from the `compliance_security_profile_standards` list forces a replacement of the Databricks workspace.
  final pulumi.Input<List<String>>? complianceSecurityProfileStandards;
  /// Enables enhanced security monitoring for this workspace. Defaults to `false`.
  final pulumi.Input<bool>? enhancedSecurityMonitoringEnabled;

  /// Creates a new [WorkspaceEnhancedSecurityCompliance].
  /// [automaticClusterUpdateEnabled] Enables automatic cluster updates for this workspace. Defaults to `false`.
  /// [complianceSecurityProfileEnabled] Enables compliance security profile for this workspace. Defaults to `false`.
  /// [complianceSecurityProfileStandards] A list of standards to enforce on this workspace. Possible values include `HIPAA` and `PCI_DSS`.
  /// [enhancedSecurityMonitoringEnabled] Enables enhanced security monitoring for this workspace. Defaults to `false`.
  const WorkspaceEnhancedSecurityCompliance({
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
      automaticClusterUpdateEnabled: (() { final guardedValue = map['automaticClusterUpdateEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      complianceSecurityProfileEnabled: (() { final guardedValue = map['complianceSecurityProfileEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      complianceSecurityProfileStandards: (() { final guardedValue = map['complianceSecurityProfileStandards']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      enhancedSecurityMonitoringEnabled: (() { final guardedValue = map['enhancedSecurityMonitoringEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

