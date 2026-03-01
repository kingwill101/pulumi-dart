// ignore_for_file: unused_element, unnecessary_cast


class PoolStartTaskContainerRegistry {
  final String? password;
  /// The container registry URL. Changing this forces a new resource to be created.
  final String registryServer;
  /// The User Assigned Identity to use for Container Registry access.
  final String? userAssignedIdentityId;
  final String? userName;

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
      password: map['password'] == null ? null : map['password'] as String,
      registryServer: map['registryServer'] as String,
      userAssignedIdentityId: map['userAssignedIdentityId'] == null ? null : map['userAssignedIdentityId'] as String,
      userName: map['userName'] == null ? null : map['userName'] as String,
    );
  }
}

