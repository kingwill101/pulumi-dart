// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KubernetesClusterAciConnectorLinuxConnectorIdentity {
  /// The Client ID of the user-defined Managed Identity used for Web App Routing.
  final pulumi.Input<String>? clientId;

  /// The Object ID of the user-defined Managed Identity used for Web App Routing
  final pulumi.Input<String>? objectId;

  /// The ID of the User Assigned Identity used for Web App Routing.
  final pulumi.Input<String>? userAssignedIdentityId;

  /// Creates a new [KubernetesClusterAciConnectorLinuxConnectorIdentity].
  /// [clientId] The Client ID of the user-defined Managed Identity used for Web App Routing.
  /// [objectId] The Object ID of the user-defined Managed Identity used for Web App Routing
  /// [userAssignedIdentityId] The ID of the User Assigned Identity used for Web App Routing.
  KubernetesClusterAciConnectorLinuxConnectorIdentity({
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

  factory KubernetesClusterAciConnectorLinuxConnectorIdentity.fromMap(
    Map<String, dynamic> map,
  ) {
    return KubernetesClusterAciConnectorLinuxConnectorIdentity(
      clientId: (() {
        final guardedValue = map['clientId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      objectId: (() {
        final guardedValue = map['objectId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      userAssignedIdentityId: (() {
        final guardedValue = map['userAssignedIdentityId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
