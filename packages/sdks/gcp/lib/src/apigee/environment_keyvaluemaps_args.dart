// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_environment_keyvaluemaps_environment_keyvaluemaps_args_doc}
/// The set of arguments for EnvironmentKeyvaluemaps.
/// {@endtemplate}
/// {@macro pulumi_apigee_environment_keyvaluemaps_environment_keyvaluemaps_args_doc}
class EnvironmentKeyvaluemapsArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The Apigee environment group associated with the Apigee environment,
  /// in the format `organizations/{{org_name}}/environments/{{env_name}}`.
  final pulumi.Input<String> envId;
  /// Required. ID of the key value map.
  final pulumi.Input<String?>? name;

  /// Creates a new [EnvironmentKeyvaluemapsArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [envId] The Apigee environment group associated with the Apigee environment,
  /// [name] Required. ID of the key value map.
  const EnvironmentKeyvaluemapsArgs({
    this.deletionPolicy,
    required this.envId,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'envId': envId,
      'name': ?name,
    };
  }

  factory EnvironmentKeyvaluemapsArgs.fromMap(Map<String, dynamic> map) {
    return EnvironmentKeyvaluemapsArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      envId: pulumi.Input.fromValue(map['envId'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
