// ignore_for_file: unused_element, unnecessary_cast


/// Authentication method to access the storage account for deployment.
class FunctionsDeploymentResponseAuthentication {
  /// Use this property for StorageAccountConnectionString. Set the name of the app setting that has the storage account connection string. Do not set a value for this property when using other authentication type.
  final String? storageAccountConnectionStringName;
  /// Property to select authentication type to access the selected storage account. Available options: SystemAssignedIdentity, UserAssignedIdentity, StorageAccountConnectionString.
  final String? type;
  /// Use this property for UserAssignedIdentity. Set the resource ID of the identity. Do not set a value for this property when using other authentication type.
  final String? userAssignedIdentityResourceId;

  /// Creates a new [FunctionsDeploymentResponseAuthentication].
  /// [storageAccountConnectionStringName] Use this property for StorageAccountConnectionString. Set the name of the app setting that has the storage account connection string. Do not set a value for this property when using other authentication type.
  /// [type] Property to select authentication type to access the selected storage account. Available options: SystemAssignedIdentity, UserAssignedIdentity, StorageAccountConnectionString.
  /// [userAssignedIdentityResourceId] Use this property for UserAssignedIdentity. Set the resource ID of the identity. Do not set a value for this property when using other authentication type.
  FunctionsDeploymentResponseAuthentication({
    this.storageAccountConnectionStringName,
    this.type,
    this.userAssignedIdentityResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'storageAccountConnectionStringName': ?storageAccountConnectionStringName,
      'type': ?type,
      'userAssignedIdentityResourceId': ?userAssignedIdentityResourceId,
    };
  }

  factory FunctionsDeploymentResponseAuthentication.fromMap(Map<String, dynamic> map) {
    return FunctionsDeploymentResponseAuthentication(
      storageAccountConnectionStringName: map['storageAccountConnectionStringName'] == null ? null : map['storageAccountConnectionStringName'] as String,
      type: map['type'] == null ? null : map['type'] as String,
      userAssignedIdentityResourceId: map['userAssignedIdentityResourceId'] == null ? null : map['userAssignedIdentityResourceId'] as String,
    );
  }
}

