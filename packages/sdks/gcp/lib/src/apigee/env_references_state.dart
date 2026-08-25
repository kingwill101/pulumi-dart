// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EnvReferences resources.
class EnvReferencesState {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Optional. A human-readable description of this reference.
  final pulumi.Input<String?>? description;
  /// The Apigee environment group associated with the Apigee environment,
  /// in the format `organizations/{{org_name}}/environments/{{env_name}}`.
  final pulumi.Input<String?>? envId;
  /// Required. The resource id of this reference. Values must match the regular expression [\w\s-.]+.
  final pulumi.Input<String?>? name;
  /// Required. The id of the resource to which this reference refers. Must be the id of a resource that exists in the parent environment and is of the given resourceType.
  final pulumi.Input<String?>? refers;
  /// The type of resource referred to by this reference. Valid values are 'KeyStore' or 'TrustStore'.
  final pulumi.Input<String?>? resourceType;

  /// Creates a new [EnvReferencesState].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] Optional. A human-readable description of this reference.
  /// [envId] The Apigee environment group associated with the Apigee environment,
  /// [name] Required. The resource id of this reference. Values must match the regular expression [\w\s-.]+.
  /// [refers] Required. The id of the resource to which this reference refers. Must be the id of a resource that exists in the parent environment and is of the given resourceType.
  /// [resourceType] The type of resource referred to by this reference. Valid values are 'KeyStore' or 'TrustStore'.
  const EnvReferencesState({
    this.deletionPolicy,
    this.description,
    this.envId,
    this.name,
    this.refers,
    this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'envId': ?envId,
      'name': ?name,
      'refers': ?refers,
      'resourceType': ?resourceType,
    };
  }

  factory EnvReferencesState.fromMap(Map<String, dynamic> map) {
    return EnvReferencesState(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      envId: (() { final guardedValue = map['envId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      refers: (() { final guardedValue = map['refers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceType: (() { final guardedValue = map['resourceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
