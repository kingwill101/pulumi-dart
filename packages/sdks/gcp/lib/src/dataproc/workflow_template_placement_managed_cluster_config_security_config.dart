// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workflow_template_placement_managed_cluster_config_security_config_kerberos_config.dart';

class WorkflowTemplatePlacementManagedClusterConfigSecurityConfig {
  /// Kerberos related configuration.
  final pulumi.Input<WorkflowTemplatePlacementManagedClusterConfigSecurityConfigKerberosConfig>? kerberosConfig;

  /// Creates a new [WorkflowTemplatePlacementManagedClusterConfigSecurityConfig].
  /// [kerberosConfig] Kerberos related configuration.
  const WorkflowTemplatePlacementManagedClusterConfigSecurityConfig({
    this.kerberosConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kerberosConfig': ?pulumi.Input.mapOptionalInputValue<WorkflowTemplatePlacementManagedClusterConfigSecurityConfigKerberosConfig, Map<String, dynamic>>(kerberosConfig, (value) => value.toMap()),
    };
  }

  factory WorkflowTemplatePlacementManagedClusterConfigSecurityConfig.fromMap(Map<String, dynamic> map) {
    return WorkflowTemplatePlacementManagedClusterConfigSecurityConfig(
      kerberosConfig: (() { final guardedValue = map['kerberosConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkflowTemplatePlacementManagedClusterConfigSecurityConfigKerberosConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

