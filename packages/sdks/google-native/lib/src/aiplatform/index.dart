import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1_encryption_spec_response.dart';
import 'google_cloud_aiplatform_v1_index_stats_response.dart';
import 'index_args.dart';

/// Creates an Index.
/// Auto-naming is currently not supported for this resource.
class Index extends pulumi.CustomResource {
  /// Timestamp when this Index was created.
  late final pulumi.Output<String> createTime;

  /// The pointers to DeployedIndexes created from this Index. An Index can be only deleted if all its DeployedIndexes had been undeployed first.
  late final pulumi.Output<List<Map<String, dynamic>>> deployedIndexes;

  /// The description of the Index.
  late final pulumi.Output<String> description;

  /// The display name of the Index. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  late final pulumi.Output<String> displayName;

  /// Immutable. Customer-managed encryption key spec for an Index. If set, this Index and all sub-resources of this Index will be secured by this key.
  late final pulumi.Output<GoogleCloudAiplatformV1EncryptionSpecResponse>
  encryptionSpec;

  /// Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  late final pulumi.Output<String> etag;

  /// Stats of the index resource.
  late final pulumi.Output<GoogleCloudAiplatformV1IndexStatsResponse>
  indexStats;

  /// Immutable. The update method to use with this Index. If not set, BATCH_UPDATE will be used by default.
  late final pulumi.Output<String> indexUpdateMethod;

  /// The labels with user-defined metadata to organize your Indexes. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// An additional information about the Index; the schema of the metadata can be found in metadata_schema.
  late final pulumi.Output<dynamic> metadata;

  /// Immutable. Points to a YAML file stored on Google Cloud Storage describing additional information about the Index, that is specific to it. Unset if the Index does not have any additional information. The schema is defined as an OpenAPI 3.0.2 [Schema Object](https://github.com/OAI/OpenAPI-Specification/blob/main/versions/3.0.2.md#schemaObject). Note: The URI given on output will be immutable and probably different, including the URI scheme, than the one given on input. The output URI will point to a location where the user only has a read access.
  late final pulumi.Output<String> metadataSchemaUri;

  /// The resource name of the Index.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Timestamp when this Index was most recently updated. This also includes any update to the contents of the Index. Note that Operations working on this Index may have their Operations.metadata.generic_metadata.update_time a little after the value of this timestamp, yet that does not mean their results are not already reflected in the Index. Result of any successfully completed Operation on the Index is reflected in it.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Index].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Index]. {@macro pulumi_aiplatform_v1_index_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Index(String name, {IndexArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'google-native:aiplatform/v1:Index',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    createTime = registerOutput<String>('createTime');
    deployedIndexes = registerOutput<List<Map<String, dynamic>>>(
      'deployedIndexes',
    );
    description = registerOutput<String>('description');
    displayName = registerOutput<String>('displayName');
    encryptionSpec =
        registerOutput<GoogleCloudAiplatformV1EncryptionSpecResponse>(
          'encryptionSpec',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return GoogleCloudAiplatformV1EncryptionSpecResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    etag = registerOutput<String>('etag');
    indexStats = registerOutput<GoogleCloudAiplatformV1IndexStatsResponse>(
      'indexStats',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GoogleCloudAiplatformV1IndexStatsResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    indexUpdateMethod = registerOutput<String>('indexUpdateMethod');
    labels = registerOutput<Map<String, String>>('labels');
    location = registerOutput<String>('location');
    metadata = registerOutput<dynamic>('metadata');
    metadataSchemaUri = registerOutput<String>('metadataSchemaUri');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    updateTime = registerOutput<String>('updateTime');
  }
}
