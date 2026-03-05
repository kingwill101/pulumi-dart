// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionSslConfigClientCertificate {
  /// Secret version of Secret Value for Config variable.
  final pulumi.Input<String> secretVersion;

  /// Creates a new [ConnectionSslConfigClientCertificate].
  /// [secretVersion] Secret version of Secret Value for Config variable.
  ConnectionSslConfigClientCertificate({
    required this.secretVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretVersion': secretVersion,
    };
  }

  factory ConnectionSslConfigClientCertificate.fromMap(Map<String, dynamic> map) {
    return ConnectionSslConfigClientCertificate(
      secretVersion: pulumi.Input.fromValue(map['secretVersion'] as String),
    );
  }
}

