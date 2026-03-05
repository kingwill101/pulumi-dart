import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_version_tag_args.dart';

/// A tag on a specific revision of an environment.
class EnvironmentVersionTag extends pulumi.CustomResource {
  /// Environment name.
  late final pulumi.Output<String> environment;
  /// Organization name.
  late final pulumi.Output<String> organization;
  /// Project name.
  late final pulumi.Output<String> project;
  /// Revision number.
  late final pulumi.Output<int> revision;
  /// Tag name.
  late final pulumi.Output<String> tagName;

  /// Creates a new [EnvironmentVersionTag].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EnvironmentVersionTag]. {@macro pulumi_index_environment_version_tag_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EnvironmentVersionTag(
    String name, {
    EnvironmentVersionTagArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'pulumiservice:index:EnvironmentVersionTag',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    environment = registerOutput<String>('environment');
    organization = registerOutput<String>('organization');
    project = registerOutput<String>('project');
    revision = registerOutput<int>('revision');
    tagName = registerOutput<String>('tagName');
  }
}
