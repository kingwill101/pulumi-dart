// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'forward_ssh_tunnel_connectivity.dart';
import 'gcs_profile.dart';
import 'mysql_profile.dart';
import 'oracle_profile.dart';
import 'postgresql_profile.dart';
import 'private_connectivity.dart';

/// {@template pulumi_datastream_v1_connection_profile_args_doc}
/// The set of arguments for ConnectionProfile.
/// {@endtemplate}
/// {@macro pulumi_datastream_v1_connection_profile_args_doc}
class ConnectionProfileArgs {
  /// BigQuery Connection Profile configuration.
  final pulumi.Input<Map<String, dynamic>>? bigqueryProfile;
  /// Required. The connection profile identifier.
  final pulumi.Input<String> connectionProfileId;
  /// Display name.
  final pulumi.Input<String> displayName;
  /// Optional. Create the connection profile without validating it.
  final pulumi.Input<bool>? force;
  /// Forward SSH tunnel connectivity.
  final pulumi.Input<ForwardSshTunnelConnectivity>? forwardSshConnectivity;
  /// Cloud Storage ConnectionProfile configuration.
  final pulumi.Input<GcsProfile>? gcsProfile;
  /// Labels.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// MySQL ConnectionProfile configuration.
  final pulumi.Input<MysqlProfile>? mysqlProfile;
  /// Oracle ConnectionProfile configuration.
  final pulumi.Input<OracleProfile>? oracleProfile;
  /// PostgreSQL Connection Profile configuration.
  final pulumi.Input<PostgresqlProfile>? postgresqlProfile;
  /// Private connectivity.
  final pulumi.Input<PrivateConnectivity>? privateConnectivity;
  final pulumi.Input<String>? project;
  /// Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// Static Service IP connectivity.
  final pulumi.Input<Map<String, dynamic>>? staticServiceIpConnectivity;

  /// Creates a new [ConnectionProfileArgs].
  /// [bigqueryProfile] BigQuery Connection Profile configuration.
  /// [connectionProfileId] Required. The connection profile identifier.
  /// [displayName] Display name.
  /// [force] Optional. Create the connection profile without validating it.
  /// [forwardSshConnectivity] Forward SSH tunnel connectivity.
  /// [gcsProfile] Cloud Storage ConnectionProfile configuration.
  /// [labels] Labels.
  /// [location] Optional.
  /// [mysqlProfile] MySQL ConnectionProfile configuration.
  /// [oracleProfile] Oracle ConnectionProfile configuration.
  /// [postgresqlProfile] PostgreSQL Connection Profile configuration.
  /// [privateConnectivity] Private connectivity.
  /// [project] Optional.
  /// [requestId] Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  /// [staticServiceIpConnectivity] Static Service IP connectivity.
  ConnectionProfileArgs({
    this.bigqueryProfile,
    required this.connectionProfileId,
    required this.displayName,
    this.force,
    this.forwardSshConnectivity,
    this.gcsProfile,
    this.labels,
    this.location,
    this.mysqlProfile,
    this.oracleProfile,
    this.postgresqlProfile,
    this.privateConnectivity,
    this.project,
    this.requestId,
    this.staticServiceIpConnectivity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigqueryProfile': ?bigqueryProfile,
      'connectionProfileId': connectionProfileId,
      'displayName': displayName,
      'force': ?force,
      'forwardSshConnectivity': ?pulumi.Input.mapOptionalInputValue<ForwardSshTunnelConnectivity, Map<String, dynamic>>(forwardSshConnectivity, (value) => value.toMap()),
      'gcsProfile': ?pulumi.Input.mapOptionalInputValue<GcsProfile, Map<String, dynamic>>(gcsProfile, (value) => value.toMap()),
      'labels': ?labels,
      'location': ?location,
      'mysqlProfile': ?pulumi.Input.mapOptionalInputValue<MysqlProfile, Map<String, dynamic>>(mysqlProfile, (value) => value.toMap()),
      'oracleProfile': ?pulumi.Input.mapOptionalInputValue<OracleProfile, Map<String, dynamic>>(oracleProfile, (value) => value.toMap()),
      'postgresqlProfile': ?pulumi.Input.mapOptionalInputValue<PostgresqlProfile, Map<String, dynamic>>(postgresqlProfile, (value) => value.toMap()),
      'privateConnectivity': ?pulumi.Input.mapOptionalInputValue<PrivateConnectivity, Map<String, dynamic>>(privateConnectivity, (value) => value.toMap()),
      'project': ?project,
      'requestId': ?requestId,
      'staticServiceIpConnectivity': ?staticServiceIpConnectivity,
    };
  }

  factory ConnectionProfileArgs.fromMap(Map<String, dynamic> map) {
    return ConnectionProfileArgs(
      bigqueryProfile: map['bigqueryProfile'] == null ? null : ((map['bigqueryProfile'] as Map).cast<String, dynamic>()).input(),
      connectionProfileId: (map['connectionProfileId'] as String).input(),
      displayName: (map['displayName'] as String).input(),
      force: map['force'] == null ? null : (map['force'] as bool).input(),
      forwardSshConnectivity: map['forwardSshConnectivity'] == null ? null : (ForwardSshTunnelConnectivity.fromMap((map['forwardSshConnectivity'] as Map).cast<String, dynamic>())).input(),
      gcsProfile: map['gcsProfile'] == null ? null : (GcsProfile.fromMap((map['gcsProfile'] as Map).cast<String, dynamic>())).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      mysqlProfile: map['mysqlProfile'] == null ? null : (MysqlProfile.fromMap((map['mysqlProfile'] as Map).cast<String, dynamic>())).input(),
      oracleProfile: map['oracleProfile'] == null ? null : (OracleProfile.fromMap((map['oracleProfile'] as Map).cast<String, dynamic>())).input(),
      postgresqlProfile: map['postgresqlProfile'] == null ? null : (PostgresqlProfile.fromMap((map['postgresqlProfile'] as Map).cast<String, dynamic>())).input(),
      privateConnectivity: map['privateConnectivity'] == null ? null : (PrivateConnectivity.fromMap((map['privateConnectivity'] as Map).cast<String, dynamic>())).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      requestId: map['requestId'] == null ? null : (map['requestId'] as String).input(),
      staticServiceIpConnectivity: map['staticServiceIpConnectivity'] == null ? null : ((map['staticServiceIpConnectivity'] as Map).cast<String, dynamic>()).input(),
    );
  }
}

