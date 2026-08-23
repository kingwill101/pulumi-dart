// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EnvironmentKeyvaluemaps resources.
class EnvironmentKeyvaluemapsState {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// The Apigee environment group associated with the Apigee environment,
  /// in the format `organizations/{{org_name}}/environments/{{env_name}}`.
  final pulumi.Input<String>? envId;
  /// Required. ID of the key value map.
  final pulumi.Input<String>? name;

  /// Creates a new [EnvironmentKeyvaluemapsState].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [envId] The Apigee environment group associated with the Apigee environment,
  /// [name] Required. ID of the key value map.
  const EnvironmentKeyvaluemapsState({
    this.deletionPolicy,
    this.envId,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'envId': ?envId,
      'name': ?name,
    };
  }

  factory EnvironmentKeyvaluemapsState.fromMap(Map<String, dynamic> map) {
    return EnvironmentKeyvaluemapsState(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      envId: (() { final guardedValue = map['envId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
