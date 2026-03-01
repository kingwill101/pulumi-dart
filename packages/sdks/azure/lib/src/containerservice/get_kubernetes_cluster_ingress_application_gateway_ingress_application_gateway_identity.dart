// ignore_for_file: unused_element, unnecessary_cast


class GetKubernetesClusterIngressApplicationGatewayIngressApplicationGatewayIdentity {
  /// The Client ID of the user-defined Managed Identity assigned to the Kubelets.
  final String clientId;
  /// The Object ID of the user-defined Managed Identity assigned to the Kubelets.
  final String objectId;
  /// The ID of the User Assigned Identity assigned to the Kubelets.
  final String userAssignedIdentityId;

  /// Creates a new [GetKubernetesClusterIngressApplicationGatewayIngressApplicationGatewayIdentity].
  /// [clientId] The Client ID of the user-defined Managed Identity assigned to the Kubelets.
  /// [objectId] The Object ID of the user-defined Managed Identity assigned to the Kubelets.
  /// [userAssignedIdentityId] The ID of the User Assigned Identity assigned to the Kubelets.
  GetKubernetesClusterIngressApplicationGatewayIngressApplicationGatewayIdentity({
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
      clientId: map['clientId'] as String,
      objectId: map['objectId'] as String,
      userAssignedIdentityId: map['userAssignedIdentityId'] as String,
    );
  }
}

