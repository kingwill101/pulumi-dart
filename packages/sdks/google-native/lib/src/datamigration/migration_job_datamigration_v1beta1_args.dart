// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_type_datamigration_v1beta1.dart';
import 'migration_job_state_datamigration_v1beta1.dart';
import 'migration_job_type_datamigration_v1beta1.dart';
import 'reverse_ssh_connectivity_datamigration_v1beta1.dart';
import 'vpc_peering_connectivity_datamigration_v1beta1.dart';

/// {@template pulumi_datamigration_v1beta1_migration_job_datamigration_v1beta1_args_doc}
/// The set of arguments for MigrationJob.
/// {@endtemplate}
/// {@macro pulumi_datamigration_v1beta1_migration_job_datamigration_v1beta1_args_doc}
class MigrationJobDatamigrationV1beta1Args {
  /// The resource name (URI) of the destination connection profile.
  final pulumi.Input<String> destination;
  /// The database engine type and provider of the destination.
  final pulumi.Input<DatabaseTypeDatamigrationV1beta1>? destinationDatabase;
  /// The migration job display name.
  final pulumi.Input<String>? displayName;
  /// The path to the dump file in Google Cloud Storage, in the format: (gs://[BUCKET_NAME]/[OBJECT_NAME]).
  final pulumi.Input<String>? dumpPath;
  /// The resource labels for migration job to use to annotate any related underlying resources such as Compute Engine VMs. An object containing a list of "key": "value" pairs. Example: `{ "name": "wrench", "mass": "1.3kg", "count": "3" }`.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// Required. The ID of the instance to create.
  final pulumi.Input<String> migrationJobId;
  /// The name (URI) of this migration job resource, in the form of: projects/{project}/locations/{location}/migrationJobs/{migrationJob}.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// A unique id used to identify the request. If the server receives two requests with the same id, then the second request will be ignored. It is recommended to always set this value to a UUID. The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
  final pulumi.Input<String>? requestId;
  /// The details needed to communicate to the source over Reverse SSH tunnel connectivity.
  final pulumi.Input<ReverseSshConnectivityDatamigrationV1beta1>? reverseSshConnectivity;
  /// The resource name (URI) of the source connection profile.
  final pulumi.Input<String> source;
  /// The database engine type and provider of the source.
  final pulumi.Input<DatabaseTypeDatamigrationV1beta1>? sourceDatabase;
  /// The current migration job state.
  final pulumi.Input<MigrationJobStateDatamigrationV1beta1>? state;
  /// static ip connectivity data (default, no additional details needed).
  final pulumi.Input<Map<String, dynamic>>? staticIpConnectivity;
  /// The migration job type.
  final pulumi.Input<MigrationJobTypeDatamigrationV1beta1> type;
  /// The details of the VPC network that the source database is located in.
  final pulumi.Input<VpcPeeringConnectivityDatamigrationV1beta1>? vpcPeeringConnectivity;

  /// Creates a new [MigrationJobDatamigrationV1beta1Args].
  /// [destination] The resource name (URI) of the destination connection profile.
  /// [destinationDatabase] The database engine type and provider of the destination.
  /// [displayName] The migration job display name.
  /// [dumpPath] The path to the dump file in Google Cloud Storage, in the format: (gs://[BUCKET_NAME]/[OBJECT_NAME]).
  /// [labels] The resource labels for migration job to use to annotate any related underlying resources such as Compute Engine VMs. An object containing a list of "key": "value" pairs. Example: `{ "name": "wrench", "mass": "1.3kg", "count": "3" }`.
  /// [location] Optional.
  /// [migrationJobId] Required. The ID of the instance to create.
  /// [name] The name (URI) of this migration job resource, in the form of: projects/{project}/locations/{location}/migrationJobs/{migrationJob}.
  /// [project] Optional.
  /// [requestId] A unique id used to identify the request. If the server receives two requests with the same id, then the second request will be ignored. It is recommended to always set this value to a UUID. The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
  /// [reverseSshConnectivity] The details needed to communicate to the source over Reverse SSH tunnel connectivity.
  /// [source] The resource name (URI) of the source connection profile.
  /// [sourceDatabase] The database engine type and provider of the source.
  /// [state] The current migration job state.
  /// [staticIpConnectivity] static ip connectivity data (default, no additional details needed).
  /// [type] The migration job type.
  /// [vpcPeeringConnectivity] The details of the VPC network that the source database is located in.
  const MigrationJobDatamigrationV1beta1Args({
    required this.destination,
    this.destinationDatabase,
    this.displayName,
    this.dumpPath,
    this.labels,
    this.location,
    required this.migrationJobId,
    this.name,
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
      'destination': destination,
      'destinationDatabase': ?pulumi.Input.mapOptionalInputValue<DatabaseTypeDatamigrationV1beta1, Map<String, dynamic>>(destinationDatabase, (value) => value.toMap()),
      'displayName': ?displayName,
      'dumpPath': ?dumpPath,
      'labels': ?labels,
      'location': ?location,
      'migrationJobId': migrationJobId,
      'name': ?name,
      'project': ?project,
      'requestId': ?requestId,
      'reverseSshConnectivity': ?pulumi.Input.mapOptionalInputValue<ReverseSshConnectivityDatamigrationV1beta1, Map<String, dynamic>>(reverseSshConnectivity, (value) => value.toMap()),
      'source': source,
      'sourceDatabase': ?pulumi.Input.mapOptionalInputValue<DatabaseTypeDatamigrationV1beta1, Map<String, dynamic>>(sourceDatabase, (value) => value.toMap()),
      'state': ?pulumi.Input.mapOptionalInputValue<MigrationJobStateDatamigrationV1beta1, String>(state, (value) => value.wireValue),
      'staticIpConnectivity': ?staticIpConnectivity,
      'type': pulumi.Input.mapInputValue<MigrationJobTypeDatamigrationV1beta1, String>(type, (value) => value.wireValue),
      'vpcPeeringConnectivity': ?pulumi.Input.mapOptionalInputValue<VpcPeeringConnectivityDatamigrationV1beta1, Map<String, dynamic>>(vpcPeeringConnectivity, (value) => value.toMap()),
    };
  }

  factory MigrationJobDatamigrationV1beta1Args.fromMap(Map<String, dynamic> map) {
    return MigrationJobDatamigrationV1beta1Args(
      destination: pulumi.Input.fromValue(map['destination'] as String),
      destinationDatabase: (() { final guardedValue = map['destinationDatabase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatabaseTypeDatamigrationV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dumpPath: (() { final guardedValue = map['dumpPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      migrationJobId: pulumi.Input.fromValue(map['migrationJobId'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestId: (() { final guardedValue = map['requestId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reverseSshConnectivity: (() { final guardedValue = map['reverseSshConnectivity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReverseSshConnectivityDatamigrationV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      source: pulumi.Input.fromValue(map['source'] as String),
      sourceDatabase: (() { final guardedValue = map['sourceDatabase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatabaseTypeDatamigrationV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MigrationJobStateDatamigrationV1beta1.fromValue(guardedValue as String)); })(),
      staticIpConnectivity: (() { final guardedValue = map['staticIpConnectivity']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      type: pulumi.Input.fromValue(MigrationJobTypeDatamigrationV1beta1.fromValue(map['type']! as String)),
      vpcPeeringConnectivity: (() { final guardedValue = map['vpcPeeringConnectivity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VpcPeeringConnectivityDatamigrationV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
