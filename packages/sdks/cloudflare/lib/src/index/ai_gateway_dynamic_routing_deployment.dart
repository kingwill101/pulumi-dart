// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiGatewayDynamicRoutingDeployment {
  final pulumi.Input<String?>? createdAt;
  final pulumi.Input<String?>? deploymentId;
  final pulumi.Input<String?>? versionId;

  /// Creates a new [AiGatewayDynamicRoutingDeployment].
  /// [createdAt] Optional.
  /// [deploymentId] Optional.
  /// [versionId] Optional.
  const AiGatewayDynamicRoutingDeployment({
    this.createdAt,
    this.deploymentId,
    this.versionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': ?createdAt,
      'deploymentId': ?deploymentId,
      'versionId': ?versionId,
    };
  }

  factory AiGatewayDynamicRoutingDeployment.fromMap(Map<String, dynamic> map) {
    return AiGatewayDynamicRoutingDeployment(
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deploymentId: (() { final guardedValue = map['deploymentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      versionId: (() { final guardedValue = map['versionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
