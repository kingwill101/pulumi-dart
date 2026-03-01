// ignore_for_file: unused_element, unnecessary_cast


class DefinitionAuthorization {
  /// Specifies a role definition identifier for the provider. This role will define all the permissions that the provider must have on the managed application's container resource group. This role definition cannot have permission to delete the resource group.
  final String roleDefinitionId;
  /// Specifies a service principal identifier for the provider. This is the identity that the provider will use to call ARM to manage the managed application resources.
  final String servicePrincipalId;

  /// Creates a new [DefinitionAuthorization].
  /// [roleDefinitionId] Specifies a role definition identifier for the provider. This role will define all the permissions that the provider must have on the managed application's container resource group. This role definition cannot have permission to delete the resource group.
  /// [servicePrincipalId] Specifies a service principal identifier for the provider. This is the identity that the provider will use to call ARM to manage the managed application resources.
  DefinitionAuthorization({
    required this.roleDefinitionId,
    required this.servicePrincipalId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'roleDefinitionId': roleDefinitionId,
      'servicePrincipalId': servicePrincipalId,
    };
  }

  factory DefinitionAuthorization.fromMap(Map<String, dynamic> map) {
    return DefinitionAuthorization(
      roleDefinitionId: map['roleDefinitionId'] as String,
      servicePrincipalId: map['servicePrincipalId'] as String,
    );
  }
}

