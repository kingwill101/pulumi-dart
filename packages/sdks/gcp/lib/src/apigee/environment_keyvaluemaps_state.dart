// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EnvironmentKeyvaluemaps resources.
class EnvironmentKeyvaluemapsState {
  /// The Apigee environment group associated with the Apigee environment,
  /// in the format `organizations/{{org_name}}/environments/{{env_name}}`.
  final pulumi.Input<String>? envId;
  /// Required. ID of the key value map.
  final pulumi.Input<String>? name;

  /// Creates a new [EnvironmentKeyvaluemapsState].
  /// [envId] The Apigee environment group associated with the Apigee environment,
  /// [name] Required. ID of the key value map.
  EnvironmentKeyvaluemapsState({
    pulumi.Output<String>? envId,
    pulumi.Output<String>? name,
  }) :
      envId = pulumi.Input.asOptionalInput<String>(envId),
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'envId': ?envId,
      'name': ?name,
    };
  }

  factory EnvironmentKeyvaluemapsState.fromMap(Map<String, dynamic> map) {
    return EnvironmentKeyvaluemapsState(
      envId: map['envId'] == null ? null : pulumi.Output.create<String>(map['envId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
    );
  }
}

