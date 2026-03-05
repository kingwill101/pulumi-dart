// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionSslConfigPrivateServerCertificate {
  /// Secret version of Secret Value for Config variable.
  final pulumi.Input<String> secretVersion;

  /// Creates a new [ConnectionSslConfigPrivateServerCertificate].
  /// [secretVersion] Secret version of Secret Value for Config variable.
  ConnectionSslConfigPrivateServerCertificate({
    required this.secretVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretVersion': secretVersion,
    };
  }

  factory ConnectionSslConfigPrivateServerCertificate.fromMap(Map<String, dynamic> map) {
    return ConnectionSslConfigPrivateServerCertificate(
      secretVersion: pulumi.Input.fromValue(map['secretVersion'] as String),
    );
  }
}

