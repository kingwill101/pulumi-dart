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
    this.createTime,
    this.destination,
    this.displayName,
    this.dumpFlags,
    this.dumpPath,
    this.dumpType,
    this.effectiveLabels,
    this.errors,
    this.labels,
    this.location,
    this.migrationJobId,
    this.name,
    this.performanceConfig,
    this.phase,
    this.project,
    this.pulumiLabels,
    this.reverseSshConnectivity,
    this.source,
    this.state,
    this.staticIpConnectivity,
    this.type,
    this.vpcPeeringConnectivity,
  });

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
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      destination: map['destination'] == null ? null : (map['destination']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      dumpFlags: map['dumpFlags'] == null ? null : (MigrationJobDumpFlags.fromMap((map['dumpFlags']! as Map).cast<String, dynamic>())).input(),
      dumpPath: map['dumpPath'] == null ? null : (map['dumpPath']! as String).input(),
      dumpType: map['dumpType'] == null ? null : (map['dumpType']! as String).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels']! as Map).cast<String, String>()).input(),
      errors: map['errors'] == null ? null : (pulumi.Input.decodeList<MigrationJobError>(map['errors']!, (value) => MigrationJobError.fromMap((value as Map).cast<String, dynamic>()))).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      migrationJobId: map['migrationJobId'] == null ? null : (map['migrationJobId']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      performanceConfig: map['performanceConfig'] == null ? null : (MigrationJobPerformanceConfig.fromMap((map['performanceConfig']! as Map).cast<String, dynamic>())).input(),
      phase: map['phase'] == null ? null : (map['phase']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels']! as Map).cast<String, String>()).input(),
      reverseSshConnectivity: map['reverseSshConnectivity'] == null ? null : (MigrationJobReverseSshConnectivity.fromMap((map['reverseSshConnectivity']! as Map).cast<String, dynamic>())).input(),
      source: map['source'] == null ? null : (map['source']! as String).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
      staticIpConnectivity: map['staticIpConnectivity'] == null ? null : ((map['staticIpConnectivity']! as Map).cast<String, dynamic>()).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
      vpcPeeringConnectivity: map['vpcPeeringConnectivity'] == null ? null : (MigrationJobVpcPeeringConnectivity.fromMap((map['vpcPeeringConnectivity']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

