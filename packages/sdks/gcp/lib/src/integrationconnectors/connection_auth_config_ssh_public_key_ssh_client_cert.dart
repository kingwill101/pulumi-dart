// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionAuthConfigSshPublicKeySshClientCert {
  /// The resource name of the secret version in the format,
  /// format as: projects/*/secrets/*/versions/*.
  final pulumi.Input<String> secretVersion;

  /// Creates a new [ConnectionAuthConfigSshPublicKeySshClientCert].
  /// [secretVersion] The resource name of the secret version in the format,
  ConnectionAuthConfigSshPublicKeySshClientCert({required this.secretVersion});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'secretVersion': secretVersion};
  }

  factory ConnectionAuthConfigSshPublicKeySshClientCert.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConnectionAuthConfigSshPublicKeySshClientCert(
      secretVersion: pulumi.Input.fromValue(map['secretVersion'] as String),
    );
  }
}
