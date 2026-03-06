// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationDataAuthorizationResponse {
  /// The resource types from the defined resource types in the provider namespace that the application can access. If no resource types are specified and the role is service owner, the default is * which is all resource types
  final pulumi.Input<List<String>>? resourceTypes;
  /// The ownership role the application has on the resource types. The service owner role gives the application owner permissions. The limited owner role gives elevated permissions but does not allow all the permissions of a service owner, such as read/write on internal metadata.
  final pulumi.Input<String> role;

  /// Creates a new [ApplicationDataAuthorizationResponse].
  /// [resourceTypes] The resource types from the defined resource types in the provider namespace that the application can access. If no resource types are specified and the role is service owner, the default is * which is all resource types
  /// [role] The ownership role the application has on the resource types. The service owner role gives the application owner permissions. The limited owner role gives elevated permissions but does not allow all the permissions of a service owner, such as read/write on internal metadata.
  const ApplicationDataAuthorizationResponse({
    this.resourceTypes,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceTypes': ?resourceTypes,
      'role': role,
    };
  }

  factory ApplicationDataAuthorizationResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationDataAuthorizationResponse(
      resourceTypes: (() { final guardedValue = map['resourceTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      role: pulumi.Input.fromValue(map['role'] as String),
    );
  }
}

