import 'package:pulumi/pulumi.dart' as pulumi;
import 'conversion_workspace_info_response.dart';
import 'database_type_response.dart';
import 'dump_flags_response.dart';
import 'migration_job_args.dart';
import 'performance_config_response.dart';
import 'reverse_ssh_connectivity_response.dart';
import 'status_response.dart';
import 'vpc_peering_connectivity_response.dart';

/// Creates a new migration job in a given project and location.
class MigrationJob extends pulumi.CustomResource {
  /// The CMEK (customer-managed encryption key) fully qualified key name used for the migration job. This field supports all migration jobs types except for: * Mysql to Mysql (use the cmek field in the cloudsql connection profile instead). * PostrgeSQL to PostgreSQL (use the cmek field in the cloudsql connection profile instead). * PostgreSQL to AlloyDB (use the kms_key_name field in the alloydb connection profile instead). Each Cloud CMEK key has the following format: projects/[PROJECT]/locations/[REGION]/keyRings/[RING]/cryptoKeys/[KEY_NAME]
  late final pulumi.Output<String> cmekKeyName;
  /// The conversion workspace used by the migration.
  late final pulumi.Output<ConversionWorkspaceInfoResponse> conversionWorkspace;
  /// The timestamp when the migration job resource was created. A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds. Example: "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> createTime;
  /// The resource name (URI) of the destination connection profile.
  late final pulumi.Output<String> destination;
  /// The database engine type and provider of the destination.
  late final pulumi.Output<DatabaseTypeResponse> destinationDatabase;
  /// The migration job display name.
  late final pulumi.Output<String> displayName;
  /// The initial dump flags. This field and the "dump_path" field are mutually exclusive.
  late final pulumi.Output<DumpFlagsResponse> dumpFlags;
  /// The path to the dump file in Google Cloud Storage, in the format: (gs://[BUCKET_NAME]/[OBJECT_NAME]). This field and the "dump_flags" field are mutually exclusive.
  late final pulumi.Output<String> dumpPath;
  /// The duration of the migration job (in seconds). A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s".
  late final pulumi.Output<String> duration;
  /// If the migration job is completed, the time when it was completed.
  late final pulumi.Output<String> endTime;
  /// The error details in case of state FAILED.
  late final pulumi.Output<StatusResponse> error;
  /// This field can be used to select the entities to migrate as part of the migration job. It uses AIP-160 notation to select a subset of the entities configured on the associated conversion-workspace. This field should not be set on migration-jobs that are not associated with a conversion workspace.
  late final pulumi.Output<String> filter;
  /// The resource labels for migration job to use to annotate any related underlying resources such as Compute Engine VMs. An object containing a list of "key": "value" pairs. Example: `{ "name": "wrench", "mass": "1.3kg", "count": "3" }`.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;
  /// Required. The ID of the instance to create.
  late final pulumi.Output<String> migrationJobId;
  /// The name (URI) of this migration job resource, in the form of: projects/{project}/locations/{location}/migrationJobs/{migrationJob}.
  late final pulumi.Output<String> name;
  /// Optional. Data dump parallelism settings used by the migration. Currently applicable only for MySQL to Cloud SQL for MySQL migrations only.
  late final pulumi.Output<PerformanceConfigResponse> performanceConfig;
  /// The current migration job phase.
  late final pulumi.Output<String> phase;
  late final pulumi.Output<String> project;
  /// Optional. A unique ID used to identify the request. If the server receives two requests with the same ID, then the second request is ignored. It is recommended to always set this value to a UUID. The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
  late final pulumi.Output<String?> requestId;
  /// The details needed to communicate to the source over Reverse SSH tunnel connectivity.
  late final pulumi.Output<ReverseSshConnectivityResponse> reverseSshConnectivity;
  /// The resource name (URI) of the source connection profile.
  late final pulumi.Output<String> source;
  /// The database engine type and provider of the source.
  late final pulumi.Output<DatabaseTypeResponse> sourceDatabase;
  /// The current migration job state.
  late final pulumi.Output<String> state;
  /// static ip connectivity data (default, no additional details needed).
  late final pulumi.Output<Map<String, dynamic>> staticIpConnectivity;
  /// The migration job type.
  late final pulumi.Output<String> type;
  /// The timestamp when the migration job resource was last updated. A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds. Example: "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> updateTime;
  /// The details of the VPC network that the source database is located in.
  late final pulumi.Output<VpcPeeringConnectivityResponse> vpcPeeringConnectivity;

  /// Creates a new [MigrationJob].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MigrationJob]. {@macro pulumi_datamigration_v1_migration_job_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MigrationJob(
    String name, {
    MigrationJobArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:datamigration/v1:MigrationJob',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    cmekKeyName = registerOutput<String>('cmekKeyName');
    conversionWorkspace = registerOutput<ConversionWorkspaceInfoResponse>('conversionWorkspace', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConversionWorkspaceInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    destination = registerOutput<String>('destination');
    destinationDatabase = registerOutput<DatabaseTypeResponse>('destinationDatabase', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatabaseTypeResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    displayName = registerOutput<String>('displayName');
    dumpFlags = registerOutput<DumpFlagsResponse>('dumpFlags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DumpFlagsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dumpPath = registerOutput<String>('dumpPath');
    duration = registerOutput<String>('duration');
    endTime = registerOutput<String>('endTime');
    error = registerOutput<StatusResponse>('error', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    filter = registerOutput<String>('filter');
    labels = registerOutput<Map<String, String>>('labels');
    location = registerOutput<String>('location');
    migrationJobId = registerOutput<String>('migrationJobId');
    this.name = registerOutput<String>('name');
    performanceConfig = registerOutput<PerformanceConfigResponse>('performanceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PerformanceConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    phase = registerOutput<String>('phase');
    project = registerOutput<String>('project');
    requestId = registerOutput<String?>('requestId');
    reverseSshConnectivity = registerOutput<ReverseSshConnectivityResponse>('reverseSshConnectivity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ReverseSshConnectivityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    source = registerOutput<String>('source');
    sourceDatabase = registerOutput<DatabaseTypeResponse>('sourceDatabase', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatabaseTypeResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    state = registerOutput<String>('state');
    staticIpConnectivity = registerOutput<Map<String, dynamic>>('staticIpConnectivity');
    type = registerOutput<String>('type');
    updateTime = registerOutput<String>('updateTime');
    vpcPeeringConnectivity = registerOutput<VpcPeeringConnectivityResponse>('vpcPeeringConnectivity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VpcPeeringConnectivityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
