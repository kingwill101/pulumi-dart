import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_profile_args.dart';
import 'forward_ssh_tunnel_connectivity_response.dart';
import 'gcs_profile_response.dart';
import 'mysql_profile_response.dart';
import 'oracle_profile_response.dart';
import 'postgresql_profile_response.dart';
import 'private_connectivity_response.dart';

/// Use this method to create a connection profile in a project and location.
/// Auto-naming is currently not supported for this resource.
class ConnectionProfile extends pulumi.CustomResource {
  /// BigQuery Connection Profile configuration.
  late final pulumi.Output<Map<String, dynamic>> bigqueryProfile;

  /// Required. The connection profile identifier.
  late final pulumi.Output<String> connectionProfileId;

  /// The create time of the resource.
  late final pulumi.Output<String> createTime;

  /// Display name.
  late final pulumi.Output<String> displayName;

  /// Optional. Create the connection profile without validating it.
  late final pulumi.Output<bool?> force;

  /// Forward SSH tunnel connectivity.
  late final pulumi.Output<ForwardSshTunnelConnectivityResponse>
  forwardSshConnectivity;

  /// Cloud Storage ConnectionProfile configuration.
  late final pulumi.Output<GcsProfileResponse> gcsProfile;

  /// Labels.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// MySQL ConnectionProfile configuration.
  late final pulumi.Output<MysqlProfileResponse> mysqlProfile;

  /// The resource's name.
  late final pulumi.Output<String> name;

  /// Oracle ConnectionProfile configuration.
  late final pulumi.Output<OracleProfileResponse> oracleProfile;

  /// PostgreSQL Connection Profile configuration.
  late final pulumi.Output<PostgresqlProfileResponse> postgresqlProfile;

  /// Private connectivity.
  late final pulumi.Output<PrivateConnectivityResponse> privateConnectivity;
  late final pulumi.Output<String> project;

  /// Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;

  /// Static Service IP connectivity.
  late final pulumi.Output<Map<String, dynamic>> staticServiceIpConnectivity;

  /// The update time of the resource.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [ConnectionProfile].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConnectionProfile]. {@macro pulumi_datastream_v1_connection_profile_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConnectionProfile(
    String name, {
    ConnectionProfileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:datastream/v1:ConnectionProfile',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    bigqueryProfile = registerOutput<Map<String, dynamic>>('bigqueryProfile');
    connectionProfileId = registerOutput<String>('connectionProfileId');
    createTime = registerOutput<String>('createTime');
    displayName = registerOutput<String>('displayName');
    force = registerOutput<bool?>('force');
    forwardSshConnectivity =
        registerOutput<ForwardSshTunnelConnectivityResponse>(
          'forwardSshConnectivity',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return ForwardSshTunnelConnectivityResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    gcsProfile = registerOutput<GcsProfileResponse>(
      'gcsProfile',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GcsProfileResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    labels = registerOutput<Map<String, String>>('labels');
    location = registerOutput<String>('location');
    mysqlProfile = registerOutput<MysqlProfileResponse>(
      'mysqlProfile',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return MysqlProfileResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    this.name = registerOutput<String>('name');
    oracleProfile = registerOutput<OracleProfileResponse>(
      'oracleProfile',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return OracleProfileResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    postgresqlProfile = registerOutput<PostgresqlProfileResponse>(
      'postgresqlProfile',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return PostgresqlProfileResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    privateConnectivity = registerOutput<PrivateConnectivityResponse>(
      'privateConnectivity',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return PrivateConnectivityResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    project = registerOutput<String>('project');
    requestId = registerOutput<String?>('requestId');
    staticServiceIpConnectivity = registerOutput<Map<String, dynamic>>(
      'staticServiceIpConnectivity',
    );
    updateTime = registerOutput<String>('updateTime');
  }
}
