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
  MigrationJobDatamigrationV1beta1Args({
    required pulumi.Output<String> destination,
    pulumi.Output<DatabaseTypeDatamigrationV1beta1>? destinationDatabase,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? dumpPath,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    required pulumi.Output<String> migrationJobId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? requestId,
    pulumi.Output<ReverseSshConnectivityDatamigrationV1beta1>? reverseSshConnectivity,
    required pulumi.Output<String> source,
    pulumi.Output<DatabaseTypeDatamigrationV1beta1>? sourceDatabase,
    pulumi.Output<MigrationJobStateDatamigrationV1beta1>? state,
    pulumi.Output<Map<String, dynamic>>? staticIpConnectivity,
    required pulumi.Output<MigrationJobTypeDatamigrationV1beta1> type,
    pulumi.Output<VpcPeeringConnectivityDatamigrationV1beta1>? vpcPeeringConnectivity,
  }) :
      destination = pulumi.Input.asInput<String>(destination),
      destinationDatabase = pulumi.Input.asOptionalInput<DatabaseTypeDatamigrationV1beta1>(destinationDatabase),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      dumpPath = pulumi.Input.asOptionalInput<String>(dumpPath),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      migrationJobId = pulumi.Input.asInput<String>(migrationJobId),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      requestId = pulumi.Input.asOptionalInput<String>(requestId),
      reverseSshConnectivity = pulumi.Input.asOptionalInput<ReverseSshConnectivityDatamigrationV1beta1>(reverseSshConnectivity),
      source = pulumi.Input.asInput<String>(source),
      sourceDatabase = pulumi.Input.asOptionalInput<DatabaseTypeDatamigrationV1beta1>(sourceDatabase),
      state = pulumi.Input.asOptionalInput<MigrationJobStateDatamigrationV1beta1>(state),
      staticIpConnectivity = pulumi.Input.asOptionalInput<Map<String, dynamic>>(staticIpConnectivity),
      type = pulumi.Input.asInput<MigrationJobTypeDatamigrationV1beta1>(type),
      vpcPeeringConnectivity = pulumi.Input.asOptionalInput<VpcPeeringConnectivityDatamigrationV1beta1>(vpcPeeringConnectivity);

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
      'state': ?pulumi.Input.mapOptionalInputValue<MigrationJobStateDatamigrationV1beta1, String>(state, (value) => value.value),
      'staticIpConnectivity': ?staticIpConnectivity,
      'type': pulumi.Input.mapInputValue<MigrationJobTypeDatamigrationV1beta1, String>(type, (value) => value.value),
      'vpcPeeringConnectivity': ?pulumi.Input.mapOptionalInputValue<VpcPeeringConnectivityDatamigrationV1beta1, Map<String, dynamic>>(vpcPeeringConnectivity, (value) => value.toMap()),
    };
  }

  factory MigrationJobDatamigrationV1beta1Args.fromMap(Map<String, dynamic> map) {
    return MigrationJobDatamigrationV1beta1Args(
      destination: pulumi.Output.create<String>(map['destination'] as String),
      destinationDatabase: map['destinationDatabase'] == null ? null : pulumi.Output.create<DatabaseTypeDatamigrationV1beta1>(DatabaseTypeDatamigrationV1beta1.fromMap((map['destinationDatabase'] as Map).cast<String, dynamic>())),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      dumpPath: map['dumpPath'] == null ? null : pulumi.Output.create<String>(map['dumpPath'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      migrationJobId: pulumi.Output.create<String>(map['migrationJobId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      requestId: map['requestId'] == null ? null : pulumi.Output.create<String>(map['requestId'] as String),
      reverseSshConnectivity: map['reverseSshConnectivity'] == null ? null : pulumi.Output.create<ReverseSshConnectivityDatamigrationV1beta1>(ReverseSshConnectivityDatamigrationV1beta1.fromMap((map['reverseSshConnectivity'] as Map).cast<String, dynamic>())),
      source: pulumi.Output.create<String>(map['source'] as String),
      sourceDatabase: map['sourceDatabase'] == null ? null : pulumi.Output.create<DatabaseTypeDatamigrationV1beta1>(DatabaseTypeDatamigrationV1beta1.fromMap((map['sourceDatabase'] as Map).cast<String, dynamic>())),
      state: map['state'] == null ? null : pulumi.Output.create<MigrationJobStateDatamigrationV1beta1>(MigrationJobStateDatamigrationV1beta1.fromValue(map['state'] as String)),
      staticIpConnectivity: map['staticIpConnectivity'] == null ? null : pulumi.Output.create<Map<String, dynamic>>((map['staticIpConnectivity'] as Map).cast<String, dynamic>()),
      type: pulumi.Output.create<MigrationJobTypeDatamigrationV1beta1>(MigrationJobTypeDatamigrationV1beta1.fromValue(map['type'] as String)),
      vpcPeeringConnectivity: map['vpcPeeringConnectivity'] == null ? null : pulumi.Output.create<VpcPeeringConnectivityDatamigrationV1beta1>(VpcPeeringConnectivityDatamigrationV1beta1.fromMap((map['vpcPeeringConnectivity'] as Map).cast<String, dynamic>())),
    );
  }
}

