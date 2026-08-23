// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'binary_authorization_config.dart';
import 'security_posture_config.dart';

/// DefaultClusterConfig describes the default cluster configurations to be applied to all clusters born-in-fleet.
class DefaultClusterConfig {
  /// Optional. Enable/Disable binary authorization features for the cluster.
  final pulumi.Input<BinaryAuthorizationConfig>? binaryAuthorizationConfig;
  /// Enable/Disable Security Posture features for the cluster.
  final pulumi.Input<SecurityPostureConfig>? securityPostureConfig;

  /// Creates a new [DefaultClusterConfig].
  /// [binaryAuthorizationConfig] Optional. Enable/Disable binary authorization features for the cluster.
  /// [securityPostureConfig] Enable/Disable Security Posture features for the cluster.
  const DefaultClusterConfig({
    this.binaryAuthorizationConfig,
    this.securityPostureConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'binaryAuthorizationConfig': ?pulumi.Input.mapOptionalInputValue<BinaryAuthorizationConfig, Map<String, dynamic>>(binaryAuthorizationConfig, (value) => value.toMap()),
      'securityPostureConfig': ?pulumi.Input.mapOptionalInputValue<SecurityPostureConfig, Map<String, dynamic>>(securityPostureConfig, (value) => value.toMap()),
    };
  }

  factory DefaultClusterConfig.fromMap(Map<String, dynamic> map) {
    return DefaultClusterConfig(
      binaryAuthorizationConfig: (() { final guardedValue = map['binaryAuthorizationConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BinaryAuthorizationConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      securityPostureConfig: (() { final guardedValue = map['securityPostureConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecurityPostureConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
