// ignore_for_file: unused_element, unnecessary_cast


class RegistryTaskRegistryCredentialSource {
  /// The login mode for the source registry. Possible values are `None` and `Default`.
  final String loginMode;

  /// Creates a new [RegistryTaskRegistryCredentialSource].
  /// [loginMode] The login mode for the source registry. Possible values are `None` and `Default`.
  RegistryTaskRegistryCredentialSource({
    required this.loginMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loginMode': loginMode,
    };
  }

  factory RegistryTaskRegistryCredentialSource.fromMap(Map<String, dynamic> map) {
    return RegistryTaskRegistryCredentialSource(
      loginMode: map['loginMode'] as String,
    );
  }
}

