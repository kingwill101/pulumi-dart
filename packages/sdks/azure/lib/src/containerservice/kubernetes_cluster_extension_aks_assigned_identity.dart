// ignore_for_file: unused_element, unnecessary_cast


class KubernetesClusterExtensionAksAssignedIdentity {
  /// The principal ID of resource identity.
  final String? principalId;
  /// The tenant ID of resource.
  final String? tenantId;
  /// The identity type.
  final String? type;

  /// Creates a new [KubernetesClusterExtensionAksAssignedIdentity].
  /// [principalId] The principal ID of resource identity.
  /// [tenantId] The tenant ID of resource.
  /// [type] The identity type.
  KubernetesClusterExtensionAksAssignedIdentity({
    this.principalId,
    this.tenantId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalId': ?principalId,
      'tenantId': ?tenantId,
      'type': ?type,
    };
  }

  factory KubernetesClusterExtensionAksAssignedIdentity.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterExtensionAksAssignedIdentity(
      principalId: map['principalId'] == null ? null : map['principalId'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

