// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'binary_authorization_config_response_gkehub_v1alpha.dart';
import 'security_posture_config_response_gkehub_v1alpha.dart';

/// DefaultClusterConfig describes the default cluster configurations to be applied to all clusters born-in-fleet.
class DefaultClusterConfigResponseGkehubV1alpha {
  /// Optional. Enable/Disable binary authorization features for the cluster.
  final pulumi.Input<BinaryAuthorizationConfigResponseGkehubV1alpha> binaryAuthorizationConfig;
  /// Enable/Disable Security Posture features for the cluster.
  final pulumi.Input<SecurityPostureConfigResponseGkehubV1alpha> securityPostureConfig;

  /// Creates a new [DefaultClusterConfigResponseGkehubV1alpha].
  /// [binaryAuthorizationConfig] Optional. Enable/Disable binary authorization features for the cluster.
  /// [securityPostureConfig] Enable/Disable Security Posture features for the cluster.
  DefaultClusterConfigResponseGkehubV1alpha({
    required this.binaryAuthorizationConfig,
    required this.securityPostureConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'binaryAuthorizationConfig': pulumi.Input.mapInputValue<BinaryAuthorizationConfigResponseGkehubV1alpha, Map<String, dynamic>>(binaryAuthorizationConfig, (value) => value.toMap()),
      'securityPostureConfig': pulumi.Input.mapInputValue<SecurityPostureConfigResponseGkehubV1alpha, Map<String, dynamic>>(securityPostureConfig, (value) => value.toMap()),
    };
  }

  factory DefaultClusterConfigResponseGkehubV1alpha.fromMap(Map<String, dynamic> map) {
    return DefaultClusterConfigResponseGkehubV1alpha(
      binaryAuthorizationConfig: (BinaryAuthorizationConfigResponseGkehubV1alpha.fromMap((map['binaryAuthorizationConfig'] as Map).cast<String, dynamic>())).input(),
      securityPostureConfig: (SecurityPostureConfigResponseGkehubV1alpha.fromMap((map['securityPostureConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

