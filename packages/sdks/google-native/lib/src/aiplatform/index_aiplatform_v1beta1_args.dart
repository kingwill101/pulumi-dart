// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_encryption_spec.dart';
import 'index_index_update_method_aiplatform_v1beta1.dart';

/// {@template pulumi_aiplatform_v1beta1_index_aiplatform_v1beta1_args_doc}
/// The set of arguments for Index.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1beta1_index_aiplatform_v1beta1_args_doc}
class IndexAiplatformV1beta1Args {
  /// The description of the Index.
  final pulumi.Input<String>? description;
  /// The display name of the Index. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  final pulumi.Input<String> displayName;
  /// Immutable. Customer-managed encryption key spec for an Index. If set, this Index and all sub-resources of this Index will be secured by this key.
  final pulumi.Input<GoogleCloudAiplatformV1beta1EncryptionSpec>? encryptionSpec;
  /// Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  final pulumi.Input<String>? etag;
  /// Immutable. The update method to use with this Index. If not set, BATCH_UPDATE will be used by default.
  final pulumi.Input<IndexIndexUpdateMethodAiplatformV1beta1>? indexUpdateMethod;
  /// The labels with user-defined metadata to organize your Indexes. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// An additional information about the Index; the schema of the metadata can be found in metadata_schema.
  final pulumi.Input<dynamic>? metadata;
  /// Immutable. Points to a YAML file stored on Google Cloud Storage describing additional information about the Index, that is specific to it. Unset if the Index does not have any additional information. The schema is defined as an OpenAPI 3.0.2 [Schema Object](https://github.com/OAI/OpenAPI-Specification/blob/main/versions/3.0.2.md#schemaObject). Note: The URI given on output will be immutable and probably different, including the URI scheme, than the one given on input. The output URI will point to a location where the user only has a read access.
  final pulumi.Input<String>? metadataSchemaUri;
  final pulumi.Input<String>? project;

  /// Creates a new [IndexAiplatformV1beta1Args].
  /// [description] The description of the Index.
  /// [displayName] The display name of the Index. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  /// [encryptionSpec] Immutable. Customer-managed encryption key spec for an Index. If set, this Index and all sub-resources of this Index will be secured by this key.
  /// [etag] Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  /// [indexUpdateMethod] Immutable. The update method to use with this Index. If not set, BATCH_UPDATE will be used by default.
  /// [labels] The labels with user-defined metadata to organize your Indexes. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  /// [location] Optional.
  /// [metadata] An additional information about the Index; the schema of the metadata can be found in metadata_schema.
  /// [metadataSchemaUri] Immutable. Points to a YAML file stored on Google Cloud Storage describing additional information about the Index, that is specific to it. Unset if the Index does not have any additional information. The schema is defined as an OpenAPI 3.0.2 [Schema Object](https://github.com/OAI/OpenAPI-Specification/blob/main/versions/3.0.2.md#schemaObject). Note: The URI given on output will be immutable and probably different, including the URI scheme, than the one given on input. The output URI will point to a location where the user only has a read access.
  /// [project] Optional.
  IndexAiplatformV1beta1Args({
    this.description,
    required this.displayName,
    this.encryptionSpec,
    this.etag,
    this.indexUpdateMethod,
    this.labels,
    this.location,
    this.metadata,
    this.metadataSchemaUri,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': displayName,
      'encryptionSpec': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1beta1EncryptionSpec, Map<String, dynamic>>(encryptionSpec, (value) => value.toMap()),
      'etag': ?etag,
      'indexUpdateMethod': ?pulumi.Input.mapOptionalInputValue<IndexIndexUpdateMethodAiplatformV1beta1, String>(indexUpdateMethod, (value) => value.value),
      'labels': ?labels,
      'location': ?location,
      'metadata': ?metadata,
      'metadataSchemaUri': ?metadataSchemaUri,
      'project': ?project,
    };
  }

  factory IndexAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return IndexAiplatformV1beta1Args(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: (map['displayName'] as String).input(),
      encryptionSpec: map['encryptionSpec'] == null ? null : (GoogleCloudAiplatformV1beta1EncryptionSpec.fromMap((map['encryptionSpec'] as Map).cast<String, dynamic>())).input(),
      etag: map['etag'] == null ? null : (map['etag'] as String).input(),
      indexUpdateMethod: map['indexUpdateMethod'] == null ? null : (IndexIndexUpdateMethodAiplatformV1beta1.fromValue(map['indexUpdateMethod'] as String)).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      metadata: map['metadata'] == null ? null : (map['metadata']).input(),
      metadataSchemaUri: map['metadataSchemaUri'] == null ? null : (map['metadataSchemaUri'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

