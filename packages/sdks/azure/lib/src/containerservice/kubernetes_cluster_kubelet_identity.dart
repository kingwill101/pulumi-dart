// ignore_for_file: unused_element, unnecessary_cast


class KubernetesClusterKubeletIdentity {
  /// The Client ID of the user-defined Managed Identity to be assigned to the Kubelets. If not specified a Managed Identity is created automatically. Changing this forces a new resource to be created.
  final String? clientId;
  /// The Object ID of the user-defined Managed Identity assigned to the Kubelets.If not specified a Managed Identity is created automatically. Changing this forces a new resource to be created.
  final String? objectId;
  /// The ID of the User Assigned Identity assigned to the Kubelets. If not specified a Managed Identity is created automatically. Changing this forces a new resource to be created.
  final String? userAssignedIdentityId;

  /// Creates a new [KubernetesClusterKubeletIdentity].
  /// [clientId] The Client ID of the user-defined Managed Identity to be assigned to the Kubelets. If not specified a Managed Identity is created automatically. Changing this forces a new resource to be created.
  /// [objectId] The Object ID of the user-defined Managed Identity assigned to the Kubelets.If not specified a Managed Identity is created automatically. Changing this forces a new resource to be created.
  /// [userAssignedIdentityId] The ID of the User Assigned Identity assigned to the Kubelets. If not specified a Managed Identity is created automatically. Changing this forces a new resource to be created.
  KubernetesClusterKubeletIdentity({
    this.clientId,
    this.objectId,
    this.userAssignedIdentityId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'objectId': ?objectId,
      'userAssignedIdentityId': ?userAssignedIdentityId,
    };
  }

  factory KubernetesClusterKubeletIdentity.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterKubeletIdentity(
      clientId: map['clientId'] == null ? null : map['clientId'] as String,
      objectId: map['objectId'] == null ? null : map['objectId'] as String,
      userAssignedIdentityId: map['userAssignedIdentityId'] == null ? null : map['userAssignedIdentityId'] as String,
    );
  }
}

