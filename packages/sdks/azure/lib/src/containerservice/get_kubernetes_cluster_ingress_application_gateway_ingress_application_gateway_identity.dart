// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetKubernetesClusterIngressApplicationGatewayIngressApplicationGatewayIdentity {
  /// The Client ID of the user-defined Managed Identity assigned to the Kubelets.
  final pulumi.Input<String> clientId;
  /// The Object ID of the user-defined Managed Identity assigned to the Kubelets.
  final pulumi.Input<String> objectId;
  /// The ID of the User Assigned Identity assigned to the Kubelets.
  final pulumi.Input<String> userAssignedIdentityId;

  /// Creates a new [GetKubernetesClusterIngressApplicationGatewayIngressApplicationGatewayIdentity].
  /// [clientId] The Client ID of the user-defined Managed Identity assigned to the Kubelets.
  /// [objectId] The Object ID of the user-defined Managed Identity assigned to the Kubelets.
  /// [userAssignedIdentityId] The ID of the User Assigned Identity assigned to the Kubelets.
  const GetKubernetesClusterIngressApplicationGatewayIngressApplicationGatewayIdentity({
    required this.clientId,
    required this.objectId,
    required this.userAssignedIdentityId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'objectId': objectId,
      'userAssignedIdentityId': userAssignedIdentityId,
    };
  }

  factory GetKubernetesClusterIngressApplicationGatewayIngressApplicationGatewayIdentity.fromMap(Map<String, dynamic> map) {
    return GetKubernetesClusterIngressApplicationGatewayIngressApplicationGatewayIdentity(
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      objectId: pulumi.Input.fromValue(map['objectId'] as String),
      userAssignedIdentityId: pulumi.Input.fromValue(map['userAssignedIdentityId'] as String),
    );
  }
}
