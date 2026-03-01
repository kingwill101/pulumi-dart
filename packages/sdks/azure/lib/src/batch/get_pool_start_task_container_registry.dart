// ignore_for_file: unused_element, unnecessary_cast


class GetPoolStartTaskContainerRegistry {
  /// The password for the user account.
  final String password;
  /// The container registry URL. The default is "docker.io".
  final String registryServer;
  /// The reference to the user assigned identity to use to access an Azure Container Registry instead of username and password.
  final String userAssignedIdentityId;
  /// The user to use for authentication against the CIFS file system.
  final String userName;

  /// Creates a new [GetPoolStartTaskContainerRegistry].
  /// [password] The password for the user account.
  /// [registryServer] The container registry URL. The default is "docker.io".
  /// [userAssignedIdentityId] The reference to the user assigned identity to use to access an Azure Container Registry instead of username and password.
  /// [userName] The user to use for authentication against the CIFS file system.
  GetPoolStartTaskContainerRegistry({
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

  factory GetPoolStartTaskContainerRegistry.fromMap(Map<String, dynamic> map) {
    return GetPoolStartTaskContainerRegistry(
      password: map['password'] as String,
      registryServer: map['registryServer'] as String,
      userAssignedIdentityId: map['userAssignedIdentityId'] as String,
      userName: map['userName'] as String,
    );
  }
}

