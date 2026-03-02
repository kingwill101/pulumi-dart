// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alloy_db_connection_profile.dart';
import 'cloud_sql_connection_profile.dart';
import 'connection_profile_provider.dart';
import 'connection_profile_state.dart';
import 'my_sql_connection_profile.dart';
import 'oracle_connection_profile.dart';
import 'postgre_sql_connection_profile.dart';

/// {@template pulumi_datamigration_v1_connection_profile_args_doc}
/// The set of arguments for ConnectionProfile.
/// {@endtemplate}
/// {@macro pulumi_datamigration_v1_connection_profile_args_doc}
class ConnectionProfileArgs {
  /// An AlloyDB cluster connection profile.
  final pulumi.Input<AlloyDbConnectionProfile>? alloydb;
  /// A CloudSQL database connection profile.
  final pulumi.Input<CloudSqlConnectionProfile>? cloudsql;
  /// Required. The connection profile identifier.
  final pulumi.Input<String> connectionProfileId;
  /// The connection profile display name.
  final pulumi.Input<String>? displayName;
  /// The resource labels for connection profile to use to annotate any related underlying resources such as Compute Engine VMs. An object containing a list of "key": "value" pairs. Example: `{ "name": "wrench", "mass": "1.3kg", "count": "3" }`.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// A MySQL database connection profile.
  final pulumi.Input<MySqlConnectionProfile>? mysql;
  /// The name of this connection profile resource in the form of projects/{project}/locations/{location}/connectionProfiles/{connectionProfile}.
  final pulumi.Input<String>? name;
  /// An Oracle database connection profile.
  final pulumi.Input<OracleConnectionProfile>? oracle;
  /// A PostgreSQL database connection profile.
  final pulumi.Input<PostgreSqlConnectionProfile>? postgresql;
  final pulumi.Input<String>? project;
  /// The database provider.
  final pulumi.Input<ConnectionProfileProvider>? provider;
  /// Optional. A unique ID used to identify the request. If the server receives two requests with the same ID, then the second request is ignored. It is recommended to always set this value to a UUID. The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
  final pulumi.Input<String>? requestId;
  /// Optional. Create the connection profile without validating it. The default is false. Only supported for Oracle connection profiles.
  final pulumi.Input<bool>? skipValidation;
  /// The current connection profile state (e.g. DRAFT, READY, or FAILED).
  final pulumi.Input<ConnectionProfileState>? state;

  /// Creates a new [ConnectionProfileArgs].
  /// [alloydb] An AlloyDB cluster connection profile.
  /// [cloudsql] A CloudSQL database connection profile.
  /// [connectionProfileId] Required. The connection profile identifier.
  /// [displayName] The connection profile display name.
  /// [labels] The resource labels for connection profile to use to annotate any related underlying resources such as Compute Engine VMs. An object containing a list of "key": "value" pairs. Example: `{ "name": "wrench", "mass": "1.3kg", "count": "3" }`.
  /// [location] Optional.
  /// [mysql] A MySQL database connection profile.
  /// [name] The name of this connection profile resource in the form of projects/{project}/locations/{location}/connectionProfiles/{connectionProfile}.
  /// [oracle] An Oracle database connection profile.
  /// [postgresql] A PostgreSQL database connection profile.
  /// [project] Optional.
  /// [provider] The database provider.
  /// [requestId] Optional. A unique ID used to identify the request. If the server receives two requests with the same ID, then the second request is ignored. It is recommended to always set this value to a UUID. The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
  /// [skipValidation] Optional. Create the connection profile without validating it. The default is false. Only supported for Oracle connection profiles.
  /// [state] The current connection profile state (e.g. DRAFT, READY, or FAILED).
  ConnectionProfileArgs({
    this.alloydb,
    this.cloudsql,
    required this.connectionProfileId,
    this.displayName,
    this.labels,
    this.location,
    this.mysql,
    this.name,
    this.oracle,
    this.postgresql,
    this.project,
    this.provider,
    this.requestId,
    this.skipValidation,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alloydb': ?pulumi.Input.mapOptionalInputValue<AlloyDbConnectionProfile, Map<String, dynamic>>(alloydb, (value) => value.toMap()),
      'cloudsql': ?pulumi.Input.mapOptionalInputValue<CloudSqlConnectionProfile, Map<String, dynamic>>(cloudsql, (value) => value.toMap()),
      'connectionProfileId': connectionProfileId,
      'displayName': ?displayName,
      'labels': ?labels,
      'location': ?location,
      'mysql': ?pulumi.Input.mapOptionalInputValue<MySqlConnectionProfile, Map<String, dynamic>>(mysql, (value) => value.toMap()),
      'name': ?name,
      'oracle': ?pulumi.Input.mapOptionalInputValue<OracleConnectionProfile, Map<String, dynamic>>(oracle, (value) => value.toMap()),
      'postgresql': ?pulumi.Input.mapOptionalInputValue<PostgreSqlConnectionProfile, Map<String, dynamic>>(postgresql, (value) => value.toMap()),
      'project': ?project,
      'provider': ?pulumi.Input.mapOptionalInputValue<ConnectionProfileProvider, String>(provider, (value) => value.value),
      'requestId': ?requestId,
      'skipValidation': ?skipValidation,
      'state': ?pulumi.Input.mapOptionalInputValue<ConnectionProfileState, String>(state, (value) => value.value),
    };
  }

  factory ConnectionProfileArgs.fromMap(Map<String, dynamic> map) {
    return ConnectionProfileArgs(
      alloydb: map['alloydb'] == null ? null : (AlloyDbConnectionProfile.fromMap((map['alloydb']! as Map).cast<String, dynamic>())).input(),
      cloudsql: map['cloudsql'] == null ? null : (CloudSqlConnectionProfile.fromMap((map['cloudsql']! as Map).cast<String, dynamic>())).input(),
      connectionProfileId: (map['connectionProfileId'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      mysql: map['mysql'] == null ? null : (MySqlConnectionProfile.fromMap((map['mysql']! as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      oracle: map['oracle'] == null ? null : (OracleConnectionProfile.fromMap((map['oracle']! as Map).cast<String, dynamic>())).input(),
      postgresql: map['postgresql'] == null ? null : (PostgreSqlConnectionProfile.fromMap((map['postgresql']! as Map).cast<String, dynamic>())).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      provider: map['provider'] == null ? null : (ConnectionProfileProvider.fromValue(map['provider']! as String)).input(),
      requestId: map['requestId'] == null ? null : (map['requestId']! as String).input(),
      skipValidation: map['skipValidation'] == null ? null : (map['skipValidation']! as bool).input(),
      state: map['state'] == null ? null : (ConnectionProfileState.fromValue(map['state']! as String)).input(),
    );
  }
}

