// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EnvReferences resources.
class EnvReferencesState {
  /// Optional. A human-readable description of this reference.
  final pulumi.Input<String>? description;
  /// The Apigee environment group associated with the Apigee environment,
  /// in the format `organizations/{{org_name}}/environments/{{env_name}}`.
  final pulumi.Input<String>? envId;
  /// Required. The resource id of this reference. Values must match the regular expression [\w\s-.]+.
  final pulumi.Input<String>? name;
  /// Required. The id of the resource to which this reference refers. Must be the id of a resource that exists in the parent environment and is of the given resourceType.
  final pulumi.Input<String>? refers;
  /// The type of resource referred to by this reference. Valid values are 'KeyStore' or 'TrustStore'.
  final pulumi.Input<String>? resourceType;

  /// Creates a new [EnvReferencesState].
  /// [description] Optional. A human-readable description of this reference.
  /// [envId] The Apigee environment group associated with the Apigee environment,
  /// [name] Required. The resource id of this reference. Values must match the regular expression [\w\s-.]+.
  /// [refers] Required. The id of the resource to which this reference refers. Must be the id of a resource that exists in the parent environment and is of the given resourceType.
  /// [resourceType] The type of resource referred to by this reference. Valid values are 'KeyStore' or 'TrustStore'.
  EnvReferencesState({
    this.description,
    this.envId,
    this.name,
    this.refers,
    this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'envId': ?envId,
      'name': ?name,
      'refers': ?refers,
      'resourceType': ?resourceType,
    };
  }

  factory EnvReferencesState.fromMap(Map<String, dynamic> map) {
    return EnvReferencesState(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      envId: map['envId'] == null ? null : (map['envId']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      refers: map['refers'] == null ? null : (map['refers']! as String).input(),
      resourceType: map['resourceType'] == null ? null : (map['resourceType']! as String).input(),
    );
  }
}

