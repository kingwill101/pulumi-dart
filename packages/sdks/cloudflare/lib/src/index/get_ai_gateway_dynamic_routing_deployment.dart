// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAiGatewayDynamicRoutingDeployment {
  final pulumi.Input<String> createdAt;
  final pulumi.Input<String> deploymentId;
  final pulumi.Input<String> versionId;

  /// Creates a new [GetAiGatewayDynamicRoutingDeployment].
  /// [createdAt] Required.
  /// [deploymentId] Required.
  /// [versionId] Required.
  const GetAiGatewayDynamicRoutingDeployment({
    required this.createdAt,
    required this.deploymentId,
    required this.versionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt,
      'deploymentId': deploymentId,
      'versionId': versionId,
    };
  }

  factory GetAiGatewayDynamicRoutingDeployment.fromMap(Map<String, dynamic> map) {
    return GetAiGatewayDynamicRoutingDeployment(
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      deploymentId: pulumi.Input.fromValue(map['deploymentId'] as String),
      versionId: pulumi.Input.fromValue(map['versionId'] as String),
    );
  }
}
