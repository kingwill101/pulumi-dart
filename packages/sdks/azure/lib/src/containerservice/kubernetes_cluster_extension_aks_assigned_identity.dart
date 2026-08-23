// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KubernetesClusterExtensionAksAssignedIdentity {
  /// The principal ID of resource identity.
  final pulumi.Input<String>? principalId;
  /// The tenant ID of resource.
  final pulumi.Input<String>? tenantId;
  /// The identity type.
  final pulumi.Input<String>? type;

  /// Creates a new [KubernetesClusterExtensionAksAssignedIdentity].
  /// [principalId] The principal ID of resource identity.
  /// [tenantId] The tenant ID of resource.
  /// [type] The identity type.
  const KubernetesClusterExtensionAksAssignedIdentity({
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
      principalId: (() { final guardedValue = map['principalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
