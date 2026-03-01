// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_env_keystore_env_keystore_args_doc}
/// The set of arguments for EnvKeystore.
/// {@endtemplate}
/// {@macro pulumi_apigee_env_keystore_env_keystore_args_doc}
class EnvKeystoreArgs {
  /// The Apigee environment group associated with the Apigee environment,
  /// in the format `organizations/{{org_name}}/environments/{{env_name}}`.
  final pulumi.Input<String> envId;
  /// The name of the newly created keystore.
  final pulumi.Input<String>? name;

  /// Creates a new [EnvKeystoreArgs].
  /// [envId] The Apigee environment group associated with the Apigee environment,
  /// [name] The name of the newly created keystore.
  EnvKeystoreArgs({
    required pulumi.Output<String> envId,
    pulumi.Output<String>? name,
  }) :
      envId = pulumi.Input.asInput<String>(envId),
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'envId': envId,
      'name': ?name,
    };
  }

  factory EnvKeystoreArgs.fromMap(Map<String, dynamic> map) {
    return EnvKeystoreArgs(
      envId: pulumi.Output.create<String>(map['envId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
    );
  }
}

