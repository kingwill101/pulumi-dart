// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesDiskSourceNetworkIdentity {
  /// Configures the agent socket for network identity in the backing store source.
  final pulumi.Input<String>? agentSock;
  /// Sets the group identifier for network identity in the backing store source.
  final pulumi.Input<String>? group;
  /// Defines the key file used for network identity in the backing store source configuration.
  final pulumi.Input<String>? keyfile;
  /// Configures the user associated with the network identity in the backing store source.
  final pulumi.Input<String>? user;
  /// Sets the user name for network identity in the backing store source configuration.
  final pulumi.Input<String>? userName;

  /// Creates a new [DomainDevicesDiskSourceNetworkIdentity].
  /// [agentSock] Configures the agent socket for network identity in the backing store source.
  /// [group] Sets the group identifier for network identity in the backing store source.
  /// [keyfile] Defines the key file used for network identity in the backing store source configuration.
  /// [user] Configures the user associated with the network identity in the backing store source.
  /// [userName] Sets the user name for network identity in the backing store source configuration.
  const DomainDevicesDiskSourceNetworkIdentity({
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

  factory DomainDevicesDiskSourceNetworkIdentity.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskSourceNetworkIdentity(
      agentSock: (() { final guardedValue = map['agentSock']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      group: (() { final guardedValue = map['group']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyfile: (() { final guardedValue = map['keyfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      user: (() { final guardedValue = map['user']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userName: (() { final guardedValue = map['userName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

