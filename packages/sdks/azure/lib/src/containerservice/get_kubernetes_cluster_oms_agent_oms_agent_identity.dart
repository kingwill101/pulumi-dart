// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetKubernetesClusterOmsAgentOmsAgentIdentity {
  /// The Client ID of the user-defined Managed Identity assigned to the Kubelets.
  final pulumi.Input<String> clientId;
  /// The Object ID of the user-defined Managed Identity assigned to the Kubelets.
  final pulumi.Input<String> objectId;
  /// The ID of the User Assigned Identity assigned to the Kubelets.
  final pulumi.Input<String> userAssignedIdentityId;

  /// Creates a new [GetKubernetesClusterOmsAgentOmsAgentIdentity].
  /// [clientId] The Client ID of the user-defined Managed Identity assigned to the Kubelets.
  /// [objectId] The Object ID of the user-defined Managed Identity assigned to the Kubelets.
  /// [userAssignedIdentityId] The ID of the User Assigned Identity assigned to the Kubelets.
  GetKubernetesClusterOmsAgentOmsAgentIdentity({
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

  factory GetKubernetesClusterOmsAgentOmsAgentIdentity.fromMap(Map<String, dynamic> map) {
    return GetKubernetesClusterOmsAgentOmsAgentIdentity(
      clientId: (map['clientId'] as String).input(),
      objectId: (map['objectId'] as String).input(),
      userAssignedIdentityId: (map['userAssignedIdentityId'] as String).input(),
    );
  }
}

