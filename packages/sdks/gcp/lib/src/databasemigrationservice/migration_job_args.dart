// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'migration_job_dump_flags.dart';
import 'migration_job_performance_config.dart';
import 'migration_job_reverse_ssh_connectivity.dart';
import 'migration_job_vpc_peering_connectivity.dart';

/// {@template pulumi_databasemigrationservice_migration_job_migration_job_args_doc}
/// The set of arguments for MigrationJob.
/// {@endtemplate}
/// {@macro pulumi_databasemigrationservice_migration_job_migration_job_args_doc}
class MigrationJobArgs {
  /// The name of the destination connection profile resource in the form of projects/{project}/locations/{location}/connectionProfiles/{destinationConnectionProfile}.
  final pulumi.Input<String> destination;
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
  /// The resource labels for migration job to use to annotate any related underlying resources such as Compute Engine VMs.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location where the migration job should reside.
  final pulumi.Input<String>? location;
  /// The ID of the migration job.
  final pulumi.Input<String> migrationJobId;
  /// Data dump parallelism settings used by the migration.
  /// Structure is documented below.
  final pulumi.Input<MigrationJobPerformanceConfig>? performanceConfig;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The details of the VPC network that the source database is located in.
  /// Structure is documented below.
  final pulumi.Input<MigrationJobReverseSshConnectivity>? reverseSshConnectivity;
  /// The name of the source connection profile resource in the form of projects/{project}/locations/{location}/connectionProfiles/{sourceConnectionProfile}.
  final pulumi.Input<String> source;
  /// If set to an empty object (`{}`), the source database will allow incoming
  /// connections from the public IP of the destination database.
  /// You can retrieve the public IP of the Cloud SQL instance from the
  /// Cloud SQL console or using Cloud SQL APIs.
  final pulumi.Input<Map<String, dynamic>>? staticIpConnectivity;
  /// The type of the migration job.
  /// Possible values are: `ONE_TIME`, `CONTINUOUS`.
  final pulumi.Input<String> type;
  /// The details of the VPC network that the source database is located in.
  /// Structure is documented below.
  final pulumi.Input<MigrationJobVpcPeeringConnectivity>? vpcPeeringConnectivity;

  /// Creates a new [MigrationJobArgs].
  /// [destination] The name of the destination connection profile resource in the form of projects/{project}/locations/{location}/connectionProfiles/{destinationConnectionProfile}.
  /// [displayName] The migration job display name.
  /// [dumpFlags] The initial dump flags.
  /// [dumpPath] The path to the dump file in Google Cloud Storage,
  /// [dumpType] The type of the data dump. Supported for MySQL to CloudSQL for MySQL
  /// [labels] The resource labels for migration job to use to annotate any related underlying resources such as Compute Engine VMs.
  /// [location] The location where the migration job should reside.
  /// [migrationJobId] The ID of the migration job.
  /// [performanceConfig] Data dump parallelism settings used by the migration.
  /// [project] The ID of the project in which the resource belongs.
  /// [reverseSshConnectivity] The details of the VPC network that the source database is located in.
  /// [source] The name of the source connection profile resource in the form of projects/{project}/locations/{location}/connectionProfiles/{sourceConnectionProfile}.
  /// [staticIpConnectivity] If set to an empty object (`{}`), the source database will allow incoming
  /// [type] The type of the migration job.
  /// [vpcPeeringConnectivity] The details of the VPC network that the source database is located in.
  MigrationJobArgs({
    required pulumi.Output<String> destination,
    pulumi.Output<String>? displayName,
    pulumi.Output<MigrationJobDumpFlags>? dumpFlags,
    pulumi.Output<String>? dumpPath,
    pulumi.Output<String>? dumpType,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    required pulumi.Output<String> migrationJobId,
    pulumi.Output<MigrationJobPerformanceConfig>? performanceConfig,
    pulumi.Output<String>? project,
    pulumi.Output<MigrationJobReverseSshConnectivity>? reverseSshConnectivity,
    required pulumi.Output<String> source,
    pulumi.Output<Map<String, dynamic>>? staticIpConnectivity,
    required pulumi.Output<String> type,
    pulumi.Output<MigrationJobVpcPeeringConnectivity>? vpcPeeringConnectivity,
  }) :
      destination = pulumi.Input.asInput<String>(destination),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      dumpFlags = pulumi.Input.asOptionalInput<MigrationJobDumpFlags>(dumpFlags),
      dumpPath = pulumi.Input.asOptionalInput<String>(dumpPath),
      dumpType = pulumi.Input.asOptionalInput<String>(dumpType),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      migrationJobId = pulumi.Input.asInput<String>(migrationJobId),
      performanceConfig = pulumi.Input.asOptionalInput<MigrationJobPerformanceConfig>(performanceConfig),
      project = pulumi.Input.asOptionalInput<String>(project),
      reverseSshConnectivity = pulumi.Input.asOptionalInput<MigrationJobReverseSshConnectivity>(reverseSshConnectivity),
      source = pulumi.Input.asInput<String>(source),
      staticIpConnectivity = pulumi.Input.asOptionalInput<Map<String, dynamic>>(staticIpConnectivity),
      type = pulumi.Input.asInput<String>(type),
      vpcPeeringConnectivity = pulumi.Input.asOptionalInput<MigrationJobVpcPeeringConnectivity>(vpcPeeringConnectivity);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': destination,
      'displayName': ?displayName,
      'dumpFlags': ?pulumi.Input.mapOptionalInputValue<MigrationJobDumpFlags, Map<String, dynamic>>(dumpFlags, (value) => value.toMap()),
      'dumpPath': ?dumpPath,
      'dumpType': ?dumpType,
      'labels': ?labels,
      'location': ?location,
      'migrationJobId': migrationJobId,
      'performanceConfig': ?pulumi.Input.mapOptionalInputValue<MigrationJobPerformanceConfig, Map<String, dynamic>>(performanceConfig, (value) => value.toMap()),
      'project': ?project,
      'reverseSshConnectivity': ?pulumi.Input.mapOptionalInputValue<MigrationJobReverseSshConnectivity, Map<String, dynamic>>(reverseSshConnectivity, (value) => value.toMap()),
      'source': source,
      'staticIpConnectivity': ?staticIpConnectivity,
      'type': type,
      'vpcPeeringConnectivity': ?pulumi.Input.mapOptionalInputValue<MigrationJobVpcPeeringConnectivity, Map<String, dynamic>>(vpcPeeringConnectivity, (value) => value.toMap()),
    };
  }

  factory MigrationJobArgs.fromMap(Map<String, dynamic> map) {
    return MigrationJobArgs(
      destination: pulumi.Output.create<String>(map['destination'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      dumpFlags: map['dumpFlags'] == null ? null : pulumi.Output.create<MigrationJobDumpFlags>(MigrationJobDumpFlags.fromMap((map['dumpFlags'] as Map).cast<String, dynamic>())),
      dumpPath: map['dumpPath'] == null ? null : pulumi.Output.create<String>(map['dumpPath'] as String),
      dumpType: map['dumpType'] == null ? null : pulumi.Output.create<String>(map['dumpType'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      migrationJobId: pulumi.Output.create<String>(map['migrationJobId'] as String),
      performanceConfig: map['performanceConfig'] == null ? null : pulumi.Output.create<MigrationJobPerformanceConfig>(MigrationJobPerformanceConfig.fromMap((map['performanceConfig'] as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      reverseSshConnectivity: map['reverseSshConnectivity'] == null ? null : pulumi.Output.create<MigrationJobReverseSshConnectivity>(MigrationJobReverseSshConnectivity.fromMap((map['reverseSshConnectivity'] as Map).cast<String, dynamic>())),
      source: pulumi.Output.create<String>(map['source'] as String),
      staticIpConnectivity: map['staticIpConnectivity'] == null ? null : pulumi.Output.create<Map<String, dynamic>>((map['staticIpConnectivity'] as Map).cast<String, dynamic>()),
      type: pulumi.Output.create<String>(map['type'] as String),
      vpcPeeringConnectivity: map['vpcPeeringConnectivity'] == null ? null : pulumi.Output.create<MigrationJobVpcPeeringConnectivity>(MigrationJobVpcPeeringConnectivity.fromMap((map['vpcPeeringConnectivity'] as Map).cast<String, dynamic>())),
    );
  }
}

