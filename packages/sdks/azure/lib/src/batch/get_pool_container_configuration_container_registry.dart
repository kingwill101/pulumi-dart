// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPoolContainerConfigurationContainerRegistry {
  /// The password for the user account.
  final pulumi.Input<String> password;
  /// The container registry URL. The default is "docker.io".
  final pulumi.Input<String> registryServer;
  /// The reference to the user assigned identity to use to access an Azure Container Registry instead of username and password.
  final pulumi.Input<String> userAssignedIdentityId;
  /// The user to use for authentication against the CIFS file system.
  final pulumi.Input<String> userName;

  /// Creates a new [GetPoolContainerConfigurationContainerRegistry].
  /// [password] The password for the user account.
  /// [registryServer] The container registry URL. The default is "docker.io".
  /// [userAssignedIdentityId] The reference to the user assigned identity to use to access an Azure Container Registry instead of username and password.
  /// [userName] The user to use for authentication against the CIFS file system.
  GetPoolContainerConfigurationContainerRegistry({
    required this.password,
    required this.registryServer,
    required this.userAssignedIdentityId,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': password,
      'registryServer': registryServer,
      'userAssignedIdentityId': userAssignedIdentityId,
      'userName': userName,
    };
  }

  factory GetPoolContainerConfigurationContainerRegistry.fromMap(Map<String, dynamic> map) {
    return GetPoolContainerConfigurationContainerRegistry(
      password: pulumi.Input.fromValue(map['password'] as String),
      registryServer: pulumi.Input.fromValue(map['registryServer'] as String),
      userAssignedIdentityId: pulumi.Input.fromValue(map['userAssignedIdentityId'] as String),
      userName: pulumi.Input.fromValue(map['userName'] as String),
    );
  }
}

