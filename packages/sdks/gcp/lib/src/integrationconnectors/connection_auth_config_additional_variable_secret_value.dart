// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionAuthConfigAdditionalVariableSecretValue {
  /// Secret version of Secret Value for Config variable.
  final pulumi.Input<String> secretVersion;

  /// Creates a new [ConnectionAuthConfigAdditionalVariableSecretValue].
  /// [secretVersion] Secret version of Secret Value for Config variable.
  ConnectionAuthConfigAdditionalVariableSecretValue({
    required this.secretVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'secretVersion': secretVersion};
  }

  factory ConnectionAuthConfigAdditionalVariableSecretValue.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConnectionAuthConfigAdditionalVariableSecretValue(
      secretVersion: pulumi.Input.fromValue(map['secretVersion'] as String),
    );
  }
}
