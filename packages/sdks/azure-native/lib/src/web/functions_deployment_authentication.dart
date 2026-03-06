// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Authentication method to access the storage account for deployment.
class FunctionsDeploymentAuthentication {
  /// Use this property for StorageAccountConnectionString. Set the name of the app setting that has the storage account connection string. Do not set a value for this property when using other authentication type.
  final pulumi.Input<String>? storageAccountConnectionStringName;
  /// Property to select authentication type to access the selected storage account. Available options: SystemAssignedIdentity, UserAssignedIdentity, StorageAccountConnectionString.
  final pulumi.Input<String>? type;
  /// Use this property for UserAssignedIdentity. Set the resource ID of the identity. Do not set a value for this property when using other authentication type.
  final pulumi.Input<String>? userAssignedIdentityResourceId;

  /// Creates a new [FunctionsDeploymentAuthentication].
  /// [storageAccountConnectionStringName] Use this property for StorageAccountConnectionString. Set the name of the app setting that has the storage account connection string. Do not set a value for this property when using other authentication type.
  /// [type] Property to select authentication type to access the selected storage account. Available options: SystemAssignedIdentity, UserAssignedIdentity, StorageAccountConnectionString.
  /// [userAssignedIdentityResourceId] Use this property for UserAssignedIdentity. Set the resource ID of the identity. Do not set a value for this property when using other authentication type.
  const FunctionsDeploymentAuthentication({
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

  factory FunctionsDeploymentAuthentication.fromMap(Map<String, dynamic> map) {
    return FunctionsDeploymentAuthentication(
      storageAccountConnectionStringName: (() { final guardedValue = map['storageAccountConnectionStringName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userAssignedIdentityResourceId: (() { final guardedValue = map['userAssignedIdentityResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

