// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EnvKeystore resources.
class EnvKeystoreState {
  /// Aliases in this keystore.
  final pulumi.Input<List<String>>? aliases;

  /// The Apigee environment group associated with the Apigee environment,
  /// in the format `organizations/{{org_name}}/environments/{{env_name}}`.
  final pulumi.Input<String>? envId;

  /// The name of the newly created keystore.
  final pulumi.Input<String>? name;

  /// Creates a new [EnvKeystoreState].
  /// [aliases] Aliases in this keystore.
  /// [envId] The Apigee environment group associated with the Apigee environment,
  /// [name] The name of the newly created keystore.
  EnvKeystoreState({this.aliases, this.envId, this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliases': ?aliases,
      'envId': ?envId,
      'name': ?name,
    };
  }

  factory EnvKeystoreState.fromMap(Map<String, dynamic> map) {
    return EnvKeystoreState(
      aliases: (() {
        final guardedValue = map['aliases'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      envId: (() {
        final guardedValue = map['envId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
