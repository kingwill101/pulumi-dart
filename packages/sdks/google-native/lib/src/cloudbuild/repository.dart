import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_args.dart';

/// Creates a Repository.
class Repository extends pulumi.CustomResource {
  /// Allows clients to store small amounts of arbitrary data.
  late final pulumi.Output<Map<String, String>> annotations;
  late final pulumi.Output<String> connectionId;
  /// Server assigned timestamp for when the connection was created.
  late final pulumi.Output<String> createTime;
  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  late final pulumi.Output<String> etag;
  late final pulumi.Output<String> location;
  /// Immutable. Resource name of the repository, in the format `projects/*/locations/*/connections/*/repositories/*`.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  /// Git Clone HTTPS URI.
  late final pulumi.Output<String> remoteUri;
  /// Required. The ID to use for the repository, which will become the final component of the repository's resource name. This ID should be unique in the connection. Allows alphanumeric characters and any of -._~%!$&'()*+,;=@.
  late final pulumi.Output<String> repositoryId;
  /// Server assigned timestamp for when the connection was updated.
  late final pulumi.Output<String> updateTime;
  /// External ID of the webhook created for the repository.
  late final pulumi.Output<String> webhookId;

  /// Creates a new [Repository].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Repository]. {@macro pulumi_cloudbuild_v2_repository_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Repository(
    String name, {
    RepositoryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:cloudbuild/v2:Repository',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '0.32.0', replaceOnChanges: ['connectionId', 'location', 'project', 'repositoryId']).merge(options),
        ) {
    annotations = registerOutput<Map<String, String>>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    connectionId = registerOutput<String>('connectionId');
    createTime = registerOutput<String>('createTime');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    remoteUri = registerOutput<String>('remoteUri');
    repositoryId = registerOutput<String>('repositoryId');
    updateTime = registerOutput<String>('updateTime');
    webhookId = registerOutput<String>('webhookId');
  }

  /// Creates a typed reference to an existing [Repository] resource.
  Repository.reference(String urn)
    : super(
        'google-native:cloudbuild/v2:Repository',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    annotations = registerOutput<Map<String, String>>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    connectionId = registerOutput<String>('connectionId');
    createTime = registerOutput<String>('createTime');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    remoteUri = registerOutput<String>('remoteUri');
    repositoryId = registerOutput<String>('repositoryId');
    updateTime = registerOutput<String>('updateTime');
    webhookId = registerOutput<String>('webhookId');
  }
}
