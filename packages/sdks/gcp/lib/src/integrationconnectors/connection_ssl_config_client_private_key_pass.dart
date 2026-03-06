// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionSslConfigClientPrivateKeyPass {
  /// Secret version of Secret Value for Config variable.
  final pulumi.Input<String> secretVersion;

  /// Creates a new [ConnectionSslConfigClientPrivateKeyPass].
  /// [secretVersion] Secret version of Secret Value for Config variable.
  const ConnectionSslConfigClientPrivateKeyPass({
    required this.secretVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretVersion': secretVersion,
    };
  }

  factory ConnectionSslConfigClientPrivateKeyPass.fromMap(Map<String, dynamic> map) {
    return ConnectionSslConfigClientPrivateKeyPass(
      secretVersion: pulumi.Input.fromValue(map['secretVersion'] as String),
    );
  }
}

