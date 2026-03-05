import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_type_response_datamigration_v1beta1.dart';
import 'migration_job_datamigration_v1beta1_args.dart';
import 'reverse_ssh_connectivity_response_datamigration_v1beta1.dart';
import 'status_response_datamigration_v1beta1.dart';
import 'vpc_peering_connectivity_response_datamigration_v1beta1.dart';

/// Creates a new migration job in a given project and location.
class MigrationJobDatamigrationV1beta1 extends pulumi.CustomResource {
  /// The timestamp when the migration job resource was created. A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds. Example: "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> createTime;
  /// The resource name (URI) of the destination connection profile.
  late final pulumi.Output<String> destination;
  /// The database engine type and provider of the destination.
  late final pulumi.Output<DatabaseTypeResponseDatamigrationV1beta1> destinationDatabase;
  /// The migration job display name.
  late final pulumi.Output<String> displayName;
  /// The path to the dump file in Google Cloud Storage, in the format: (gs://[BUCKET_NAME]/[OBJECT_NAME]).
  late final pulumi.Output<String> dumpPath;
  /// The duration of the migration job (in seconds). A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s".
  late final pulumi.Output<String> duration;
  /// If the migration job is completed, the time when it was completed.
  late final pulumi.Output<String> endTime;
  /// The error details in case of state FAILED.
  late final pulumi.Output<StatusResponseDatamigrationV1beta1> error;
  /// The resource labels for migration job to use to annotate any related underlying resources such as Compute Engine VMs. An object containing a list of "key": "value" pairs. Example: `{ "name": "wrench", "mass": "1.3kg", "count": "3" }`.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;
  /// Required. The ID of the instance to create.
  late final pulumi.Output<String> migrationJobId;
  /// The name (URI) of this migration job resource, in the form of: projects/{project}/locations/{location}/migrationJobs/{migrationJob}.
  late final pulumi.Output<String> name;
  /// The current migration job phase.
  late final pulumi.Output<String> phase;
  late final pulumi.Output<String> project;
  /// A unique id used to identify the request. If the server receives two requests with the same id, then the second request will be ignored. It is recommended to always set this value to a UUID. The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
  late final pulumi.Output<String?> requestId;
  /// The details needed to communicate to the source over Reverse SSH tunnel connectivity.
  late final pulumi.Output<ReverseSshConnectivityResponseDatamigrationV1beta1> reverseSshConnectivity;
  /// The resource name (URI) of the source connection profile.
  late final pulumi.Output<String> source;
  /// The database engine type and provider of the source.
  late final pulumi.Output<DatabaseTypeResponseDatamigrationV1beta1> sourceDatabase;
  /// The current migration job state.
  late final pulumi.Output<String> state;
  /// static ip connectivity data (default, no additional details needed).
  late final pulumi.Output<Map<String, dynamic>> staticIpConnectivity;
  /// The migration job type.
  late final pulumi.Output<String> type;
  /// The timestamp when the migration job resource was last updated. A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds. Example: "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> updateTime;
  /// The details of the VPC network that the source database is located in.
  late final pulumi.Output<VpcPeeringConnectivityResponseDatamigrationV1beta1> vpcPeeringConnectivity;

  /// Creates a new [MigrationJobDatamigrationV1beta1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MigrationJobDatamigrationV1beta1]. {@macro pulumi_datamigration_v1beta1_migration_job_datamigration_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MigrationJobDatamigrationV1beta1(
    String name, {
    MigrationJobDatamigrationV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:datamigration/v1beta1:MigrationJob',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    destination = registerOutput<String>('destination');
    destinationDatabase = registerOutput<DatabaseTypeResponseDatamigrationV1beta1>('destinationDatabase', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatabaseTypeResponseDatamigrationV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    displayName = registerOutput<String>('displayName');
    dumpPath = registerOutput<String>('dumpPath');
    duration = registerOutput<String>('duration');
    endTime = registerOutput<String>('endTime');
    error = registerOutput<StatusResponseDatamigrationV1beta1>('error', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StatusResponseDatamigrationV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    labels = registerOutput<Map<String, String>>('labels');
    location = registerOutput<String>('location');
    migrationJobId = registerOutput<String>('migrationJobId');
    this.name = registerOutput<String>('name');
    phase = registerOutput<String>('phase');
    project = registerOutput<String>('project');
    requestId = registerOutput<String?>('requestId');
    reverseSshConnectivity = registerOutput<ReverseSshConnectivityResponseDatamigrationV1beta1>('reverseSshConnectivity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ReverseSshConnectivityResponseDatamigrationV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    source = registerOutput<String>('source');
    sourceDatabase = registerOutput<DatabaseTypeResponseDatamigrationV1beta1>('sourceDatabase', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatabaseTypeResponseDatamigrationV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    state = registerOutput<String>('state');
    staticIpConnectivity = registerOutput<Map<String, dynamic>>('staticIpConnectivity');
    type = registerOutput<String>('type');
    updateTime = registerOutput<String>('updateTime');
    vpcPeeringConnectivity = registerOutput<VpcPeeringConnectivityResponseDatamigrationV1beta1>('vpcPeeringConnectivity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VpcPeeringConnectivityResponseDatamigrationV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
