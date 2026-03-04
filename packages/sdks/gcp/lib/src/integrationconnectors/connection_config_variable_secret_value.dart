// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionConfigVariableSecretValue {
  /// Secret version of Secret Value for Config variable.
  final pulumi.Input<String> secretVersion;

  /// Creates a new [ConnectionConfigVariableSecretValue].
  /// [secretVersion] Secret version of Secret Value for Config variable.
  ConnectionConfigVariableSecretValue({required this.secretVersion});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'secretVersion': secretVersion};
  }

  factory ConnectionConfigVariableSecretValue.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConnectionConfigVariableSecretValue(
      secretVersion: pulumi.Input.fromValue(map['secretVersion'] as String),
    );
  }
}
