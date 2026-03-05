import 'package:pulumi/pulumi.dart' as pulumi;
import 'datastore_args.dart';
import 'google_cloud_apigee_v1_datastore_config_response.dart';

/// Create a Datastore for an org
/// Auto-naming is currently not supported for this resource.
class Datastore extends pulumi.CustomResource {
  /// Datastore create time, in milliseconds since the epoch of 1970-01-01T00:00:00Z
  late final pulumi.Output<String> createTime;
  /// Datastore Configurations.
  late final pulumi.Output<GoogleCloudApigeeV1DatastoreConfigResponse> datastoreConfig;
  /// Display name in UI
  late final pulumi.Output<String> displayName;
  /// Datastore last update time, in milliseconds since the epoch of 1970-01-01T00:00:00Z
  late final pulumi.Output<String> lastUpdateTime;
  /// Organization that the datastore belongs to
  late final pulumi.Output<String> org;
  late final pulumi.Output<String> organizationId;
  /// Resource link of Datastore. Example: `/organizations/{org}/analytics/datastores/{uuid}`
  late final pulumi.Output<String> self;
  /// Destination storage type. Supported types `gcs` or `bigquery`.
  late final pulumi.Output<String> targetType;

  /// Creates a new [Datastore].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Datastore]. {@macro pulumi_apigee_v1_datastore_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Datastore(
    String name, {
    DatastoreArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:apigee/v1:Datastore',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    datastoreConfig = registerOutput<GoogleCloudApigeeV1DatastoreConfigResponse>('datastoreConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GoogleCloudApigeeV1DatastoreConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    displayName = registerOutput<String>('displayName');
    lastUpdateTime = registerOutput<String>('lastUpdateTime');
    org = registerOutput<String>('org');
    organizationId = registerOutput<String>('organizationId');
    self = registerOutput<String>('self');
    targetType = registerOutput<String>('targetType');
  }
}
