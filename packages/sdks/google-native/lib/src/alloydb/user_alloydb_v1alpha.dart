import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_alloydb_v1alpha_args.dart';

/// Creates a new User in a given project, location, and cluster.
/// Auto-naming is currently not supported for this resource.
class UserAlloydbV1alpha extends pulumi.CustomResource {
  late final pulumi.Output<String> clusterId;
  /// Optional. List of database roles this user has. The database role strings are subject to the PostgreSQL naming conventions.
  late final pulumi.Output<List<String>> databaseRoles;
  late final pulumi.Output<String> location;
  /// Name of the resource in the form of projects/{project}/locations/{location}/cluster/{cluster}/users/{user}.
  late final pulumi.Output<String> name;
  /// Input only. Password for the user.
  late final pulumi.Output<String> password;
  late final pulumi.Output<String> project;
  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;
  /// Required. ID of the requesting object.
  late final pulumi.Output<String> userId;
  /// Optional. Type of this user.
  late final pulumi.Output<String> userType;

  /// Creates a new [UserAlloydbV1alpha].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [UserAlloydbV1alpha]. {@macro pulumi_alloydb_v1alpha_user_alloydb_v1alpha_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  UserAlloydbV1alpha(
    String name, {
    UserAlloydbV1alphaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:alloydb/v1alpha:User',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.clusterId = registerOutput<String>('clusterId');
    this.databaseRoles = registerOutput<List<String>>('databaseRoles');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.password = registerOutput<String>('password');
    this.project = registerOutput<String>('project');
    this.requestId = registerOutput<String?>('requestId');
    this.userId = registerOutput<String>('userId');
    this.userType = registerOutput<String>('userType');
  }
}
