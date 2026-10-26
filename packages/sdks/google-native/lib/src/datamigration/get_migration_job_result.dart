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
  final String? cmekKeyName;
  /// The conversion workspace used by the migration.
  final ConversionWorkspaceInfoResponse? conversionWorkspace;
  /// The timestamp when the migration job resource was created. A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds. Example: "2014-10-02T15:01:23.045123456Z".
  final String? createTime;
  /// The resource name (URI) of the destination connection profile.
  final String? destination;
  /// The database engine type and provider of the destination.
  final DatabaseTypeResponse? destinationDatabase;
  /// The migration job display name.
  final String? displayName;
  /// The initial dump flags. This field and the "dump_path" field are mutually exclusive.
  final DumpFlagsResponse? dumpFlags;
  /// The path to the dump file in Google Cloud Storage, in the format: (gs://[BUCKET_NAME]/[OBJECT_NAME]). This field and the "dump_flags" field are mutually exclusive.
  final String? dumpPath;
  /// The duration of the migration job (in seconds). A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s".
  final String? duration;
  /// If the migration job is completed, the time when it was completed.
  final String? endTime;
  /// The error details in case of state FAILED.
  final StatusResponse? error;
  /// This field can be used to select the entities to migrate as part of the migration job. It uses AIP-160 notation to select a subset of the entities configured on the associated conversion-workspace. This field should not be set on migration-jobs that are not associated with a conversion workspace.
  final String? filter;
  /// The resource labels for migration job to use to annotate any related underlying resources such as Compute Engine VMs. An object containing a list of "key": "value" pairs. Example: `{ "name": "wrench", "mass": "1.3kg", "count": "3" }`.
  final Map<String, String>? labels;
  /// The name (URI) of this migration job resource, in the form of: projects/{project}/locations/{location}/migrationJobs/{migrationJob}.
  final String? name;
  /// Optional. Data dump parallelism settings used by the migration. Currently applicable only for MySQL to Cloud SQL for MySQL migrations only.
  final PerformanceConfigResponse? performanceConfig;
  /// The current migration job phase.
  final String? phase;
  /// The details needed to communicate to the source over Reverse SSH tunnel connectivity.
  final ReverseSshConnectivityResponse? reverseSshConnectivity;
  /// The resource name (URI) of the source connection profile.
  final String? source;
  /// The database engine type and provider of the source.
  final DatabaseTypeResponse? sourceDatabase;
  /// The current migration job state.
  final String? state;
  /// static ip connectivity data (default, no additional details needed).
  final Map<String, dynamic>? staticIpConnectivity;
  /// The migration job type.
  final String? type;
  /// The timestamp when the migration job resource was last updated. A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds. Example: "2014-10-02T15:01:23.045123456Z".
  final String? updateTime;
  /// The details of the VPC network that the source database is located in.
  final VpcPeeringConnectivityResponse? vpcPeeringConnectivity;

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
  const GetMigrationJobResult({
    this.cmekKeyName,
    this.conversionWorkspace,
    this.createTime,
    this.destination,
    this.destinationDatabase,
    this.displayName,
    this.dumpFlags,
    this.dumpPath,
    this.duration,
    this.endTime,
    this.error,
    this.filter,
    this.labels,
    this.name,
    this.performanceConfig,
    this.phase,
    this.reverseSshConnectivity,
    this.source,
    this.sourceDatabase,
    this.state,
    this.staticIpConnectivity,
    this.type,
    this.updateTime,
    this.vpcPeeringConnectivity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cmekKeyName': ?cmekKeyName,
      'conversionWorkspace': ?conversionWorkspace?.toMap(),
      'createTime': ?createTime,
      'destination': ?destination,
      'destinationDatabase': ?destinationDatabase?.toMap(),
      'displayName': ?displayName,
      'dumpFlags': ?dumpFlags?.toMap(),
      'dumpPath': ?dumpPath,
      'duration': ?duration,
      'endTime': ?endTime,
      'error': ?error?.toMap(),
      'filter': ?filter,
      'labels': ?labels,
      'name': ?name,
      'performanceConfig': ?performanceConfig?.toMap(),
      'phase': ?phase,
      'reverseSshConnectivity': ?reverseSshConnectivity?.toMap(),
      'source': ?source,
      'sourceDatabase': ?sourceDatabase?.toMap(),
      'state': ?state,
      'staticIpConnectivity': ?staticIpConnectivity,
      'type': ?type,
      'updateTime': ?updateTime,
      'vpcPeeringConnectivity': ?vpcPeeringConnectivity?.toMap(),
    };
  }

  factory GetMigrationJobResult.fromMap(Map<String, dynamic> map) {
    return GetMigrationJobResult(
      cmekKeyName: (() { final guardedValue = map['cmekKeyName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      conversionWorkspace: (() { final guardedValue = map['conversionWorkspace']; if (guardedValue == null) return null; return ConversionWorkspaceInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      destination: (() { final guardedValue = map['destination']; if (guardedValue == null) return null; return guardedValue as String; })(),
      destinationDatabase: (() { final guardedValue = map['destinationDatabase']; if (guardedValue == null) return null; return DatabaseTypeResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dumpFlags: (() { final guardedValue = map['dumpFlags']; if (guardedValue == null) return null; return DumpFlagsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      dumpPath: (() { final guardedValue = map['dumpPath']; if (guardedValue == null) return null; return guardedValue as String; })(),
      duration: (() { final guardedValue = map['duration']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      error: (() { final guardedValue = map['error']; if (guardedValue == null) return null; return StatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      performanceConfig: (() { final guardedValue = map['performanceConfig']; if (guardedValue == null) return null; return PerformanceConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      phase: (() { final guardedValue = map['phase']; if (guardedValue == null) return null; return guardedValue as String; })(),
      reverseSshConnectivity: (() { final guardedValue = map['reverseSshConnectivity']; if (guardedValue == null) return null; return ReverseSshConnectivityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceDatabase: (() { final guardedValue = map['sourceDatabase']; if (guardedValue == null) return null; return DatabaseTypeResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      staticIpConnectivity: (() { final guardedValue = map['staticIpConnectivity']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, dynamic>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vpcPeeringConnectivity: (() { final guardedValue = map['vpcPeeringConnectivity']; if (guardedValue == null) return null; return VpcPeeringConnectivityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
