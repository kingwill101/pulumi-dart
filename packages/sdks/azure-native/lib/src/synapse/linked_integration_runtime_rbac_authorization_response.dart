// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The role based access control (RBAC) authorization type integration runtime.
class LinkedIntegrationRuntimeRbacAuthorizationResponse {
  /// The authorization type for integration runtime sharing.
  /// Expected value is 'RBAC'.
  final pulumi.Input<String> authorizationType;
  /// The resource identifier of the integration runtime to be shared.
  final pulumi.Input<String> resourceId;

  /// Creates a new [LinkedIntegrationRuntimeRbacAuthorizationResponse].
  /// [authorizationType] The authorization type for integration runtime sharing.
  /// [resourceId] The resource identifier of the integration runtime to be shared.
  LinkedIntegrationRuntimeRbacAuthorizationResponse({
    required this.authorizationType,
    required this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationType': authorizationType,
      'resourceId': resourceId,
    };
  }

  factory LinkedIntegrationRuntimeRbacAuthorizationResponse.fromMap(Map<String, dynamic> map) {
    return LinkedIntegrationRuntimeRbacAuthorizationResponse(
      authorizationType: pulumi.Input.fromValue(map['authorizationType'] as String),
      resourceId: pulumi.Input.fromValue(map['resourceId'] as String),
    );
  }
}

