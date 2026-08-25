// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_index_encryption_spec.dart';
import 'ai_index_metadata.dart';

/// {@template pulumi_vertex_ai_index_ai_index_args_doc}
/// The set of arguments for AiIndex.
/// {@endtemplate}
/// {@macro pulumi_vertex_ai_index_ai_index_args_doc}
class AiIndexArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The description of the Index.
  final pulumi.Input<String?>? description;
  /// The display name of the Index. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  final pulumi.Input<String> displayName;
  /// Customer-managed encryption key spec for an Index. If set, this Index and all sub-resources of this Index will be secured by this key.
  /// Structure is documented below.
  final pulumi.Input<AiIndexEncryptionSpec?>? encryptionSpec;
  /// The update method to use with this Index. The value must be the followings. If not set, BATCH_UPDATE will be used by default.
  /// * BATCH_UPDATE: user can call indexes.patch with files on Cloud Storage of datapoints to update.
  /// * STREAM_UPDATE: user can call indexes.upsertDatapoints/DeleteDatapoints to update the Index and the updates will be applied in corresponding DeployedIndexes in nearly real-time.
  final pulumi.Input<String?>? indexUpdateMethod;
  /// The labels with user-defined metadata to organize your Indexes.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// Additional information about the Index.
  /// Although this field is not marked as required in the API specification, it is currently required when creating an Index and must be provided.
  /// Attempts to create an Index without this field will result in an API error.
  /// Structure is documented below.
  final pulumi.Input<AiIndexMetadata> metadata;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The region of the index. eg us-central1
  final pulumi.Input<String?>? region;

  /// Creates a new [AiIndexArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] The description of the Index.
  /// [displayName] The display name of the Index. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  /// [encryptionSpec] Customer-managed encryption key spec for an Index. If set, this Index and all sub-resources of this Index will be secured by this key.
  /// [indexUpdateMethod] The update method to use with this Index. The value must be the followings. If not set, BATCH_UPDATE will be used by default.
  /// [labels] The labels with user-defined metadata to organize your Indexes.
  /// [metadata] Additional information about the Index.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region of the index. eg us-central1
  const AiIndexArgs({
    this.deletionPolicy,
    this.description,
    required this.displayName,
    this.encryptionSpec,
    this.indexUpdateMethod,
    this.labels,
    required this.metadata,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'displayName': displayName,
      'encryptionSpec': ?pulumi.Input.mapOptionalInputValue<AiIndexEncryptionSpec, Map<String, dynamic>>(encryptionSpec, (value) => value.toMap()),
      'indexUpdateMethod': ?indexUpdateMethod,
      'labels': ?labels,
      'metadata': pulumi.Input.mapInputValue<AiIndexMetadata, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'project': ?project,
      'region': ?region,
    };
  }

  factory AiIndexArgs.fromMap(Map<String, dynamic> map) {
    return AiIndexArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      encryptionSpec: (() { final guardedValue = map['encryptionSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiIndexEncryptionSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      indexUpdateMethod: (() { final guardedValue = map['indexUpdateMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      metadata: pulumi.Input.fromValue(AiIndexMetadata.fromMap((map['metadata']! as Map).cast<String, dynamic>())),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
