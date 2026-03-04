import 'package:pulumi/pulumi.dart' as pulumi;
import 'target_project_vmmigration_v1alpha1_args.dart';

/// Creates a new TargetProject in a given project. NOTE: TargetProject is a global resource; hence the only supported value for location is `global`.
/// Auto-naming is currently not supported for this resource.
class TargetProjectVmmigrationV1alpha1 extends pulumi.CustomResource {
  /// The time this target project resource was created (not related to when the Compute Engine project it points to was created).
  late final pulumi.Output<String> createTime;

  /// The target project's description.
  late final pulumi.Output<String> description;
  late final pulumi.Output<String> location;

  /// The name of the target project.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;

  /// Required. The target_project identifier.
  late final pulumi.Output<String> targetProjectId;

  /// The last time the target project resource was updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [TargetProjectVmmigrationV1alpha1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TargetProjectVmmigrationV1alpha1]. {@macro pulumi_vmmigration_v1alpha1_target_project_vmmigration_v1alpha1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TargetProjectVmmigrationV1alpha1(
    String name, {
    TargetProjectVmmigrationV1alpha1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:vmmigration/v1alpha1:TargetProject',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String>('description');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    requestId = registerOutput<String?>('requestId');
    targetProjectId = registerOutput<String>('targetProjectId');
    updateTime = registerOutput<String>('updateTime');
  }
}
