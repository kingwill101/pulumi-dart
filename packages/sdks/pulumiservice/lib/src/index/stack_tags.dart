import 'package:pulumi/pulumi.dart' as pulumi;
import 'stack_tags_args.dart';

/// Manages a set of stack tags as a single resource via a `tags` map, instead of one `StackTag` per key — useful for YAML programs.
///
/// Only tags declared in `tags` are managed; tags added out-of-band (CLI, pulumibot, a singular `StackTag` resource) are left alone. Tag values are immutable in Pulumi Cloud, so a value change is implemented as delete-and-recreate.
///
/// Importing with ID `{organization}/{project}/{stack}/tags` adopts every tag currently on the stack; declare `tags` explicitly after import so subsequent updates match your intent. See the [registry docs](https://www.pulumi.com/registry/packages/pulumiservice/api-docs/stacktags/) for full usage and examples.
class StackTags extends pulumi.CustomResource {
  /// Organization name.
  late final pulumi.Output<String> organization;
  /// Project name.
  late final pulumi.Output<String> project;
  /// Stack name.
  late final pulumi.Output<String> stack;
  /// Map of tag names to values. Each entry represents a stack tag.
  late final pulumi.Output<Map<String, String>> tags;

  /// Creates a new [StackTags].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StackTags]. {@macro pulumi_index_stack_tags_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StackTags(
    String name, {
    StackTagsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'pulumiservice:index:StackTags',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    organization = registerOutput<String>('organization');
    project = registerOutput<String>('project');
    stack = registerOutput<String>('stack');
    tags = registerOutput<Map<String, String>>('tags');
  }
}
