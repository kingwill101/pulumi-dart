import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_args.dart';
import 'sql_server_database_details_response.dart';

/// Inserts a resource containing information about a database inside a Cloud SQL instance. **Note:** You can't modify the default character set and collation.
class Database extends pulumi.CustomResource {
  /// The Cloud SQL charset value.
  late final pulumi.Output<String> charset;
  /// The Cloud SQL collation value.
  late final pulumi.Output<String> collation;
  /// This field is deprecated and will be removed from a future version of the API.
  late final pulumi.Output<String> etag;
  late final pulumi.Output<String> instance;
  /// This is always `sql#database`.
  late final pulumi.Output<String> kind;
  /// The name of the database in the Cloud SQL instance. This does not include the project ID or instance name.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  /// The URI of this resource.
  late final pulumi.Output<String> selfLink;
  late final pulumi.Output<SqlServerDatabaseDetailsResponse> sqlserverDatabaseDetails;

  /// Creates a new [Database].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Database]. {@macro pulumi_sqladmin_v1_database_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Database(
    String name, {
    DatabaseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:sqladmin/v1:Database',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    charset = registerOutput<String>('charset');
    collation = registerOutput<String>('collation');
    etag = registerOutput<String>('etag');
    instance = registerOutput<String>('instance');
    kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    selfLink = registerOutput<String>('selfLink');
    sqlserverDatabaseDetails = registerOutput<SqlServerDatabaseDetailsResponse>('sqlserverDatabaseDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SqlServerDatabaseDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
