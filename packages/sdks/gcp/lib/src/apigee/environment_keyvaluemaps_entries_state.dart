// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EnvironmentKeyvaluemapsEntries resources.
class EnvironmentKeyvaluemapsEntriesState {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The Apigee environment keyvalumaps Id associated with the Apigee environment,
  /// in the format `organizations/{{org_name}}/environments/{{env_name}}/keyvaluemaps/{{keyvaluemap_name}}`.
  final pulumi.Input<String?>? envKeyvaluemapId;
  /// Required. Resource URI that can be used to identify the scope of the key value map entries.
  final pulumi.Input<String?>? name;
  /// Required. Data or payload that is being retrieved and associated with the unique key.
  final pulumi.Input<String?>? value;

  /// Creates a new [EnvironmentKeyvaluemapsEntriesState].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [envKeyvaluemapId] The Apigee environment keyvalumaps Id associated with the Apigee environment,
  /// [name] Required. Resource URI that can be used to identify the scope of the key value map entries.
  /// [value] Required. Data or payload that is being retrieved and associated with the unique key.
  const EnvironmentKeyvaluemapsEntriesState({
    this.deletionPolicy,
    this.envKeyvaluemapId,
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'envKeyvaluemapId': ?envKeyvaluemapId,
      'name': ?name,
      'value': ?value,
    };
  }

  factory EnvironmentKeyvaluemapsEntriesState.fromMap(Map<String, dynamic> map) {
    return EnvironmentKeyvaluemapsEntriesState(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      envKeyvaluemapId: (() { final guardedValue = map['envKeyvaluemapId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
