// ignore_for_file: unused_element, unnecessary_cast

import 'binary_authorization_config_gkehub_v1alpha.dart';
import 'security_posture_config_gkehub_v1alpha.dart';

/// DefaultClusterConfig describes the default cluster configurations to be applied to all clusters born-in-fleet.
class DefaultClusterConfigGkehubV1alpha {
  /// Optional. Enable/Disable binary authorization features for the cluster.
  final BinaryAuthorizationConfigGkehubV1alpha? binaryAuthorizationConfig;
  /// Enable/Disable Security Posture features for the cluster.
  final SecurityPostureConfigGkehubV1alpha? securityPostureConfig;

  /// Creates a new [DefaultClusterConfigGkehubV1alpha].
  /// [binaryAuthorizationConfig] Optional. Enable/Disable binary authorization features for the cluster.
  /// [securityPostureConfig] Enable/Disable Security Posture features for the cluster.
  DefaultClusterConfigGkehubV1alpha({
    this.binaryAuthorizationConfig,
    this.securityPostureConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'binaryAuthorizationConfig': ?binaryAuthorizationConfig == null ? null : binaryAuthorizationConfig!.toMap(),
      'securityPostureConfig': ?securityPostureConfig == null ? null : securityPostureConfig!.toMap(),
    };
  }

  factory DefaultClusterConfigGkehubV1alpha.fromMap(Map<String, dynamic> map) {
    return DefaultClusterConfigGkehubV1alpha(
      binaryAuthorizationConfig: map['binaryAuthorizationConfig'] == null ? null : BinaryAuthorizationConfigGkehubV1alpha.fromMap((map['binaryAuthorizationConfig'] as Map).cast<String, dynamic>()),
      securityPostureConfig: map['securityPostureConfig'] == null ? null : SecurityPostureConfigGkehubV1alpha.fromMap((map['securityPostureConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

