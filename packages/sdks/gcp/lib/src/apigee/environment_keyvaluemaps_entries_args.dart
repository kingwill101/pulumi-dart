// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_environment_keyvaluemaps_entries_environment_keyvaluemaps_entries_args_doc}
/// The set of arguments for EnvironmentKeyvaluemapsEntries.
/// {@endtemplate}
/// {@macro pulumi_apigee_environment_keyvaluemaps_entries_environment_keyvaluemaps_entries_args_doc}
class EnvironmentKeyvaluemapsEntriesArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The Apigee environment keyvalumaps Id associated with the Apigee environment,
  /// in the format `organizations/{{org_name}}/environments/{{env_name}}/keyvaluemaps/{{keyvaluemap_name}}`.
  final pulumi.Input<String> envKeyvaluemapId;
  /// Required. Resource URI that can be used to identify the scope of the key value map entries.
  final pulumi.Input<String?>? name;
  /// Required. Data or payload that is being retrieved and associated with the unique key.
  final pulumi.Input<String> value;

  /// Creates a new [EnvironmentKeyvaluemapsEntriesArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [envKeyvaluemapId] The Apigee environment keyvalumaps Id associated with the Apigee environment,
  /// [name] Required. Resource URI that can be used to identify the scope of the key value map entries.
  /// [value] Required. Data or payload that is being retrieved and associated with the unique key.
  const EnvironmentKeyvaluemapsEntriesArgs({
    this.deletionPolicy,
    required this.envKeyvaluemapId,
    this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'envKeyvaluemapId': envKeyvaluemapId,
      'name': ?name,
      'value': value,
    };
  }

  factory EnvironmentKeyvaluemapsEntriesArgs.fromMap(Map<String, dynamic> map) {
    return EnvironmentKeyvaluemapsEntriesArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      envKeyvaluemapId: pulumi.Input.fromValue(map['envKeyvaluemapId'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
