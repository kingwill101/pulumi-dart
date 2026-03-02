// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PoolStartTaskContainerRegistry {
  final pulumi.Input<String>? password;
  /// The container registry URL. Changing this forces a new resource to be created.
  final pulumi.Input<String> registryServer;
  /// The User Assigned Identity to use for Container Registry access.
  final pulumi.Input<String>? userAssignedIdentityId;
  final pulumi.Input<String>? userName;

  /// Creates a new [PoolStartTaskContainerRegistry].
  /// [password] Optional.
  /// [registryServer] The container registry URL. Changing this forces a new resource to be created.
  /// [userAssignedIdentityId] The User Assigned Identity to use for Container Registry access.
  /// [userName] Optional.
  PoolStartTaskContainerRegistry({
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

  factory PoolStartTaskContainerRegistry.fromMap(Map<String, dynamic> map) {
    return PoolStartTaskContainerRegistry(
      password: map['password'] == null ? null : (map['password']! as String).input(),
      registryServer: (map['registryServer'] as String).input(),
      userAssignedIdentityId: map['userAssignedIdentityId'] == null ? null : (map['userAssignedIdentityId']! as String).input(),
      userName: map['userName'] == null ? null : (map['userName']! as String).input(),
    );
  }
}

