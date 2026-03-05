import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_apigee_v1_entity_metadata_response.dart';
import 'sharedflow_args.dart';

/// Uploads a ZIP-formatted shared flow configuration bundle to an organization. If the shared flow already exists, this creates a new revision of it. If the shared flow does not exist, this creates it. Once imported, the shared flow revision must be deployed before it can be accessed at runtime. The size limit of a shared flow bundle is 15 MB.
class Sharedflow extends pulumi.CustomResource {
  /// Required. Must be set to either `import` or `validate`.
  late final pulumi.Output<String> action;

  /// The id of the most recently created revision for this shared flow.
  late final pulumi.Output<String> latestRevisionId;

  /// Metadata describing the shared flow.
  late final pulumi.Output<GoogleCloudApigeeV1EntityMetadataResponse> metaData;

  /// Required. The name to give the shared flow
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> organizationId;

  /// A list of revisions of this shared flow.
  late final pulumi.Output<List<String>> revision;

  /// Creates a new [Sharedflow].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Sharedflow]. {@macro pulumi_apigee_v1_sharedflow_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Sharedflow(
    String name, {
    SharedflowArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:apigee/v1:Sharedflow',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    action = registerOutput<String>('action');
    latestRevisionId = registerOutput<String>('latestRevisionId');
    metaData = registerOutput<GoogleCloudApigeeV1EntityMetadataResponse>(
      'metaData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GoogleCloudApigeeV1EntityMetadataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    this.name = registerOutput<String>('name');
    organizationId = registerOutput<String>('organizationId');
    revision = registerOutput<List<String>>('revision');
  }
}
