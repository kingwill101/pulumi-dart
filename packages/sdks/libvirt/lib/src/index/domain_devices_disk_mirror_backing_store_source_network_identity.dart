// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesDiskMirrorBackingStoreSourceNetworkIdentity {
  /// Configures the agent socket for network identity in the backing store source.
  final String? agentSock;
  /// Sets the group identifier for network identity in the backing store source.
  final String? group;
  /// Defines the key file used for network identity in the backing store source configuration.
  final String? keyfile;
  /// Configures the user associated with the network identity in the backing store source.
  final String? user;
  /// Sets the user name for network identity in the backing store source configuration.
  final String? userName;

  /// Creates a new [DomainDevicesDiskMirrorBackingStoreSourceNetworkIdentity].
  /// [agentSock] Configures the agent socket for network identity in the backing store source.
  /// [group] Sets the group identifier for network identity in the backing store source.
  /// [keyfile] Defines the key file used for network identity in the backing store source configuration.
  /// [user] Configures the user associated with the network identity in the backing store source.
  /// [userName] Sets the user name for network identity in the backing store source configuration.
  DomainDevicesDiskMirrorBackingStoreSourceNetworkIdentity({
    this.agentSock,
    this.group,
    this.keyfile,
    this.user,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentSock': ?agentSock,
      'group': ?group,
      'keyfile': ?keyfile,
      'user': ?user,
      'userName': ?userName,
    };
  }

  factory DomainDevicesDiskMirrorBackingStoreSourceNetworkIdentity.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorBackingStoreSourceNetworkIdentity(
      agentSock: map['agentSock'] == null ? null : map['agentSock'] as String,
      group: map['group'] == null ? null : map['group'] as String,
      keyfile: map['keyfile'] == null ? null : map['keyfile'] as String,
      user: map['user'] == null ? null : map['user'] as String,
      userName: map['userName'] == null ? null : map['userName'] as String,
    );
  }
}

