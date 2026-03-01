// ignore_for_file: unused_element, unnecessary_cast


class RegistryImageBuildSecret {
  /// Environment variable source of the secret
  final String? env;
  /// ID of the secret. By default, secrets are mounted to /run/secrets/\n\n
  final String id;
  /// File source of the secret. Takes precedence over `env`
  final String? src;

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
      env: map['env'] == null ? null : map['env'] as String,
      id: map['id'] as String,
      src: map['src'] == null ? null : map['src'] as String,
    );
  }
}

