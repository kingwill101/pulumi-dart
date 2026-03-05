import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_profile_datastream_v1alpha1_args.dart';
import 'forward_ssh_tunnel_connectivity_response_datastream_v1alpha1.dart';
import 'gcs_profile_response_datastream_v1alpha1.dart';
import 'mysql_profile_response_datastream_v1alpha1.dart';
import 'oracle_profile_response_datastream_v1alpha1.dart';
import 'private_connectivity_response_datastream_v1alpha1.dart';

/// Use this method to create a connection profile in a project and location.
/// Auto-naming is currently not supported for this resource.
class ConnectionProfileDatastreamV1alpha1 extends pulumi.CustomResource {
  /// Required. The connection profile identifier.
  late final pulumi.Output<String> connectionProfileId;
  /// The create time of the resource.
  late final pulumi.Output<String> createTime;
  /// Display name.
  late final pulumi.Output<String> displayName;
  /// Forward SSH tunnel connectivity.
  late final pulumi.Output<ForwardSshTunnelConnectivityResponseDatastreamV1alpha1> forwardSshConnectivity;
  /// Cloud Storage ConnectionProfile configuration.
  late final pulumi.Output<GcsProfileResponseDatastreamV1alpha1> gcsProfile;
  /// Labels.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;
  /// MySQL ConnectionProfile configuration.
  late final pulumi.Output<MysqlProfileResponseDatastreamV1alpha1> mysqlProfile;
  /// The resource's name.
  late final pulumi.Output<String> name;
  /// No connectivity option chosen.
  late final pulumi.Output<Map<String, dynamic>> noConnectivity;
  /// Oracle ConnectionProfile configuration.
  late final pulumi.Output<OracleProfileResponseDatastreamV1alpha1> oracleProfile;
  /// Private connectivity.
  late final pulumi.Output<PrivateConnectivityResponseDatastreamV1alpha1> privateConnectivity;
  late final pulumi.Output<String> project;
  /// Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;
  /// Static Service IP connectivity.
  late final pulumi.Output<Map<String, dynamic>> staticServiceIpConnectivity;
  /// The update time of the resource.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [ConnectionProfileDatastreamV1alpha1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConnectionProfileDatastreamV1alpha1]. {@macro pulumi_datastream_v1alpha1_connection_profile_datastream_v1alpha1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConnectionProfileDatastreamV1alpha1(
    String name, {
    ConnectionProfileDatastreamV1alpha1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:datastream/v1alpha1:ConnectionProfile',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    connectionProfileId = registerOutput<String>('connectionProfileId');
    createTime = registerOutput<String>('createTime');
    displayName = registerOutput<String>('displayName');
    forwardSshConnectivity = registerOutput<ForwardSshTunnelConnectivityResponseDatastreamV1alpha1>('forwardSshConnectivity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ForwardSshTunnelConnectivityResponseDatastreamV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    gcsProfile = registerOutput<GcsProfileResponseDatastreamV1alpha1>('gcsProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GcsProfileResponseDatastreamV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    labels = registerOutput<Map<String, String>>('labels');
    location = registerOutput<String>('location');
    mysqlProfile = registerOutput<MysqlProfileResponseDatastreamV1alpha1>('mysqlProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MysqlProfileResponseDatastreamV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    noConnectivity = registerOutput<Map<String, dynamic>>('noConnectivity');
    oracleProfile = registerOutput<OracleProfileResponseDatastreamV1alpha1>('oracleProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OracleProfileResponseDatastreamV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    privateConnectivity = registerOutput<PrivateConnectivityResponseDatastreamV1alpha1>('privateConnectivity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PrivateConnectivityResponseDatastreamV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    requestId = registerOutput<String?>('requestId');
    staticServiceIpConnectivity = registerOutput<Map<String, dynamic>>('staticServiceIpConnectivity');
    updateTime = registerOutput<String>('updateTime');
  }
}
