// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_environment_keyvaluemaps_environment_keyvaluemaps_args_doc}
/// The set of arguments for EnvironmentKeyvaluemaps.
/// {@endtemplate}
/// {@macro pulumi_apigee_environment_keyvaluemaps_environment_keyvaluemaps_args_doc}
class EnvironmentKeyvaluemapsArgs {
  /// The Apigee environment group associated with the Apigee environment,
  /// in the format `organizations/{{org_name}}/environments/{{env_name}}`.
  final pulumi.Input<String> envId;
  /// Required. ID of the key value map.
  final pulumi.Input<String>? name;

  /// Creates a new [EnvironmentKeyvaluemapsArgs].
  /// [envId] The Apigee environment group associated with the Apigee environment,
  /// [name] Required. ID of the key value map.
  EnvironmentKeyvaluemapsArgs({
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

  factory EnvironmentKeyvaluemapsArgs.fromMap(Map<String, dynamic> map) {
    return EnvironmentKeyvaluemapsArgs(
      envId: pulumi.Output.create<String>(map['envId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
    );
  }
}

