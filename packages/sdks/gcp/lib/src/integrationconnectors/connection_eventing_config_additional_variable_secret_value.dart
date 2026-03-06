// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionEventingConfigAdditionalVariableSecretValue {
  /// Secret version of Secret Value for Config variable.
  final pulumi.Input<String> secretVersion;

  /// Creates a new [ConnectionEventingConfigAdditionalVariableSecretValue].
  /// [secretVersion] Secret version of Secret Value for Config variable.
  const ConnectionEventingConfigAdditionalVariableSecretValue({
    required this.secretVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretVersion': secretVersion,
    };
  }

  factory ConnectionEventingConfigAdditionalVariableSecretValue.fromMap(Map<String, dynamic> map) {
    return ConnectionEventingConfigAdditionalVariableSecretValue(
      secretVersion: pulumi.Input.fromValue(map['secretVersion'] as String),
    );
  }
}

