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
  RegistryImageBuildSecret({
    this.env,
    required this.id,
    this.src,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'env': ?env,
      'id': id,
      'src': ?src,
    };
  }

  factory RegistryImageBuildSecret.fromMap(Map<String, dynamic> map) {
    return RegistryImageBuildSecret(
      env: map['env'] == null ? null : (map['env']! as String).input(),
      id: (map['id'] as String).input(),
      src: map['src'] == null ? null : (map['src']! as String).input(),
    );
  }
}

