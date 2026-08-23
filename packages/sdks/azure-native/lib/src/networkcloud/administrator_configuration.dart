// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ssh_public_key.dart';

class AdministratorConfiguration {
  /// The user name for the administrator that will be applied to the operating systems that run Kubernetes nodes. If not supplied, a user name will be chosen by the service.
  final pulumi.Input<String>? adminUsername;
  /// The SSH configuration for the operating systems that run the nodes in the Kubernetes cluster. In some cases, specification of public keys may be required to produce a working environment.
  final pulumi.Input<List<SshPublicKey>>? sshPublicKeys;

  /// Creates a new [AdministratorConfiguration].
  /// [adminUsername] The user name for the administrator that will be applied to the operating systems that run Kubernetes nodes. If not supplied, a user name will be chosen by the service.
  /// [sshPublicKeys] The SSH configuration for the operating systems that run the nodes in the Kubernetes cluster. In some cases, specification of public keys may be required to produce a working environment.
  const AdministratorConfiguration({
    this.adminUsername,
    this.sshPublicKeys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminUsername': ?adminUsername,
      'sshPublicKeys': ?pulumi.Input.mapOptionalInputValue<List<SshPublicKey>, List<Map<String, dynamic>>>(sshPublicKeys, (value) => pulumi.Input.encodeList<SshPublicKey, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AdministratorConfiguration.fromMap(Map<String, dynamic> map) {
    return AdministratorConfiguration(
      adminUsername: (() { final guardedValue = map['adminUsername']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sshPublicKeys: (() { final guardedValue = map['sshPublicKeys']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SshPublicKey>(guardedValue, (value) => SshPublicKey.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
