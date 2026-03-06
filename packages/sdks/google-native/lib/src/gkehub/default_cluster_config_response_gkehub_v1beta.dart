// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'binary_authorization_config_response_gkehub_v1beta.dart';
import 'security_posture_config_response_gkehub_v1beta.dart';

/// DefaultClusterConfig describes the default cluster configurations to be applied to all clusters born-in-fleet.
class DefaultClusterConfigResponseGkehubV1beta {
  /// Optional. Enable/Disable binary authorization features for the cluster.
  final pulumi.Input<BinaryAuthorizationConfigResponseGkehubV1beta> binaryAuthorizationConfig;
  /// Enable/Disable Security Posture features for the cluster.
  final pulumi.Input<SecurityPostureConfigResponseGkehubV1beta> securityPostureConfig;

  /// Creates a new [DefaultClusterConfigResponseGkehubV1beta].
  /// [binaryAuthorizationConfig] Optional. Enable/Disable binary authorization features for the cluster.
  /// [securityPostureConfig] Enable/Disable Security Posture features for the cluster.
  const DefaultClusterConfigResponseGkehubV1beta({
    required this.binaryAuthorizationConfig,
    required this.securityPostureConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'binaryAuthorizationConfig': pulumi.Input.mapInputValue<BinaryAuthorizationConfigResponseGkehubV1beta, Map<String, dynamic>>(binaryAuthorizationConfig, (value) => value.toMap()),
      'securityPostureConfig': pulumi.Input.mapInputValue<SecurityPostureConfigResponseGkehubV1beta, Map<String, dynamic>>(securityPostureConfig, (value) => value.toMap()),
    };
  }

  factory DefaultClusterConfigResponseGkehubV1beta.fromMap(Map<String, dynamic> map) {
    return DefaultClusterConfigResponseGkehubV1beta(
      binaryAuthorizationConfig: pulumi.Input.fromValue(BinaryAuthorizationConfigResponseGkehubV1beta.fromMap((map['binaryAuthorizationConfig']! as Map).cast<String, dynamic>())),
      securityPostureConfig: pulumi.Input.fromValue(SecurityPostureConfigResponseGkehubV1beta.fromMap((map['securityPostureConfig']! as Map).cast<String, dynamic>())),
    );
  }
}

