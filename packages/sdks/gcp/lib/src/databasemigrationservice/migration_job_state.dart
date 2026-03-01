// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'migration_job_dump_flags.dart';
import 'migration_job_error.dart';
import 'migration_job_performance_config.dart';
import 'migration_job_reverse_ssh_connectivity.dart';
import 'migration_job_vpc_peering_connectivity.dart';

/// Input properties used for looking up and filtering MigrationJob resources.
class MigrationJobState {
  /// Output only. The timestamp when the resource was created. A timestamp in RFC3339 UTC 'Zulu' format, accurate to nanoseconds. Example: '2014-10-02T15:01:23.045123456Z'.
  final pulumi.Input<String>? createTime;
  /// The name of the destination connection profile resource in the form of projects/{project}/locations/{location}/connectionProfiles/{destinationConnectionProfile}.
  final pulumi.Input<String>? destination;
  /// The migration job display name.
  final pulumi.Input<String>? displayName;
  /// The initial dump flags.
  /// Structure is documented below.
  final pulumi.Input<MigrationJobDumpFlags>? dumpFlags;
  /// The path to the dump file in Google Cloud Storage,
  /// in the format: (gs://[BUCKET_NAME]/[OBJECT_NAME]).
  /// This field and the "dump_flags" field are mutually exclusive.
  final pulumi.Input<String>? dumpPath;
  /// The type of the data dump. Supported for MySQL to CloudSQL for MySQL
  /// migrations only.
  /// Possible values are: `LOGICAL`, `PHYSICAL`.
  final pulumi.Input<String>? dumpType;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Output only. The error details in case of state FAILED.
  /// Structure is documented below.
  final pulumi.Input<List<MigrationJobError>>? errors;
  /// The resource labels for migration job to use to annotate any related underlying resources such as Compute Engine VMs.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location where the migration job should reside.
  final pulumi.Input<String>? location;
  /// The ID of the migration job.
  final pulumi.Input<String>? migrationJobId;
  /// The name of this migration job resource in the form of projects/{project}/locations/{location}/migrationJobs/{migrationJob}.
  final pulumi.Input<String>? name;
  /// Data dump parallelism settings used by the migration.
  /// Structure is documented below.
  final pulumi.Input<MigrationJobPerformanceConfig>? performanceConfig;
  /// The current migration job phase.
  final pulumi.Input<String>? phase;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// The details of the VPC network that the source database is located in.
  /// Structure is documented below.
  final pulumi.Input<MigrationJobReverseSshConnectivity>? reverseSshConnectivity;
  /// The name of the source connection profile resource in the form of projects/{project}/locations/{location}/connectionProfiles/{sourceConnectionProfile}.
  final pulumi.Input<String>? source;
  /// The current migration job state.
  final pulumi.Input<String>? state;
  /// If set to an empty object (`{}`), the source database will allow incoming
  /// connections from the public IP of the destination database.
  /// You can retrieve the public IP of the Cloud SQL instance from the
  /// Cloud SQL console or using Cloud SQL APIs.
  final pulumi.Input<Map<String, dynamic>>? staticIpConnectivity;
  /// The type of the migration job.
  /// Possible values are: `ONE_TIME`, `CONTINUOUS`.
  final pulumi.Input<String>? type;
  /// The details of the VPC network that the source database is located in.
  /// Structure is documented below.
  final pulumi.Input<MigrationJobVpcPeeringConnectivity>? vpcPeeringConnectivity;

  /// Creates a new [MigrationJobState].
  /// [createTime] Output only. The timestamp when the resource was created. A timestamp in RFC3339 UTC 'Zulu' format, accurate to nanoseconds. Example: '2014-10-02T15:01:23.045123456Z'.
  /// [destination] The name of the destination connection profile resource in the form of projects/{project}/locations/{location}/connectionProfiles/{destinationConnectionProfile}.
  /// [displayName] The migration job display name.
  /// [dumpFlags] The initial dump flags.
  /// [dumpPath] The path to the dump file in Google Cloud Storage,
  /// [dumpType] The type of the data dump. Supported for MySQL to CloudSQL for MySQL
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [errors] Output only. The error details in case of state FAILED.
  /// [labels] The resource labels for migration job to use to annotate any related underlying resources such as Compute Engine VMs.
  /// [location] The location where the migration job should reside.
  /// [migrationJobId] The ID of the migration job.
  /// [name] The name of this migration job resource in the form of projects/{project}/locations/{location}/migrationJobs/{migrationJob}.
  /// [performanceConfig] Data dump parallelism settings used by the migration.
  /// [phase] The current migration job phase.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [reverseSshConnectivity] The details of the VPC network that the source database is located in.
  /// [source] The name of the source connection profile resource in the form of projects/{project}/locations/{location}/connectionProfiles/{sourceConnectionProfile}.
  /// [state] The current migration job state.
  /// [staticIpConnectivity] If set to an empty object (`{}`), the source database will allow incoming
  /// [type] The type of the migration job.
  /// [vpcPeeringConnectivity] The details of the VPC network that the source database is located in.
  MigrationJobState({
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? destination,
    pulumi.Output<String>? displayName,
    pulumi.Output<MigrationJobDumpFlags>? dumpFlags,
    pulumi.Output<String>? dumpPath,
    pulumi.Output<String>? dumpType,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<List<MigrationJobError>>? errors,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? migrationJobId,
    pulumi.Output<String>? name,
    pulumi.Output<MigrationJobPerformanceConfig>? performanceConfig,
    pulumi.Output<String>? phase,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<MigrationJobReverseSshConnectivity>? reverseSshConnectivity,
    pulumi.Output<String>? source,
    pulumi.Output<String>? state,
    pulumi.Output<Map<String, dynamic>>? staticIpConnectivity,
    pulumi.Output<String>? type,
    pulumi.Output<MigrationJobVpcPeeringConnectivity>? vpcPeeringConnectivity,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      destination = pulumi.Input.asOptionalInput<String>(destination),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      dumpFlags = pulumi.Input.asOptionalInput<MigrationJobDumpFlags>(dumpFlags),
      dumpPath = pulumi.Input.asOptionalInput<String>(dumpPath),
      dumpType = pulumi.Input.asOptionalInput<String>(dumpType),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      errors = pulumi.Input.asOptionalInput<List<MigrationJobError>>(errors),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      migrationJobId = pulumi.Input.asOptionalInput<String>(migrationJobId),
      name = pulumi.Input.asOptionalInput<String>(name),
      performanceConfig = pulumi.Input.asOptionalInput<MigrationJobPerformanceConfig>(performanceConfig),
      phase = pulumi.Input.asOptionalInput<String>(phase),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      reverseSshConnectivity = pulumi.Input.asOptionalInput<MigrationJobReverseSshConnectivity>(reverseSshConnectivity),
      source = pulumi.Input.asOptionalInput<String>(source),
      state = pulumi.Input.asOptionalInput<String>(state),
      staticIpConnectivity = pulumi.Input.asOptionalInput<Map<String, dynamic>>(staticIpConnectivity),
      type = pulumi.Input.asOptionalInput<String>(type),
      vpcPeeringConnectivity = pulumi.Input.asOptionalInput<MigrationJobVpcPeeringConnectivity>(vpcPeeringConnectivity);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'destination': ?destination,
      'displayName': ?displayName,
      'dumpFlags': ?pulumi.Input.mapOptionalInputValue<MigrationJobDumpFlags, Map<String, dynamic>>(dumpFlags, (value) => value.toMap()),
      'dumpPath': ?dumpPath,
      'dumpType': ?dumpType,
      'effectiveLabels': ?effectiveLabels,
      'errors': ?pulumi.Input.mapOptionalInputValue<List<MigrationJobError>, List<Map<String, dynamic>>>(errors, (value) => pulumi.Input.encodeList<MigrationJobError, Map<String, dynamic>>(value, (value) => value.toMap())),
      'labels': ?labels,
      'location': ?location,
      'migrationJobId': ?migrationJobId,
      'name': ?name,
      'performanceConfig': ?pulumi.Input.mapOptionalInputValue<MigrationJobPerformanceConfig, Map<String, dynamic>>(performanceConfig, (value) => value.toMap()),
      'phase': ?phase,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'reverseSshConnectivity': ?pulumi.Input.mapOptionalInputValue<MigrationJobReverseSshConnectivity, Map<String, dynamic>>(reverseSshConnectivity, (value) => value.toMap()),
      'source': ?source,
      'state': ?state,
      'staticIpConnectivity': ?staticIpConnectivity,
      'type': ?type,
      'vpcPeeringConnectivity': ?pulumi.Input.mapOptionalInputValue<MigrationJobVpcPeeringConnectivity, Map<String, dynamic>>(vpcPeeringConnectivity, (value) => value.toMap()),
    };
  }

  factory MigrationJobState.fromMap(Map<String, dynamic> map) {
    return MigrationJobState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      destination: map['destination'] == null ? null : pulumi.Output.create<String>(map['destination'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      dumpFlags: map['dumpFlags'] == null ? null : pulumi.Output.create<MigrationJobDumpFlags>(MigrationJobDumpFlags.fromMap((map['dumpFlags'] as Map).cast<String, dynamic>())),
      dumpPath: map['dumpPath'] == null ? null : pulumi.Output.create<String>(map['dumpPath'] as String),
      dumpType: map['dumpType'] == null ? null : pulumi.Output.create<String>(map['dumpType'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      errors: map['errors'] == null ? null : pulumi.Output.create<List<MigrationJobError>>(pulumi.Input.decodeList<MigrationJobError>(map['errors'], (value) => MigrationJobError.fromMap((value as Map).cast<String, dynamic>()))),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      migrationJobId: map['migrationJobId'] == null ? null : pulumi.Output.create<String>(map['migrationJobId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      performanceConfig: map['performanceConfig'] == null ? null : pulumi.Output.create<MigrationJobPerformanceConfig>(MigrationJobPerformanceConfig.fromMap((map['performanceConfig'] as Map).cast<String, dynamic>())),
      phase: map['phase'] == null ? null : pulumi.Output.create<String>(map['phase'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      reverseSshConnectivity: map['reverseSshConnectivity'] == null ? null : pulumi.Output.create<MigrationJobReverseSshConnectivity>(MigrationJobReverseSshConnectivity.fromMap((map['reverseSshConnectivity'] as Map).cast<String, dynamic>())),
      source: map['source'] == null ? null : pulumi.Output.create<String>(map['source'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      staticIpConnectivity: map['staticIpConnectivity'] == null ? null : pulumi.Output.create<Map<String, dynamic>>((map['staticIpConnectivity'] as Map).cast<String, dynamic>()),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      vpcPeeringConnectivity: map['vpcPeeringConnectivity'] == null ? null : pulumi.Output.create<MigrationJobVpcPeeringConnectivity>(MigrationJobVpcPeeringConnectivity.fromMap((map['vpcPeeringConnectivity'] as Map).cast<String, dynamic>())),
    );
  }
}

