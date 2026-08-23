import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_tag_args.dart';

/// Adds a new user-defined tag to a Pulumi ESC environment. Tags are key-value pairs that provide contextual metadata for organizing and searching environments (e.g., region=us-east-1, team=platform). The tag name and value are provided in the request body. Returns the created EnvironmentTag on success. Returns 409 if a tag with the same name already exists on the environment.
class EnvironmentTag extends pulumi.CustomResource {
  /// The timestamp when the tag was created.
  late final pulumi.Output<String> created;
  /// The login name of the user who last edited the tag.
  late final pulumi.Output<String> editorLogin;
  /// The display name of the user who last edited the tag.
  late final pulumi.Output<String> editorName;
  /// The timestamp when the tag was last modified.
  late final pulumi.Output<String> modified;
  /// The name of the tag.
  late final pulumi.Output<String> name;
  /// The value of the tag.
  late final pulumi.Output<String> value;

  /// Creates a new [EnvironmentTag].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EnvironmentTag]. {@macro pulumi_api_esc_environment_tag_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EnvironmentTag(
    String name, {
    EnvironmentTagArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'pulumiservice:api/esc:EnvironmentTag',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    created = registerOutput<String>('created');
    editorLogin = registerOutput<String>('editorLogin');
    editorName = registerOutput<String>('editorName');
    modified = registerOutput<String>('modified');
    this.name = registerOutput<String>('name');
    value = registerOutput<String>('value');
  }
}
