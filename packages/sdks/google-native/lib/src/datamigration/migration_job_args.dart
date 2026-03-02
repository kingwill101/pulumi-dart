// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'conversion_workspace_info.dart';
import 'database_type.dart';
import 'dump_flags.dart';
import 'migration_job_state.dart';
import 'migration_job_type.dart';
import 'performance_config.dart';
import 'reverse_ssh_connectivity.dart';
import 'vpc_peering_connectivity.dart';

/// {@template pulumi_datamigration_v1_migration_job_args_doc}
/// The set of arguments for MigrationJob.
/// {@endtemplate}
/// {@macro pulumi_datamigration_v1_migration_job_args_doc}
class MigrationJobArgs {
  /// The CMEK (customer-managed encryption key) fully qualified key name used for the migration job. This field supports all migration jobs types except for: * Mysql to Mysql (use the cmek field in the cloudsql connection profile instead). * PostrgeSQL to PostgreSQL (use the cmek field in the cloudsql connection profile instead). * PostgreSQL to AlloyDB (use the kms_key_name field in the alloydb connection profile instead). Each Cloud CMEK key has the following format: projects/[PROJECT]/locations/[REGION]/keyRings/[RING]/cryptoKeys/[KEY_NAME]
  final pulumi.Input<String>? cmekKeyName;
  /// The conversion workspace used by the migration.
  final pulumi.Input<ConversionWorkspaceInfo>? conversionWorkspace;
  /// The resource name (URI) of the destination connection profile.
  final pulumi.Input<String> destination;
  /// The database engine type and provider of the destination.
  final pulumi.Input<DatabaseType>? destinationDatabase;
  /// The migration job display name.
  final pulumi.Input<String>? displayName;
  /// The initial dump flags. This field and the "dump_path" field are mutually exclusive.
  final pulumi.Input<DumpFlags>? dumpFlags;
  /// The path to the dump file in Google Cloud Storage, in the format: (gs://[BUCKET_NAME]/[OBJECT_NAME]). This field and the "dump_flags" field are mutually exclusive.
  final pulumi.Input<String>? dumpPath;
  /// This field can be used to select the entities to migrate as part of the migration job. It uses AIP-160 notation to select a subset of the entities configured on the associated conversion-workspace. This field should not be set on migration-jobs that are not associated with a conversion workspace.
  final pulumi.Input<String>? filter;
  /// The resource labels for migration job to use to annotate any related underlying resources such as Compute Engine VMs. An object containing a list of "key": "value" pairs. Example: `{ "name": "wrench", "mass": "1.3kg", "count": "3" }`.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// Required. The ID of the instance to create.
  final pulumi.Input<String> migrationJobId;
  /// The name (URI) of this migration job resource, in the form of: projects/{project}/locations/{location}/migrationJobs/{migrationJob}.
  final pulumi.Input<String>? name;
  /// Optional. Data dump parallelism settings used by the migration. Currently applicable only for MySQL to Cloud SQL for MySQL migrations only.
  final pulumi.Input<PerformanceConfig>? performanceConfig;
  final pulumi.Input<String>? project;
  /// Optional. A unique ID used to identify the request. If the server receives two requests with the same ID, then the second request is ignored. It is recommended to always set this value to a UUID. The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
  final pulumi.Input<String>? requestId;
  /// The details needed to communicate to the source over Reverse SSH tunnel connectivity.
  final pulumi.Input<ReverseSshConnectivity>? reverseSshConnectivity;
  /// The resource name (URI) of the source connection profile.
  final pulumi.Input<String> source;
  /// The database engine type and provider of the source.
  final pulumi.Input<DatabaseType>? sourceDatabase;
  /// The current migration job state.
  final pulumi.Input<MigrationJobState>? state;
  /// static ip connectivity data (default, no additional details needed).
  final pulumi.Input<Map<String, dynamic>>? staticIpConnectivity;
  /// The migration job type.
  final pulumi.Input<MigrationJobType> type;
  /// The details of the VPC network that the source database is located in.
  final pulumi.Input<VpcPeeringConnectivity>? vpcPeeringConnectivity;

  /// Creates a new [MigrationJobArgs].
  /// [cmekKeyName] The CMEK (customer-managed encryption key) fully qualified key name used for the migration job. This field supports all migration jobs types except for: * Mysql to Mysql (use the cmek field in the cloudsql connection profile instead). * PostrgeSQL to PostgreSQL (use the cmek field in the cloudsql connection profile instead). * PostgreSQL to AlloyDB (use the kms_key_name field in the alloydb connection profile instead). Each Cloud CMEK key has the following format: projects/[PROJECT]/locations/[REGION]/keyRings/[RING]/cryptoKeys/[KEY_NAME]
  /// [conversionWorkspace] The conversion workspace used by the migration.
  /// [destination] The resource name (URI) of the destination connection profile.
  /// [destinationDatabase] The database engine type and provider of the destination.
  /// [displayName] The migration job display name.
  /// [dumpFlags] The initial dump flags. This field and the "dump_path" field are mutually exclusive.
  /// [dumpPath] The path to the dump file in Google Cloud Storage, in the format: (gs://[BUCKET_NAME]/[OBJECT_NAME]). This field and the "dump_flags" field are mutually exclusive.
  /// [filter] This field can be used to select the entities to migrate as part of the migration job. It uses AIP-160 notation to select a subset of the entities configured on the associated conversion-workspace. This field should not be set on migration-jobs that are not associated with a conversion workspace.
  /// [labels] The resource labels for migration job to use to annotate any related underlying resources such as Compute Engine VMs. An object containing a list of "key": "value" pairs. Example: `{ "name": "wrench", "mass": "1.3kg", "count": "3" }`.
  /// [location] Optional.
  /// [migrationJobId] Required. The ID of the instance to create.
  /// [name] The name (URI) of this migration job resource, in the form of: projects/{project}/locations/{location}/migrationJobs/{migrationJob}.
  /// [performanceConfig] Optional. Data dump parallelism settings used by the migration. Currently applicable only for MySQL to Cloud SQL for MySQL migrations only.
  /// [project] Optional.
  /// [requestId] Optional. A unique ID used to identify the request. If the server receives two requests with the same ID, then the second request is ignored. It is recommended to always set this value to a UUID. The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
  /// [reverseSshConnectivity] The details needed to communicate to the source over Reverse SSH tunnel connectivity.
  /// [source] The resource name (URI) of the source connection profile.
  /// [sourceDatabase] The database engine type and provider of the source.
  /// [state] The current migration job state.
  /// [staticIpConnectivity] static ip connectivity data (default, no additional details needed).
  /// [type] The migration job type.
  /// [vpcPeeringConnectivity] The details of the VPC network that the source database is located in.
  MigrationJobArgs({
    this.cmekKeyName,
    this.conversionWorkspace,
    required this.destination,
    this.destinationDatabase,
    this.displayName,
    this.dumpFlags,
    this.dumpPath,
    this.filter,
    this.labels,
    this.location,
    required this.migrationJobId,
    this.name,
    this.performanceConfig,
    this.project,
    this.requestId,
    this.reverseSshConnectivity,
    required this.source,
    this.sourceDatabase,
    this.state,
    this.staticIpConnectivity,
    required this.type,
    this.vpcPeeringConnectivity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cmekKeyName': ?cmekKeyName,
      'conversionWorkspace': ?pulumi.Input.mapOptionalInputValue<ConversionWorkspaceInfo, Map<String, dynamic>>(conversionWorkspace, (value) => value.toMap()),
      'destination': destination,
      'destinationDatabase': ?pulumi.Input.mapOptionalInputValue<DatabaseType, Map<String, dynamic>>(destinationDatabase, (value) => value.toMap()),
      'displayName': ?displayName,
      'dumpFlags': ?pulumi.Input.mapOptionalInputValue<DumpFlags, Map<String, dynamic>>(dumpFlags, (value) => value.toMap()),
      'dumpPath': ?dumpPath,
      'filter': ?filter,
      'labels': ?labels,
      'location': ?location,
      'migrationJobId': migrationJobId,
      'name': ?name,
      'performanceConfig': ?pulumi.Input.mapOptionalInputValue<PerformanceConfig, Map<String, dynamic>>(performanceConfig, (value) => value.toMap()),
      'project': ?project,
      'requestId': ?requestId,
      'reverseSshConnectivity': ?pulumi.Input.mapOptionalInputValue<ReverseSshConnectivity, Map<String, dynamic>>(reverseSshConnectivity, (value) => value.toMap()),
      'source': source,
      'sourceDatabase': ?pulumi.Input.mapOptionalInputValue<DatabaseType, Map<String, dynamic>>(sourceDatabase, (value) => value.toMap()),
      'state': ?pulumi.Input.mapOptionalInputValue<MigrationJobState, String>(state, (value) => value.value),
      'staticIpConnectivity': ?staticIpConnectivity,
      'type': pulumi.Input.mapInputValue<MigrationJobType, String>(type, (value) => value.value),
      'vpcPeeringConnectivity': ?pulumi.Input.mapOptionalInputValue<VpcPeeringConnectivity, Map<String, dynamic>>(vpcPeeringConnectivity, (value) => value.toMap()),
    };
  }

  factory MigrationJobArgs.fromMap(Map<String, dynamic> map) {
    return MigrationJobArgs(
      cmekKeyName: map['cmekKeyName'] == null ? null : (map['cmekKeyName'] as String).input(),
      conversionWorkspace: map['conversionWorkspace'] == null ? null : (ConversionWorkspaceInfo.fromMap((map['conversionWorkspace'] as Map).cast<String, dynamic>())).input(),
      destination: (map['destination'] as String).input(),
      destinationDatabase: map['destinationDatabase'] == null ? null : (DatabaseType.fromMap((map['destinationDatabase'] as Map).cast<String, dynamic>())).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      dumpFlags: map['dumpFlags'] == null ? null : (DumpFlags.fromMap((map['dumpFlags'] as Map).cast<String, dynamic>())).input(),
      dumpPath: map['dumpPath'] == null ? null : (map['dumpPath'] as String).input(),
      filter: map['filter'] == null ? null : (map['filter'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      migrationJobId: (map['migrationJobId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      performanceConfig: map['performanceConfig'] == null ? null : (PerformanceConfig.fromMap((map['performanceConfig'] as Map).cast<String, dynamic>())).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      requestId: map['requestId'] == null ? null : (map['requestId'] as String).input(),
      reverseSshConnectivity: map['reverseSshConnectivity'] == null ? null : (ReverseSshConnectivity.fromMap((map['reverseSshConnectivity'] as Map).cast<String, dynamic>())).input(),
      source: (map['source'] as String).input(),
      sourceDatabase: map['sourceDatabase'] == null ? null : (DatabaseType.fromMap((map['sourceDatabase'] as Map).cast<String, dynamic>())).input(),
      state: map['state'] == null ? null : (MigrationJobState.fromValue(map['state'] as String)).input(),
      staticIpConnectivity: map['staticIpConnectivity'] == null ? null : ((map['staticIpConnectivity'] as Map).cast<String, dynamic>()).input(),
      type: (MigrationJobType.fromValue(map['type'] as String)).input(),
      vpcPeeringConnectivity: map['vpcPeeringConnectivity'] == null ? null : (VpcPeeringConnectivity.fromMap((map['vpcPeeringConnectivity'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

