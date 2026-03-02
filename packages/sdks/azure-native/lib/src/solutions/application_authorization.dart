// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The managed application provider authorization.
class ApplicationAuthorization {
  /// The provider's principal identifier. This is the identity that the provider will use to call ARM to manage the managed application resources.
  final pulumi.Input<String> principalId;
  /// The provider's role definition identifier. This role will define all the permissions that the provider must have on the managed application's container resource group. This role definition cannot have permission to delete the resource group.
  final pulumi.Input<String> roleDefinitionId;

  /// Creates a new [ApplicationAuthorization].
  /// [principalId] The provider's principal identifier. This is the identity that the provider will use to call ARM to manage the managed application resources.
  /// [roleDefinitionId] The provider's role definition identifier. This role will define all the permissions that the provider must have on the managed application's container resource group. This role definition cannot have permission to delete the resource group.
  ApplicationAuthorization({
    required this.principalId,
    required this.roleDefinitionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalId': principalId,
      'roleDefinitionId': roleDefinitionId,
    };
  }

  factory ApplicationAuthorization.fromMap(Map<String, dynamic> map) {
    return ApplicationAuthorization(
      principalId: (map['principalId'] as String).input(),
      roleDefinitionId: (map['roleDefinitionId'] as String).input(),
    );
  }
}

