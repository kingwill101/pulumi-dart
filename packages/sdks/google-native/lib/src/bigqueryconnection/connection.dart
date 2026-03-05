import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_sql_properties_response.dart';
import 'connection_args.dart';

/// Creates a new connection.
class Connection extends pulumi.CustomResource {
  /// Cloud SQL properties.
  late final pulumi.Output<CloudSqlPropertiesResponse> cloudSql;

  /// Optional. Connection id that should be assigned to the created connection.
  late final pulumi.Output<String?> connectionId;

  /// The creation timestamp of the connection.
  late final pulumi.Output<String> creationTime;

  /// User provided description.
  late final pulumi.Output<String> description;

  /// User provided display name for the connection.
  late final pulumi.Output<String> friendlyName;

  /// True, if credential is configured for this connection.
  late final pulumi.Output<bool> hasCredential;

  /// The last update timestamp of the connection.
  late final pulumi.Output<String> lastModifiedTime;
  late final pulumi.Output<String> location;

  /// The resource name of the connection in the form of: `projects/{project_id}/locations/{location_id}/connections/{connection_id}`
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Creates a new [Connection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Connection]. {@macro pulumi_bigqueryconnection_v1beta1_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Connection(
    String name, {
    ConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:bigqueryconnection/v1beta1:Connection',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    cloudSql = registerOutput<CloudSqlPropertiesResponse>(
      'cloudSql',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return CloudSqlPropertiesResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    connectionId = registerOutput<String?>('connectionId');
    creationTime = registerOutput<String>('creationTime');
    description = registerOutput<String>('description');
    friendlyName = registerOutput<String>('friendlyName');
    hasCredential = registerOutput<bool>('hasCredential');
    lastModifiedTime = registerOutput<String>('lastModifiedTime');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
  }
}
