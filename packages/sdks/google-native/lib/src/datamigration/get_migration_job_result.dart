// ignore_for_file: unused_element, unnecessary_cast

import 'conversion_workspace_info_response.dart';
import 'database_type_response.dart';
import 'dump_flags_response.dart';
import 'performance_config_response.dart';
import 'reverse_ssh_connectivity_response.dart';
import 'status_response.dart';
import 'vpc_peering_connectivity_response.dart';

/// Result data returned by getMigrationJob.
class GetMigrationJobResult {
  /// The CMEK (customer-managed encryption key) fully qualified key name used for the migration job. This field supports all migration jobs types except for: * Mysql to Mysql (use the cmek field in the cloudsql connection profile instead). * PostrgeSQL to PostgreSQL (use the cmek field in the cloudsql connection profile instead). * PostgreSQL to AlloyDB (use the kms_key_name field in the alloydb connection profile instead). Each Cloud CMEK key has the following format: projects/[PROJECT]/locations/[REGION]/keyRings/[RING]/cryptoKeys/[KEY_NAME]
  final String cmekKeyName;
  /// The conversion workspace used by the migration.
  final ConversionWorkspaceInfoResponse conversionWorkspace;
  /// The timestamp when the migration job resource was created. A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds. Example: "2014-10-02T15:01:23.045123456Z".
  final String createTime;
  /// The resource name (URI) of the destination connection profile.
  final String destination;
  /// The database engine type and provider of the destination.
  final DatabaseTypeResponse destinationDatabase;
  /// The migration job display name.
  final String displayName;
  /// The initial dump flags. This field and the "dump_path" field are mutually exclusive.
  final DumpFlagsResponse dumpFlags;
  /// The path to the dump file in Google Cloud Storage, in the format: (gs://[BUCKET_NAME]/[OBJECT_NAME]). This field and the "dump_flags" field are mutually exclusive.
  final String dumpPath;
  /// The duration of the migration job (in seconds). A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s".
  final String duration;
  /// If the migration job is completed, the time when it was completed.
  final String endTime;
  /// The error details in case of state FAILED.
  final StatusResponse error;
  /// This field can be used to select the entities to migrate as part of the migration job. It uses AIP-160 notation to select a subset of the entities configured on the associated conversion-workspace. This field should not be set on migration-jobs that are not associated with a conversion workspace.
  final String filter;
  /// The resource labels for migration job to use to annotate any related underlying resources such as Compute Engine VMs. An object containing a list of "key": "value" pairs. Example: `{ "name": "wrench", "mass": "1.3kg", "count": "3" }`.
  final Map<String, String> labels;
  /// The name (URI) of this migration job resource, in the form of: projects/{project}/locations/{location}/migrationJobs/{migrationJob}.
  final String name;
  /// Optional. Data dump parallelism settings used by the migration. Currently applicable only for MySQL to Cloud SQL for MySQL migrations only.
  final PerformanceConfigResponse performanceConfig;
  /// The current migration job phase.
  final String phase;
  /// The details needed to communicate to the source over Reverse SSH tunnel connectivity.
  final ReverseSshConnectivityResponse reverseSshConnectivity;
  /// The resource name (URI) of the source connection profile.
  final String source;
  /// The database engine type and provider of the source.
  final DatabaseTypeResponse sourceDatabase;
  /// The current migration job state.
  final String state;
  /// static ip connectivity data (default, no additional details needed).
  final Map<String, dynamic> staticIpConnectivity;
  /// The migration job type.
  final String type;
  /// The timestamp when the migration job resource was last updated. A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds. Example: "2014-10-02T15:01:23.045123456Z".
  final String updateTime;
  /// The details of the VPC network that the source database is located in.
  final VpcPeeringConnectivityResponse vpcPeeringConnectivity;

  /// Creates a new [GetMigrationJobResult].
  /// [cmekKeyName] The CMEK (customer-managed encryption key) fully qualified key name used for the migration job. This field supports all migration jobs types except for: * Mysql to Mysql (use the cmek field in the cloudsql connection profile instead). * PostrgeSQL to PostgreSQL (use the cmek field in the cloudsql connection profile instead). * PostgreSQL to AlloyDB (use the kms_key_name field in the alloydb connection profile instead). Each Cloud CMEK key has the following format: projects/[PROJECT]/locations/[REGION]/keyRings/[RING]/cryptoKeys/[KEY_NAME]
  /// [conversionWorkspace] The conversion workspace used by the migration.
  /// [createTime] The timestamp when the migration job resource was created. A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds. Example: "2014-10-02T15:01:23.045123456Z".
  /// [destination] The resource name (URI) of the destination connection profile.
  /// [destinationDatabase] The database engine type and provider of the destination.
  /// [displayName] The migration job display name.
  /// [dumpFlags] The initial dump flags. This field and the "dump_path" field are mutually exclusive.
  /// [dumpPath] The path to the dump file in Google Cloud Storage, in the format: (gs://[BUCKET_NAME]/[OBJECT_NAME]). This field and the "dump_flags" field are mutually exclusive.
  /// [duration] The duration of the migration job (in seconds). A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s".
  /// [endTime] If the migration job is completed, the time when it was completed.
  /// [error] The error details in case of state FAILED.
  /// [filter] This field can be used to select the entities to migrate as part of the migration job. It uses AIP-160 notation to select a subset of the entities configured on the associated conversion-workspace. This field should not be set on migration-jobs that are not associated with a conversion workspace.
  /// [labels] The resource labels for migration job to use to annotate any related underlying resources such as Compute Engine VMs. An object containing a list of "key": "value" pairs. Example: `{ "name": "wrench", "mass": "1.3kg", "count": "3" }`.
  /// [name] The name (URI) of this migration job resource, in the form of: projects/{project}/locations/{location}/migrationJobs/{migrationJob}.
  /// [performanceConfig] Optional. Data dump parallelism settings used by the migration. Currently applicable only for MySQL to Cloud SQL for MySQL migrations only.
  /// [phase] The current migration job phase.
  /// [reverseSshConnectivity] The details needed to communicate to the source over Reverse SSH tunnel connectivity.
  /// [source] The resource name (URI) of the source connection profile.
  /// [sourceDatabase] The database engine type and provider of the source.
  /// [state] The current migration job state.
  /// [staticIpConnectivity] static ip connectivity data (default, no additional details needed).
  /// [type] The migration job type.
  /// [updateTime] The timestamp when the migration job resource was last updated. A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds. Example: "2014-10-02T15:01:23.045123456Z".
  /// [vpcPeeringConnectivity] The details of the VPC network that the source database is located in.
  GetMigrationJobResult({
    required this.cmekKeyName,
    required this.conversionWorkspace,
    required this.createTime,
    required this.destination,
    required this.destinationDatabase,
    required this.displayName,
    required this.dumpFlags,
    required this.dumpPath,
    required this.duration,
    required this.endTime,
    required this.error,
    required this.filter,
    required this.labels,
    required this.name,
    required this.performanceConfig,
    required this.phase,
    required this.reverseSshConnectivity,
    required this.source,
    required this.sourceDatabase,
    required this.state,
    required this.staticIpConnectivity,
    required this.type,
    required this.updateTime,
    required this.vpcPeeringConnectivity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cmekKeyName': cmekKeyName,
      'conversionWorkspace': conversionWorkspace.toMap(),
      'createTime': createTime,
      'destination': destination,
      'destinationDatabase': destinationDatabase.toMap(),
      'displayName': displayName,
      'dumpFlags': dumpFlags.toMap(),
      'dumpPath': dumpPath,
      'duration': duration,
      'endTime': endTime,
      'error': error.toMap(),
      'filter': filter,
      'labels': labels,
      'name': name,
      'performanceConfig': performanceConfig.toMap(),
      'phase': phase,
      'reverseSshConnectivity': reverseSshConnectivity.toMap(),
      'source': source,
      'sourceDatabase': sourceDatabase.toMap(),
      'state': state,
      'staticIpConnectivity': staticIpConnectivity,
      'type': type,
      'updateTime': updateTime,
      'vpcPeeringConnectivity': vpcPeeringConnectivity.toMap(),
    };
  }

  factory GetMigrationJobResult.fromMap(Map<String, dynamic> map) {
    return GetMigrationJobResult(
      cmekKeyName: map['cmekKeyName'] as String,
      conversionWorkspace: ConversionWorkspaceInfoResponse.fromMap((map['conversionWorkspace'] as Map).cast<String, dynamic>()),
      createTime: map['createTime'] as String,
      destination: map['destination'] as String,
      destinationDatabase: DatabaseTypeResponse.fromMap((map['destinationDatabase'] as Map).cast<String, dynamic>()),
      displayName: map['displayName'] as String,
      dumpFlags: DumpFlagsResponse.fromMap((map['dumpFlags'] as Map).cast<String, dynamic>()),
      dumpPath: map['dumpPath'] as String,
      duration: map['duration'] as String,
      endTime: map['endTime'] as String,
      error: StatusResponse.fromMap((map['error'] as Map).cast<String, dynamic>()),
      filter: map['filter'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      performanceConfig: PerformanceConfigResponse.fromMap((map['performanceConfig'] as Map).cast<String, dynamic>()),
      phase: map['phase'] as String,
      reverseSshConnectivity: ReverseSshConnectivityResponse.fromMap((map['reverseSshConnectivity'] as Map).cast<String, dynamic>()),
      source: map['source'] as String,
      sourceDatabase: DatabaseTypeResponse.fromMap((map['sourceDatabase'] as Map).cast<String, dynamic>()),
      state: map['state'] as String,
      staticIpConnectivity: (map['staticIpConnectivity'] as Map).cast<String, dynamic>(),
      type: map['type'] as String,
      updateTime: map['updateTime'] as String,
      vpcPeeringConnectivity: VpcPeeringConnectivityResponse.fromMap((map['vpcPeeringConnectivity'] as Map).cast<String, dynamic>()),
    );
  }
}

