// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_cluster_config_security_config_identity_config.dart';
import 'cluster_cluster_config_security_config_kerberos_config.dart';

class ClusterClusterConfigSecurityConfig {
  /// Identity Configuration. At least one of `identity_config`
  /// or `kerberos_config` is required.
  final pulumi.Input<ClusterClusterConfigSecurityConfigIdentityConfig>? identityConfig;
  /// Kerberos Configuration. At least one of `identity_config`
  /// or `kerberos_config` is required.
  final pulumi.Input<ClusterClusterConfigSecurityConfigKerberosConfig>? kerberosConfig;

  /// Creates a new [ClusterClusterConfigSecurityConfig].
  /// [identityConfig] Identity Configuration. At least one of `identity_config`
  /// [kerberosConfig] Kerberos Configuration. At least one of `identity_config`
  ClusterClusterConfigSecurityConfig({
    this.identityConfig,
    this.kerberosConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityConfig': ?pulumi.Input.mapOptionalInputValue<ClusterClusterConfigSecurityConfigIdentityConfig, Map<String, dynamic>>(identityConfig, (value) => value.toMap()),
      'kerberosConfig': ?pulumi.Input.mapOptionalInputValue<ClusterClusterConfigSecurityConfigKerberosConfig, Map<String, dynamic>>(kerberosConfig, (value) => value.toMap()),
    };
  }

  factory ClusterClusterConfigSecurityConfig.fromMap(Map<String, dynamic> map) {
    return ClusterClusterConfigSecurityConfig(
      identityConfig: (() { final guardedValue = map['identityConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterClusterConfigSecurityConfigIdentityConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kerberosConfig: (() { final guardedValue = map['kerberosConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterClusterConfigSecurityConfigKerberosConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

