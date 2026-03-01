// ignore_for_file: unused_element, unnecessary_cast

import 'binary_authorization_config.dart';
import 'security_posture_config.dart';

/// DefaultClusterConfig describes the default cluster configurations to be applied to all clusters born-in-fleet.
class DefaultClusterConfig {
  /// Optional. Enable/Disable binary authorization features for the cluster.
  final BinaryAuthorizationConfig? binaryAuthorizationConfig;
  /// Enable/Disable Security Posture features for the cluster.
  final SecurityPostureConfig? securityPostureConfig;

  /// Creates a new [DefaultClusterConfig].
  /// [binaryAuthorizationConfig] Optional. Enable/Disable binary authorization features for the cluster.
  /// [securityPostureConfig] Enable/Disable Security Posture features for the cluster.
  DefaultClusterConfig({
    this.binaryAuthorizationConfig,
    this.securityPostureConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'binaryAuthorizationConfig': ?binaryAuthorizationConfig == null ? null : binaryAuthorizationConfig!.toMap(),
      'securityPostureConfig': ?securityPostureConfig == null ? null : securityPostureConfig!.toMap(),
    };
  }

  factory DefaultClusterConfig.fromMap(Map<String, dynamic> map) {
    return DefaultClusterConfig(
      binaryAuthorizationConfig: map['binaryAuthorizationConfig'] == null ? null : BinaryAuthorizationConfig.fromMap((map['binaryAuthorizationConfig'] as Map).cast<String, dynamic>()),
      securityPostureConfig: map['securityPostureConfig'] == null ? null : SecurityPostureConfig.fromMap((map['securityPostureConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

