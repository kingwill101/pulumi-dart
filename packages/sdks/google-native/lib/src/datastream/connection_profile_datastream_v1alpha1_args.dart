// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'forward_ssh_tunnel_connectivity_datastream_v1alpha1.dart';
import 'gcs_profile_datastream_v1alpha1.dart';
import 'mysql_profile_datastream_v1alpha1.dart';
import 'oracle_profile_datastream_v1alpha1.dart';
import 'private_connectivity_datastream_v1alpha1.dart';

/// {@template pulumi_datastream_v1alpha1_connection_profile_datastream_v1alpha1_args_doc}
/// The set of arguments for ConnectionProfile.
/// {@endtemplate}
/// {@macro pulumi_datastream_v1alpha1_connection_profile_datastream_v1alpha1_args_doc}
class ConnectionProfileDatastreamV1alpha1Args {
  /// Required. The connection profile identifier.
  final pulumi.Input<String> connectionProfileId;
  /// Display name.
  final pulumi.Input<String> displayName;
  /// Forward SSH tunnel connectivity.
  final pulumi.Input<ForwardSshTunnelConnectivityDatastreamV1alpha1>? forwardSshConnectivity;
  /// Cloud Storage ConnectionProfile configuration.
  final pulumi.Input<GcsProfileDatastreamV1alpha1>? gcsProfile;
  /// Labels.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// MySQL ConnectionProfile configuration.
  final pulumi.Input<MysqlProfileDatastreamV1alpha1>? mysqlProfile;
  /// No connectivity option chosen.
  final pulumi.Input<Map<String, dynamic>>? noConnectivity;
  /// Oracle ConnectionProfile configuration.
  final pulumi.Input<OracleProfileDatastreamV1alpha1>? oracleProfile;
  /// Private connectivity.
  final pulumi.Input<PrivateConnectivityDatastreamV1alpha1>? privateConnectivity;
  final pulumi.Input<String>? project;
  /// Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// Static Service IP connectivity.
  final pulumi.Input<Map<String, dynamic>>? staticServiceIpConnectivity;

  /// Creates a new [ConnectionProfileDatastreamV1alpha1Args].
  /// [connectionProfileId] Required. The connection profile identifier.
  /// [displayName] Display name.
  /// [forwardSshConnectivity] Forward SSH tunnel connectivity.
  /// [gcsProfile] Cloud Storage ConnectionProfile configuration.
  /// [labels] Labels.
  /// [location] Optional.
  /// [mysqlProfile] MySQL ConnectionProfile configuration.
  /// [noConnectivity] No connectivity option chosen.
  /// [oracleProfile] Oracle ConnectionProfile configuration.
  /// [privateConnectivity] Private connectivity.
  /// [project] Optional.
  /// [requestId] Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  /// [staticServiceIpConnectivity] Static Service IP connectivity.
  ConnectionProfileDatastreamV1alpha1Args({
    required this.connectionProfileId,
    required this.displayName,
    this.forwardSshConnectivity,
    this.gcsProfile,
    this.labels,
    this.location,
    this.mysqlProfile,
    this.noConnectivity,
    this.oracleProfile,
    this.privateConnectivity,
    this.project,
    this.requestId,
    this.staticServiceIpConnectivity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionProfileId': connectionProfileId,
      'displayName': displayName,
      'forwardSshConnectivity': ?pulumi.Input.mapOptionalInputValue<ForwardSshTunnelConnectivityDatastreamV1alpha1, Map<String, dynamic>>(forwardSshConnectivity, (value) => value.toMap()),
      'gcsProfile': ?pulumi.Input.mapOptionalInputValue<GcsProfileDatastreamV1alpha1, Map<String, dynamic>>(gcsProfile, (value) => value.toMap()),
      'labels': ?labels,
      'location': ?location,
      'mysqlProfile': ?pulumi.Input.mapOptionalInputValue<MysqlProfileDatastreamV1alpha1, Map<String, dynamic>>(mysqlProfile, (value) => value.toMap()),
      'noConnectivity': ?noConnectivity,
      'oracleProfile': ?pulumi.Input.mapOptionalInputValue<OracleProfileDatastreamV1alpha1, Map<String, dynamic>>(oracleProfile, (value) => value.toMap()),
      'privateConnectivity': ?pulumi.Input.mapOptionalInputValue<PrivateConnectivityDatastreamV1alpha1, Map<String, dynamic>>(privateConnectivity, (value) => value.toMap()),
      'project': ?project,
      'requestId': ?requestId,
      'staticServiceIpConnectivity': ?staticServiceIpConnectivity,
    };
  }

  factory ConnectionProfileDatastreamV1alpha1Args.fromMap(Map<String, dynamic> map) {
    return ConnectionProfileDatastreamV1alpha1Args(
      connectionProfileId: pulumi.Input.fromValue(map['connectionProfileId'] as String),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      forwardSshConnectivity: (() { final guardedValue = map['forwardSshConnectivity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ForwardSshTunnelConnectivityDatastreamV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gcsProfile: (() { final guardedValue = map['gcsProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GcsProfileDatastreamV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mysqlProfile: (() { final guardedValue = map['mysqlProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MysqlProfileDatastreamV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      noConnectivity: (() { final guardedValue = map['noConnectivity']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      oracleProfile: (() { final guardedValue = map['oracleProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OracleProfileDatastreamV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      privateConnectivity: (() { final guardedValue = map['privateConnectivity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PrivateConnectivityDatastreamV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestId: (() { final guardedValue = map['requestId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      staticServiceIpConnectivity: (() { final guardedValue = map['staticServiceIpConnectivity']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}

