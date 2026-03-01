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
  EnvKeystoreState({
    pulumi.Output<List<String>>? aliases,
    pulumi.Output<String>? envId,
    pulumi.Output<String>? name,
  }) :
      aliases = pulumi.Input.asOptionalInput<List<String>>(aliases),
      envId = pulumi.Input.asOptionalInput<String>(envId),
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliases': ?aliases,
      'envId': ?envId,
      'name': ?name,
    };
  }

  factory EnvKeystoreState.fromMap(Map<String, dynamic> map) {
    return EnvKeystoreState(
      aliases: map['aliases'] == null ? null : pulumi.Output.create<List<String>>((map['aliases'] as List).cast<String>()),
      envId: map['envId'] == null ? null : pulumi.Output.create<String>(map['envId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
    );
  }
}

