// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PoolContainerConfigurationContainerRegistry {
  /// The password to log into the registry server. Changing this forces a new resource to be created.
  final pulumi.Input<String>? password;
  /// The container registry URL. Changing this forces a new resource to be created.
  final pulumi.Input<String> registryServer;
  /// The reference to the user assigned identity to use to access an Azure Container Registry instead of username and password. Changing this forces a new resource to be created.
  final pulumi.Input<String>? userAssignedIdentityId;
  /// The user name to log into the registry server. Changing this forces a new resource to be created.
  final pulumi.Input<String>? userName;

  /// Creates a new [PoolContainerConfigurationContainerRegistry].
  /// [password] The password to log into the registry server. Changing this forces a new resource to be created.
  /// [registryServer] The container registry URL. Changing this forces a new resource to be created.
  /// [userAssignedIdentityId] The reference to the user assigned identity to use to access an Azure Container Registry instead of username and password. Changing this forces a new resource to be created.
  /// [userName] The user name to log into the registry server. Changing this forces a new resource to be created.
  PoolContainerConfigurationContainerRegistry({
    this.password,
    required this.registryServer,
    this.userAssignedIdentityId,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': ?password,
      'registryServer': registryServer,
      'userAssignedIdentityId': ?userAssignedIdentityId,
      'userName': ?userName,
    };
  }

  factory PoolContainerConfigurationContainerRegistry.fromMap(Map<String, dynamic> map) {
    return PoolContainerConfigurationContainerRegistry(
      password: map['password'] == null ? null : (map['password']! as String).input(),
      registryServer: (map['registryServer'] as String).input(),
      userAssignedIdentityId: map['userAssignedIdentityId'] == null ? null : (map['userAssignedIdentityId']! as String).input(),
      userName: map['userName'] == null ? null : (map['userName']! as String).input(),
    );
  }
}

