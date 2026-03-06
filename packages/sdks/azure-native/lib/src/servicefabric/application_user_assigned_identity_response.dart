// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationUserAssignedIdentityResponse {
  /// The friendly name of user assigned identity.
  final pulumi.Input<String> name;
  /// The principal id of user assigned identity.
  final pulumi.Input<String> principalId;

  /// Creates a new [ApplicationUserAssignedIdentityResponse].
  /// [name] The friendly name of user assigned identity.
  /// [principalId] The principal id of user assigned identity.
  const ApplicationUserAssignedIdentityResponse({
    required this.name,
    required this.principalId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'principalId': principalId,
    };
  }

  factory ApplicationUserAssignedIdentityResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationUserAssignedIdentityResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
    );
  }
}

