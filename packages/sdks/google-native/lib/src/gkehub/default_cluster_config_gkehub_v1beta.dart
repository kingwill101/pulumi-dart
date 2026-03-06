// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'binary_authorization_config_gkehub_v1beta.dart';
import 'security_posture_config_gkehub_v1beta.dart';

/// DefaultClusterConfig describes the default cluster configurations to be applied to all clusters born-in-fleet.
class DefaultClusterConfigGkehubV1beta {
  /// Optional. Enable/Disable binary authorization features for the cluster.
  final pulumi.Input<BinaryAuthorizationConfigGkehubV1beta>? binaryAuthorizationConfig;
  /// Enable/Disable Security Posture features for the cluster.
  final pulumi.Input<SecurityPostureConfigGkehubV1beta>? securityPostureConfig;

  /// Creates a new [DefaultClusterConfigGkehubV1beta].
  /// [binaryAuthorizationConfig] Optional. Enable/Disable binary authorization features for the cluster.
  /// [securityPostureConfig] Enable/Disable Security Posture features for the cluster.
  const DefaultClusterConfigGkehubV1beta({
    this.binaryAuthorizationConfig,
    this.securityPostureConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'binaryAuthorizationConfig': ?pulumi.Input.mapOptionalInputValue<BinaryAuthorizationConfigGkehubV1beta, Map<String, dynamic>>(binaryAuthorizationConfig, (value) => value.toMap()),
      'securityPostureConfig': ?pulumi.Input.mapOptionalInputValue<SecurityPostureConfigGkehubV1beta, Map<String, dynamic>>(securityPostureConfig, (value) => value.toMap()),
    };
  }

  factory DefaultClusterConfigGkehubV1beta.fromMap(Map<String, dynamic> map) {
    return DefaultClusterConfigGkehubV1beta(
      binaryAuthorizationConfig: (() { final guardedValue = map['binaryAuthorizationConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BinaryAuthorizationConfigGkehubV1beta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      securityPostureConfig: (() { final guardedValue = map['securityPostureConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecurityPostureConfigGkehubV1beta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

