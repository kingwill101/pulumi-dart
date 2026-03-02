// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering CredentialUserManagedIdentity resources.
class CredentialUserManagedIdentityState {
  /// List of tags that can be used for describing the Data Factory Credential.
  ///
  /// > **Note:** Manually altering a Credential resource will cause annotations to be lost, resulting in a change being detected on the next run.
  final pulumi.Input<List<String>>? annotations;
  /// The Data Factory ID in which to associate the Credential with. Changing this forces a new resource.
  final pulumi.Input<String>? dataFactoryId;
  /// The description for the Data Factory Credential.
  final pulumi.Input<String>? description;
  /// The Resouce ID of an existing User Assigned Managed Identity. This can be changed without recreating the resource. Changing this forces a new resource to be created.
  ///
  /// > **Note:** Attempting to create a Credential resource without first assigning the identity to the parent Data Factory will result in an Azure API error.
  final pulumi.Input<String>? identityId;
  /// Specifies the name of the Credential. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;

  /// Creates a new [CredentialUserManagedIdentityState].
  /// [annotations] List of tags that can be used for describing the Data Factory Credential.
  /// [dataFactoryId] The Data Factory ID in which to associate the Credential with. Changing this forces a new resource.
  /// [description] The description for the Data Factory Credential.
  /// [identityId] The Resouce ID of an existing User Assigned Managed Identity. This can be changed without recreating the resource. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Credential. Changing this forces a new resource to be created.
  CredentialUserManagedIdentityState({
    this.annotations,
    this.dataFactoryId,
    this.description,
    this.identityId,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'dataFactoryId': ?dataFactoryId,
      'description': ?description,
      'identityId': ?identityId,
      'name': ?name,
    };
  }

  factory CredentialUserManagedIdentityState.fromMap(Map<String, dynamic> map) {
    return CredentialUserManagedIdentityState(
      annotations: map['annotations'] == null ? null : ((map['annotations'] as List).cast<String>()).input(),
      dataFactoryId: map['dataFactoryId'] == null ? null : (map['dataFactoryId'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      identityId: map['identityId'] == null ? null : (map['identityId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

