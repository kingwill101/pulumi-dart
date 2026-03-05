import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_sql_connection_profile_response_datamigration_v1beta1.dart';
import 'connection_profile_datamigration_v1beta1_args.dart';
import 'my_sql_connection_profile_response_datamigration_v1beta1.dart';
import 'status_response_datamigration_v1beta1.dart';

/// Creates a new connection profile in a given project and location.
class ConnectionProfileDatamigrationV1beta1 extends pulumi.CustomResource {
  /// A CloudSQL database connection profile.
  late final pulumi.Output<
    CloudSqlConnectionProfileResponseDatamigrationV1beta1
  >
  cloudsql;

  /// Required. The connection profile identifier.
  late final pulumi.Output<String> connectionProfileId;

  /// The timestamp when the resource was created. A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds. Example: "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> createTime;

  /// The connection profile display name.
  late final pulumi.Output<String> displayName;

  /// The error details in case of state FAILED.
  late final pulumi.Output<StatusResponseDatamigrationV1beta1> error;

  /// The resource labels for connection profile to use to annotate any related underlying resources such as Compute Engine VMs. An object containing a list of "key": "value" pairs. Example: `{ "name": "wrench", "mass": "1.3kg", "count": "3" }`.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// A MySQL database connection profile.
  late final pulumi.Output<MySqlConnectionProfileResponseDatamigrationV1beta1>
  mysql;

  /// The name of this connection profile resource in the form of projects/{project}/locations/{location}/connectionProfiles/{connectionProfile}.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// The database provider.
  late final pulumi.Output<String> provider;

  /// A unique id used to identify the request. If the server receives two requests with the same id, then the second request will be ignored. It is recommended to always set this value to a UUID. The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
  late final pulumi.Output<String?> requestId;

  /// The current connection profile state (e.g. DRAFT, READY, or FAILED).
  late final pulumi.Output<String> state;

  /// The timestamp when the resource was last updated. A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds. Example: "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> updateTime;

  /// Creates a new [ConnectionProfileDatamigrationV1beta1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConnectionProfileDatamigrationV1beta1]. {@macro pulumi_datamigration_v1beta1_connection_profile_datamigration_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConnectionProfileDatamigrationV1beta1(
    String name, {
    ConnectionProfileDatamigrationV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:datamigration/v1beta1:ConnectionProfile',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    cloudsql =
        registerOutput<CloudSqlConnectionProfileResponseDatamigrationV1beta1>(
          'cloudsql',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return CloudSqlConnectionProfileResponseDatamigrationV1beta1.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    connectionProfileId = registerOutput<String>('connectionProfileId');
    createTime = registerOutput<String>('createTime');
    displayName = registerOutput<String>('displayName');
    error = registerOutput<StatusResponseDatamigrationV1beta1>(
      'error',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return StatusResponseDatamigrationV1beta1.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    labels = registerOutput<Map<String, String>>('labels');
    location = registerOutput<String>('location');
    mysql = registerOutput<MySqlConnectionProfileResponseDatamigrationV1beta1>(
      'mysql',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return MySqlConnectionProfileResponseDatamigrationV1beta1.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    provider = registerOutput<String>('provider');
    requestId = registerOutput<String?>('requestId');
    state = registerOutput<String>('state');
    updateTime = registerOutput<String>('updateTime');
  }
}
