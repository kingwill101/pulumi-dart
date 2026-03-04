// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ssh_public_key_response.dart';

class AdministratorConfigurationResponse {
  /// The user name for the administrator that will be applied to the operating systems that run Kubernetes nodes. If not supplied, a user name will be chosen by the service.
  final pulumi.Input<String>? adminUsername;

  /// The SSH configuration for the operating systems that run the nodes in the Kubernetes cluster. In some cases, specification of public keys may be required to produce a working environment.
  final pulumi.Input<List<SshPublicKeyResponse>>? sshPublicKeys;

  /// Creates a new [AdministratorConfigurationResponse].
  /// [adminUsername] The user name for the administrator that will be applied to the operating systems that run Kubernetes nodes. If not supplied, a user name will be chosen by the service.
  /// [sshPublicKeys] The SSH configuration for the operating systems that run the nodes in the Kubernetes cluster. In some cases, specification of public keys may be required to produce a working environment.
  AdministratorConfigurationResponse({this.adminUsername, this.sshPublicKeys});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminUsername': ?adminUsername,
      'sshPublicKeys':
          ?pulumi.Input.mapOptionalInputValue<
            List<SshPublicKeyResponse>,
            List<Map<String, dynamic>>
          >(
            sshPublicKeys,
            (value) =>
                pulumi.Input.encodeList<
                  SshPublicKeyResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory AdministratorConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return AdministratorConfigurationResponse(
      adminUsername: (() {
        final guardedValue = map['adminUsername'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sshPublicKeys: (() {
        final guardedValue = map['sshPublicKeys'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<SshPublicKeyResponse>(
            guardedValue,
            (value) => SshPublicKeyResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
