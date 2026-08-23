// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'migration_job_dump_flags.dart';
import 'migration_job_objects_config.dart';
import 'migration_job_performance_config.dart';
import 'migration_job_postgres_homogeneous_config.dart';
import 'migration_job_reverse_ssh_connectivity.dart';
import 'migration_job_vpc_peering_connectivity.dart';

/// {@template pulumi_databasemigrationservice_migration_job_migration_job_args_doc}
/// The set of arguments for MigrationJob.
/// {@endtemplate}
/// {@macro pulumi_databasemigrationservice_migration_job_migration_job_args_doc}
class MigrationJobArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// The desired state of the migration job. If set to `RUNNING`, the migration job will be started.
  /// Possible values are: `NOT_STARTED`, `RUNNING`.
  final pulumi.Input<String>? desiredState;
  /// The name of the destination connection profile resource in the form of projects/{project}/locations/{location}/connectionProfiles/{destinationConnectionProfile}.
  final pulumi.Input<String> destination;
  /// The migration job display name.
  final pulumi.Input<String>? displayName;
  /// The initial dump flags.
  /// Structure is documented below.
  final pulumi.Input<MigrationJobDumpFlags>? dumpFlags;
  /// The path to the dump file in Google Cloud Storage,
  /// in the format: (gs://[BUCKET_NAME]/[OBJECT_NAME]).
  /// This field and the "dumpFlags" field are mutually exclusive.
  final pulumi.Input<String>? dumpPath;
  /// The type of the data dump. Supported for MySQL to CloudSQL for MySQL
  /// migrations only.
  /// Possible values are: `LOGICAL`, `PHYSICAL`.
  final pulumi.Input<String>? dumpType;
  /// The resource labels for migration job to use to annotate any related underlying resources such as Compute Engine VMs.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location where the migration job should reside.
  final pulumi.Input<String>? location;
  /// The ID of the migration job.
  final pulumi.Input<String> migrationJobId;
  /// The objects that need to be migrated. If unset, the default is to migrate
  /// all objects available on the source.
  /// Structure is documented below.
  final pulumi.Input<MigrationJobObjectsConfig>? objectsConfig;
  /// Data dump parallelism settings used by the migration.
  /// Structure is documented below.
  final pulumi.Input<MigrationJobPerformanceConfig>? performanceConfig;
  /// PostgreSQL to PostgreSQL configuration.
  /// Structure is documented below.
  final pulumi.Input<MigrationJobPostgresHomogeneousConfig>? postgresHomogeneousConfig;
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
  /// If set to true, will stop the pulumi up if there are validation warnings.
  final pulumi.Input<bool>? stopOnWarnings;
  /// The type of the migration job.
  /// Possible values are: `ONE_TIME`, `CONTINUOUS`.
  final pulumi.Input<String> type;
  /// The details of the VPC network that the source database is located in.
  /// Structure is documented below.
  final pulumi.Input<MigrationJobVpcPeeringConnectivity>? vpcPeeringConnectivity;

  /// Creates a new [MigrationJobArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [desiredState] The desired state of the migration job. If set to `RUNNING`, the migration job will be started.
  /// [destination] The name of the destination connection profile resource in the form of projects/{project}/locations/{location}/connectionProfiles/{destinationConnectionProfile}.
  /// [displayName] The migration job display name.
  /// [dumpFlags] The initial dump flags.
  /// [dumpPath] The path to the dump file in Google Cloud Storage,
  /// [dumpType] The type of the data dump. Supported for MySQL to CloudSQL for MySQL
  /// [labels] The resource labels for migration job to use to annotate any related underlying resources such as Compute Engine VMs.
  /// [location] The location where the migration job should reside.
  /// [migrationJobId] The ID of the migration job.
  /// [objectsConfig] The objects that need to be migrated. If unset, the default is to migrate
  /// [performanceConfig] Data dump parallelism settings used by the migration.
  /// [postgresHomogeneousConfig] PostgreSQL to PostgreSQL configuration.
  /// [project] The ID of the project in which the resource belongs.
  /// [reverseSshConnectivity] The details of the VPC network that the source database is located in.
  /// [source] The name of the source connection profile resource in the form of projects/{project}/locations/{location}/connectionProfiles/{sourceConnectionProfile}.
  /// [staticIpConnectivity] If set to an empty object (`{}`), the source database will allow incoming
  /// [stopOnWarnings] If set to true, will stop the pulumi up if there are validation warnings.
  /// [type] The type of the migration job.
  /// [vpcPeeringConnectivity] The details of the VPC network that the source database is located in.
  const MigrationJobArgs({
    this.deletionPolicy,
    this.desiredState,
    required this.destination,
    this.displayName,
    this.dumpFlags,
    this.dumpPath,
    this.dumpType,
    this.labels,
    this.location,
    required this.migrationJobId,
    this.objectsConfig,
    this.performanceConfig,
    this.postgresHomogeneousConfig,
    this.project,
    this.reverseSshConnectivity,
    required this.source,
    this.staticIpConnectivity,
    this.stopOnWarnings,
    required this.type,
    this.vpcPeeringConnectivity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'desiredState': ?desiredState,
      'destination': destination,
      'displayName': ?displayName,
      'dumpFlags': ?pulumi.Input.mapOptionalInputValue<MigrationJobDumpFlags, Map<String, dynamic>>(dumpFlags, (value) => value.toMap()),
      'dumpPath': ?dumpPath,
      'dumpType': ?dumpType,
      'labels': ?labels,
      'location': ?location,
      'migrationJobId': migrationJobId,
      'objectsConfig': ?pulumi.Input.mapOptionalInputValue<MigrationJobObjectsConfig, Map<String, dynamic>>(objectsConfig, (value) => value.toMap()),
      'performanceConfig': ?pulumi.Input.mapOptionalInputValue<MigrationJobPerformanceConfig, Map<String, dynamic>>(performanceConfig, (value) => value.toMap()),
      'postgresHomogeneousConfig': ?pulumi.Input.mapOptionalInputValue<MigrationJobPostgresHomogeneousConfig, Map<String, dynamic>>(postgresHomogeneousConfig, (value) => value.toMap()),
      'project': ?project,
      'reverseSshConnectivity': ?pulumi.Input.mapOptionalInputValue<MigrationJobReverseSshConnectivity, Map<String, dynamic>>(reverseSshConnectivity, (value) => value.toMap()),
      'source': source,
      'staticIpConnectivity': ?staticIpConnectivity,
      'stopOnWarnings': ?stopOnWarnings,
      'type': type,
      'vpcPeeringConnectivity': ?pulumi.Input.mapOptionalInputValue<MigrationJobVpcPeeringConnectivity, Map<String, dynamic>>(vpcPeeringConnectivity, (value) => value.toMap()),
    };
  }

  factory MigrationJobArgs.fromMap(Map<String, dynamic> map) {
    return MigrationJobArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      desiredState: (() { final guardedValue = map['desiredState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destination: pulumi.Input.fromValue(map['destination'] as String),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dumpFlags: (() { final guardedValue = map['dumpFlags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MigrationJobDumpFlags.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dumpPath: (() { final guardedValue = map['dumpPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dumpType: (() { final guardedValue = map['dumpType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      migrationJobId: pulumi.Input.fromValue(map['migrationJobId'] as String),
      objectsConfig: (() { final guardedValue = map['objectsConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MigrationJobObjectsConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      performanceConfig: (() { final guardedValue = map['performanceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MigrationJobPerformanceConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      postgresHomogeneousConfig: (() { final guardedValue = map['postgresHomogeneousConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MigrationJobPostgresHomogeneousConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reverseSshConnectivity: (() { final guardedValue = map['reverseSshConnectivity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MigrationJobReverseSshConnectivity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      source: pulumi.Input.fromValue(map['source'] as String),
      staticIpConnectivity: (() { final guardedValue = map['staticIpConnectivity']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      stopOnWarnings: (() { final guardedValue = map['stopOnWarnings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      vpcPeeringConnectivity: (() { final guardedValue = map['vpcPeeringConnectivity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MigrationJobVpcPeeringConnectivity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
