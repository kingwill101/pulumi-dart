// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workflow_template_placement_managed_cluster_config_security_config_kerberos_config.dart';

class WorkflowTemplatePlacementManagedClusterConfigSecurityConfig {
  /// Kerberos related configuration.
  final pulumi.Input<WorkflowTemplatePlacementManagedClusterConfigSecurityConfigKerberosConfig>? kerberosConfig;

  /// Creates a new [WorkflowTemplatePlacementManagedClusterConfigSecurityConfig].
  /// [kerberosConfig] Kerberos related configuration.
  WorkflowTemplatePlacementManagedClusterConfigSecurityConfig({
    this.kerberosConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kerberosConfig': ?pulumi.Input.mapOptionalInputValue<WorkflowTemplatePlacementManagedClusterConfigSecurityConfigKerberosConfig, Map<String, dynamic>>(kerberosConfig, (value) => value.toMap()),
    };
  }

  factory WorkflowTemplatePlacementManagedClusterConfigSecurityConfig.fromMap(Map<String, dynamic> map) {
    return WorkflowTemplatePlacementManagedClusterConfigSecurityConfig(
      kerberosConfig: map['kerberosConfig'] == null ? null : (WorkflowTemplatePlacementManagedClusterConfigSecurityConfigKerberosConfig.fromMap((map['kerberosConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

