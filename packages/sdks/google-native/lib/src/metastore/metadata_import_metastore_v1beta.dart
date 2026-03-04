import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_dump_response_metastore_v1beta.dart';
import 'metadata_import_metastore_v1beta_args.dart';

/// Creates a new MetadataImport in a given project and location.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class MetadataImportMetastoreV1beta extends pulumi.CustomResource {
  /// The time when the metadata import was started.
  late final pulumi.Output<String> createTime;

  /// Immutable. A database dump from a pre-existing metastore's database.
  late final pulumi.Output<DatabaseDumpResponseMetastoreV1beta> databaseDump;

  /// The description of the metadata import.
  late final pulumi.Output<String> description;

  /// The time when the metadata import finished.
  late final pulumi.Output<String> endTime;
  late final pulumi.Output<String> location;

  /// Required. The ID of the metadata import, which is used as the final component of the metadata import's name.This value must be between 1 and 64 characters long, begin with a letter, end with a letter or number, and consist of alpha-numeric ASCII characters or hyphens.
  late final pulumi.Output<String> metadataImportId;

  /// Immutable. The relative resource name of the metadata import, of the form:projects/{project_number}/locations/{location_id}/services/{service_id}/metadataImports/{metadata_import_id}.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Optional. A request ID. Specify a unique request ID to allow the server to ignore the request if it has completed. The server will ignore subsequent requests that provide a duplicate request ID for at least 60 minutes after the first request.For example, if an initial request times out, followed by another request with the same request ID, the server ignores the second request to prevent the creation of duplicate commitments.The request ID must be a valid UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier#Format) A zero UUID (00000000-0000-0000-0000-000000000000) is not supported.
  late final pulumi.Output<String?> requestId;
  late final pulumi.Output<String> serviceId;

  /// The current state of the metadata import.
  late final pulumi.Output<String> state;

  /// The time when the metadata import was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [MetadataImportMetastoreV1beta].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MetadataImportMetastoreV1beta]. {@macro pulumi_metastore_v1beta_metadata_import_metastore_v1beta_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MetadataImportMetastoreV1beta(
    String name, {
    MetadataImportMetastoreV1betaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:metastore/v1beta:MetadataImport',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<String>('createTime');
    databaseDump = registerOutput<DatabaseDumpResponseMetastoreV1beta>(
      'databaseDump',
    );
    description = registerOutput<String>('description');
    endTime = registerOutput<String>('endTime');
    location = registerOutput<String>('location');
    metadataImportId = registerOutput<String>('metadataImportId');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    requestId = registerOutput<String?>('requestId');
    serviceId = registerOutput<String>('serviceId');
    state = registerOutput<String>('state');
    updateTime = registerOutput<String>('updateTime');
  }
}
