import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_cloudresourcemanager_v3_args.dart';

/// Request that a new project be created. The result is an `Operation` which can be used to track the creation process. This process usually takes a few seconds, but can sometimes take much longer. The tracking `Operation` is automatically deleted after a few hours, so there is no need to call `DeleteOperation`.
/// Auto-naming is currently not supported for this resource.
class ProjectCloudresourcemanagerV3 extends pulumi.CustomResource {
  /// Creation time.
  late final pulumi.Output<String> createTime;
  /// The time at which this resource was requested for deletion.
  late final pulumi.Output<String> deleteTime;
  /// Optional. A user-assigned display name of the project. When present it must be between 4 to 30 characters. Allowed characters are: lowercase and uppercase letters, numbers, hyphen, single-quote, double-quote, space, and exclamation point. Example: `My Project`
  late final pulumi.Output<String> displayName;
  /// A checksum computed by the server based on the current value of the Project resource. This may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  late final pulumi.Output<String> etag;
  /// Optional. The labels associated with this project. Label keys must be between 1 and 63 characters long and must conform to the following regular expression: \[a-z\](\[-a-z0-9\]*\[a-z0-9\])?. Label values must be between 0 and 63 characters long and must conform to the regular expression (\[a-z\](\[-a-z0-9\]*\[a-z0-9\])?)?. No more than 64 labels can be associated with a given resource. Clients should store labels in a representation such as JSON that does not depend on specific characters being disallowed. Example: `"myBusinessDimension" : "businessValue"`
  late final pulumi.Output<Map<String, String>> labels;
  /// The unique resource name of the project. It is an int64 generated number prefixed by "projects/". Example: `projects/415104041262`
  late final pulumi.Output<String> name;
  /// Optional. A reference to a parent Resource. eg., `organizations/123` or `folders/876`.
  late final pulumi.Output<String> parent;
  /// Immutable. The unique, user-assigned id of the project. It must be 6 to 30 lowercase ASCII letters, digits, or hyphens. It must start with a letter. Trailing hyphens are prohibited. Example: `tokyo-rain-123`
  late final pulumi.Output<String> projectId;
  /// The project lifecycle state.
  late final pulumi.Output<String> state;
  /// The most recent time this resource was modified.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [ProjectCloudresourcemanagerV3].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProjectCloudresourcemanagerV3]. {@macro pulumi_cloudresourcemanager_v3_project_cloudresourcemanager_v3_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProjectCloudresourcemanagerV3(
    String name, {
    ProjectCloudresourcemanagerV3Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:cloudresourcemanager/v3:Project',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deleteTime = registerOutput<String>('deleteTime');
    displayName = registerOutput<String>('displayName');
    etag = registerOutput<String>('etag');
    labels = registerOutput<Map<String, String>>('labels');
    this.name = registerOutput<String>('name');
    parent = registerOutput<String>('parent');
    projectId = registerOutput<String>('projectId');
    state = registerOutput<String>('state');
    updateTime = registerOutput<String>('updateTime');
  }
}
