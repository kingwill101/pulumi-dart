// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AutomaticClusterWebAppRoutingIngressWebAppRoutingIdentity {
  /// The Client ID of the user-defined Managed Identity used for Web App Routing.
  final pulumi.Input<String?>? clientId;
  /// The Object ID of the user-defined Managed Identity used for Web App Routing
  final pulumi.Input<String?>? objectId;
  /// The ID of the User Assigned Identity used for Web App Routing.
  final pulumi.Input<String?>? userAssignedIdentityId;

  /// Creates a new [AutomaticClusterWebAppRoutingIngressWebAppRoutingIdentity].
  /// [clientId] The Client ID of the user-defined Managed Identity used for Web App Routing.
  /// [objectId] The Object ID of the user-defined Managed Identity used for Web App Routing
  /// [userAssignedIdentityId] The ID of the User Assigned Identity used for Web App Routing.
  const AutomaticClusterWebAppRoutingIngressWebAppRoutingIdentity({
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

  factory AutomaticClusterWebAppRoutingIngressWebAppRoutingIdentity.fromMap(Map<String, dynamic> map) {
    return AutomaticClusterWebAppRoutingIngressWebAppRoutingIdentity(
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      objectId: (() { final guardedValue = map['objectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userAssignedIdentityId: (() { final guardedValue = map['userAssignedIdentityId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
