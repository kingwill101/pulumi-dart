// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionSslConfigAdditionalVariableSecretValue {
  /// Secret version of Secret Value for Config variable.
  final pulumi.Input<String> secretVersion;

  /// Creates a new [ConnectionSslConfigAdditionalVariableSecretValue].
  /// [secretVersion] Secret version of Secret Value for Config variable.
  const ConnectionSslConfigAdditionalVariableSecretValue({
    required this.secretVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretVersion': secretVersion,
    };
  }

  factory ConnectionSslConfigAdditionalVariableSecretValue.fromMap(Map<String, dynamic> map) {
    return ConnectionSslConfigAdditionalVariableSecretValue(
      secretVersion: pulumi.Input.fromValue(map['secretVersion'] as String),
    );
  }
}
