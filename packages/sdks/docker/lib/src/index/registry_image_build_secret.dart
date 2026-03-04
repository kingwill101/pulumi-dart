// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegistryImageBuildSecret {
  /// Environment variable source of the secret
  final pulumi.Input<String>? env;

  /// ID of the secret. By default, secrets are mounted to /run/secrets/\n\n
  final pulumi.Input<String> id;

  /// File source of the secret. Takes precedence over `env`
  final pulumi.Input<String>? src;

  /// Creates a new [RegistryImageBuildSecret].
  /// [env] Environment variable source of the secret
  /// [id] ID of the secret. By default, secrets are mounted to /run/secrets/\n\n
  /// [src] File source of the secret. Takes precedence over `env`
  RegistryImageBuildSecret({this.env, required this.id, this.src});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'env': ?env, 'id': id, 'src': ?src};
  }

  factory RegistryImageBuildSecret.fromMap(Map<String, dynamic> map) {
    return RegistryImageBuildSecret(
      env: (() {
        final guardedValue = map['env'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      id: pulumi.Input.fromValue(map['id'] as String),
      src: (() {
        final guardedValue = map['src'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
