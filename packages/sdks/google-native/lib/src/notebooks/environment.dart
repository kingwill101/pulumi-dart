import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_image_response.dart';
import 'environment_args.dart';
import 'vm_image_response.dart';

/// Creates a new Environment.
/// Auto-naming is currently not supported for this resource.
class Environment extends pulumi.CustomResource {
  /// Use a container image to start the notebook instance.
  late final pulumi.Output<ContainerImageResponse> containerImage;
  /// The time at which this environment was created.
  late final pulumi.Output<String> createTime;
  /// A brief description of this environment.
  late final pulumi.Output<String> description;
  /// Display name of this environment for the UI.
  late final pulumi.Output<String> displayName;
  /// Required. User-defined unique ID of this environment. The `environment_id` must be 1 to 63 characters long and contain only lowercase letters, numeric characters, and dashes. The first character must be a lowercase letter and the last character cannot be a dash.
  late final pulumi.Output<String> environmentId;
  late final pulumi.Output<String> location;
  /// Name of this environment. Format: `projects/{project_id}/locations/{location}/environments/{environment_id}`
  late final pulumi.Output<String> name;
  /// Path to a Bash script that automatically runs after a notebook instance fully boots up. The path must be a URL or Cloud Storage path. Example: `"gs://path-to-file/file-name"`
  late final pulumi.Output<String> postStartupScript;
  late final pulumi.Output<String> project;
  /// Use a Compute Engine VM image to start the notebook instance.
  late final pulumi.Output<VmImageResponse> vmImage;

  /// Creates a new [Environment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Environment]. {@macro pulumi_notebooks_v1_environment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Environment(
    String name, {
    EnvironmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:notebooks/v1:Environment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    containerImage = registerOutput<ContainerImageResponse>('containerImage', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ContainerImageResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String>('description');
    displayName = registerOutput<String>('displayName');
    environmentId = registerOutput<String>('environmentId');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    postStartupScript = registerOutput<String>('postStartupScript');
    project = registerOutput<String>('project');
    vmImage = registerOutput<VmImageResponse>('vmImage', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VmImageResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
