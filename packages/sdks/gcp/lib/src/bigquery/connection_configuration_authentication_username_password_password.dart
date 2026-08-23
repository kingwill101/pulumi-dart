// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionConfigurationAuthenticationUsernamePasswordPassword {
  /// The plaintext password.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String> plaintext;
  /// (Output)
  /// Output only. The type of the secret.
  final pulumi.Input<String>? secretType;

  /// Creates a new [ConnectionConfigurationAuthenticationUsernamePasswordPassword].
  /// [plaintext] The plaintext password.
  /// [secretType] (Output)
  const ConnectionConfigurationAuthenticationUsernamePasswordPassword({
    required this.plaintext,
    this.secretType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'plaintext': plaintext,
      'secretType': ?secretType,
    };
  }

  factory ConnectionConfigurationAuthenticationUsernamePasswordPassword.fromMap(Map<String, dynamic> map) {
    return ConnectionConfigurationAuthenticationUsernamePasswordPassword(
      plaintext: pulumi.Input.fromValue(map['plaintext'] as String),
      secretType: (() { final guardedValue = map['secretType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
