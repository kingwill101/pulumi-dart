// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegistryTaskRegistryCredentialSource {
  /// The login mode for the source registry. Possible values are `None` and `Default`.
  final pulumi.Input<String> loginMode;

  /// Creates a new [RegistryTaskRegistryCredentialSource].
  /// [loginMode] The login mode for the source registry. Possible values are `None` and `Default`.
  const RegistryTaskRegistryCredentialSource({
    required this.loginMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loginMode': loginMode,
    };
  }

  factory RegistryTaskRegistryCredentialSource.fromMap(Map<String, dynamic> map) {
    return RegistryTaskRegistryCredentialSource(
      loginMode: pulumi.Input.fromValue(map['loginMode'] as String),
    );
  }
}
