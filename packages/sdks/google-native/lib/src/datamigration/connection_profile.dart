import 'package:pulumi/pulumi.dart' as pulumi;
import 'alloy_db_connection_profile_response.dart';
import 'cloud_sql_connection_profile_response.dart';
import 'connection_profile_args.dart';
import 'my_sql_connection_profile_response.dart';
import 'oracle_connection_profile_response.dart';
import 'postgre_sql_connection_profile_response.dart';
import 'status_response.dart';

/// Creates a new connection profile in a given project and location.
class ConnectionProfile extends pulumi.CustomResource {
  /// An AlloyDB cluster connection profile.
  late final pulumi.Output<AlloyDbConnectionProfileResponse> alloydb;

  /// A CloudSQL database connection profile.
  late final pulumi.Output<CloudSqlConnectionProfileResponse> cloudsql;

  /// Required. The connection profile identifier.
  late final pulumi.Output<String> connectionProfileId;

  /// The timestamp when the resource was created. A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds. Example: "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> createTime;

  /// The connection profile display name.
  late final pulumi.Output<String> displayName;

  /// The error details in case of state FAILED.
  late final pulumi.Output<StatusResponse> error;

  /// The resource labels for connection profile to use to annotate any related underlying resources such as Compute Engine VMs. An object containing a list of "key": "value" pairs. Example: `{ "name": "wrench", "mass": "1.3kg", "count": "3" }`.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// A MySQL database connection profile.
  late final pulumi.Output<MySqlConnectionProfileResponse> mysql;

  /// The name of this connection profile resource in the form of projects/{project}/locations/{location}/connectionProfiles/{connectionProfile}.
  late final pulumi.Output<String> name;

  /// An Oracle database connection profile.
  late final pulumi.Output<OracleConnectionProfileResponse> oracle;

  /// A PostgreSQL database connection profile.
  late final pulumi.Output<PostgreSqlConnectionProfileResponse> postgresql;
  late final pulumi.Output<String> project;

  /// The database provider.
  late final pulumi.Output<String> provider;

  /// Optional. A unique ID used to identify the request. If the server receives two requests with the same ID, then the second request is ignored. It is recommended to always set this value to a UUID. The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
  late final pulumi.Output<String?> requestId;

  /// Optional. Create the connection profile without validating it. The default is false. Only supported for Oracle connection profiles.
  late final pulumi.Output<bool?> skipValidation;

  /// The current connection profile state (e.g. DRAFT, READY, or FAILED).
  late final pulumi.Output<String> state;

  /// The timestamp when the resource was last updated. A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds. Example: "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> updateTime;

  /// Creates a new [ConnectionProfile].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConnectionProfile]. {@macro pulumi_datamigration_v1_connection_profile_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConnectionProfile(
    String name, {
    ConnectionProfileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:datamigration/v1:ConnectionProfile',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    alloydb = registerOutput<AlloyDbConnectionProfileResponse>(
      'alloydb',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AlloyDbConnectionProfileResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    cloudsql = registerOutput<CloudSqlConnectionProfileResponse>(
      'cloudsql',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return CloudSqlConnectionProfileResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    connectionProfileId = registerOutput<String>('connectionProfileId');
    createTime = registerOutput<String>('createTime');
    displayName = registerOutput<String>('displayName');
    error = registerOutput<StatusResponse>(
      'error',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return StatusResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    labels = registerOutput<Map<String, String>>('labels');
    location = registerOutput<String>('location');
    mysql = registerOutput<MySqlConnectionProfileResponse>(
      'mysql',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return MySqlConnectionProfileResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    this.name = registerOutput<String>('name');
    oracle = registerOutput<OracleConnectionProfileResponse>(
      'oracle',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return OracleConnectionProfileResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    postgresql = registerOutput<PostgreSqlConnectionProfileResponse>(
      'postgresql',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return PostgreSqlConnectionProfileResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    project = registerOutput<String>('project');
    provider = registerOutput<String>('provider');
    requestId = registerOutput<String?>('requestId');
    skipValidation = registerOutput<bool?>('skipValidation');
    state = registerOutput<String>('state');
    updateTime = registerOutput<String>('updateTime');
  }
}
