// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionSslConfigClientPrivateKey {
  /// Secret version of Secret Value for Config variable.
  final pulumi.Input<String> secretVersion;

  /// Creates a new [ConnectionSslConfigClientPrivateKey].
  /// [secretVersion] Secret version of Secret Value for Config variable.
  ConnectionSslConfigClientPrivateKey({
    required this.secretVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretVersion': secretVersion,
    };
  }

  factory ConnectionSslConfigClientPrivateKey.fromMap(Map<String, dynamic> map) {
    return ConnectionSslConfigClientPrivateKey(
      secretVersion: pulumi.Input.fromValue(map['secretVersion'] as String),
    );
  }
}

