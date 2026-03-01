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
    required pulumi.Output<String> connectionProfileId,
    required pulumi.Output<String> displayName,
    pulumi.Output<ForwardSshTunnelConnectivityDatastreamV1alpha1>? forwardSshConnectivity,
    pulumi.Output<GcsProfileDatastreamV1alpha1>? gcsProfile,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<MysqlProfileDatastreamV1alpha1>? mysqlProfile,
    pulumi.Output<Map<String, dynamic>>? noConnectivity,
    pulumi.Output<OracleProfileDatastreamV1alpha1>? oracleProfile,
    pulumi.Output<PrivateConnectivityDatastreamV1alpha1>? privateConnectivity,
    pulumi.Output<String>? project,
    pulumi.Output<String>? requestId,
    pulumi.Output<Map<String, dynamic>>? staticServiceIpConnectivity,
  }) :
      connectionProfileId = pulumi.Input.asInput<String>(connectionProfileId),
      displayName = pulumi.Input.asInput<String>(displayName),
      forwardSshConnectivity = pulumi.Input.asOptionalInput<ForwardSshTunnelConnectivityDatastreamV1alpha1>(forwardSshConnectivity),
      gcsProfile = pulumi.Input.asOptionalInput<GcsProfileDatastreamV1alpha1>(gcsProfile),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      mysqlProfile = pulumi.Input.asOptionalInput<MysqlProfileDatastreamV1alpha1>(mysqlProfile),
      noConnectivity = pulumi.Input.asOptionalInput<Map<String, dynamic>>(noConnectivity),
      oracleProfile = pulumi.Input.asOptionalInput<OracleProfileDatastreamV1alpha1>(oracleProfile),
      privateConnectivity = pulumi.Input.asOptionalInput<PrivateConnectivityDatastreamV1alpha1>(privateConnectivity),
      project = pulumi.Input.asOptionalInput<String>(project),
      requestId = pulumi.Input.asOptionalInput<String>(requestId),
      staticServiceIpConnectivity = pulumi.Input.asOptionalInput<Map<String, dynamic>>(staticServiceIpConnectivity);

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
      connectionProfileId: pulumi.Output.create<String>(map['connectionProfileId'] as String),
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      forwardSshConnectivity: map['forwardSshConnectivity'] == null ? null : pulumi.Output.create<ForwardSshTunnelConnectivityDatastreamV1alpha1>(ForwardSshTunnelConnectivityDatastreamV1alpha1.fromMap((map['forwardSshConnectivity'] as Map).cast<String, dynamic>())),
      gcsProfile: map['gcsProfile'] == null ? null : pulumi.Output.create<GcsProfileDatastreamV1alpha1>(GcsProfileDatastreamV1alpha1.fromMap((map['gcsProfile'] as Map).cast<String, dynamic>())),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      mysqlProfile: map['mysqlProfile'] == null ? null : pulumi.Output.create<MysqlProfileDatastreamV1alpha1>(MysqlProfileDatastreamV1alpha1.fromMap((map['mysqlProfile'] as Map).cast<String, dynamic>())),
      noConnectivity: map['noConnectivity'] == null ? null : pulumi.Output.create<Map<String, dynamic>>((map['noConnectivity'] as Map).cast<String, dynamic>()),
      oracleProfile: map['oracleProfile'] == null ? null : pulumi.Output.create<OracleProfileDatastreamV1alpha1>(OracleProfileDatastreamV1alpha1.fromMap((map['oracleProfile'] as Map).cast<String, dynamic>())),
      privateConnectivity: map['privateConnectivity'] == null ? null : pulumi.Output.create<PrivateConnectivityDatastreamV1alpha1>(PrivateConnectivityDatastreamV1alpha1.fromMap((map['privateConnectivity'] as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      requestId: map['requestId'] == null ? null : pulumi.Output.create<String>(map['requestId'] as String),
      staticServiceIpConnectivity: map['staticServiceIpConnectivity'] == null ? null : pulumi.Output.create<Map<String, dynamic>>((map['staticServiceIpConnectivity'] as Map).cast<String, dynamic>()),
    );
  }
}

