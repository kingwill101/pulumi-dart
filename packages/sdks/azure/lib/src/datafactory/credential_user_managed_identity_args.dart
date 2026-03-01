// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datafactory_credential_user_managed_identity_credential_user_managed_identity_args_doc}
/// The set of arguments for CredentialUserManagedIdentity.
/// {@endtemplate}
/// {@macro pulumi_datafactory_credential_user_managed_identity_credential_user_managed_identity_args_doc}
class CredentialUserManagedIdentityArgs {
  /// List of tags that can be used for describing the Data Factory Credential.
  ///
  /// > **Note:** Manually altering a Credential resource will cause annotations to be lost, resulting in a change being detected on the next run.
  final pulumi.Input<List<String>>? annotations;
  /// The Data Factory ID in which to associate the Credential with. Changing this forces a new resource.
  final pulumi.Input<String> dataFactoryId;
  /// The description for the Data Factory Credential.
  final pulumi.Input<String>? description;
  /// The Resouce ID of an existing User Assigned Managed Identity. This can be changed without recreating the resource. Changing this forces a new resource to be created.
  ///
  /// > **Note:** Attempting to create a Credential resource without first assigning the identity to the parent Data Factory will result in an Azure API error.
  final pulumi.Input<String> identityId;
  /// Specifies the name of the Credential. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;

  /// Creates a new [CredentialUserManagedIdentityArgs].
  /// [annotations] List of tags that can be used for describing the Data Factory Credential.
  /// [dataFactoryId] The Data Factory ID in which to associate the Credential with. Changing this forces a new resource.
  /// [description] The description for the Data Factory Credential.
  /// [identityId] The Resouce ID of an existing User Assigned Managed Identity. This can be changed without recreating the resource. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Credential. Changing this forces a new resource to be created.
  CredentialUserManagedIdentityArgs({
    pulumi.Output<List<String>>? annotations,
    required pulumi.Output<String> dataFactoryId,
    pulumi.Output<String>? description,
    required pulumi.Output<String> identityId,
    pulumi.Output<String>? name,
  }) :
      annotations = pulumi.Input.asOptionalInput<List<String>>(annotations),
      dataFactoryId = pulumi.Input.asInput<String>(dataFactoryId),
      description = pulumi.Input.asOptionalInput<String>(description),
      identityId = pulumi.Input.asInput<String>(identityId),
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'dataFactoryId': dataFactoryId,
      'description': ?description,
      'identityId': identityId,
      'name': ?name,
    };
  }

  factory CredentialUserManagedIdentityArgs.fromMap(Map<String, dynamic> map) {
    return CredentialUserManagedIdentityArgs(
      annotations: map['annotations'] == null ? null : pulumi.Output.create<List<String>>((map['annotations'] as List).cast<String>()),
      dataFactoryId: pulumi.Output.create<String>(map['dataFactoryId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      identityId: pulumi.Output.create<String>(map['identityId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
    );
  }
}

