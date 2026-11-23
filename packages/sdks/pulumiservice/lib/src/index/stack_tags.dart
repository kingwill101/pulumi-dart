import 'package:pulumi/pulumi.dart' as pulumi;
import 'stack_tags_args.dart';

/// Manages a set of stack tags as a single resource via a `tags` map, instead of one `StackTag` per key — useful for YAML programs.
///
/// Only tags declared in `tags` are managed; tags added out-of-band (CLI, pulumibot, a singular `StackTag` resource) are left alone. Tag values are immutable in Pulumi Cloud, so a value change is implemented as delete-and-recreate.
///
/// ## Import
///
/// This resource can be imported using its `id`, which has the format `{organization}/{project}/{stack}/tags`, e.g.,
///
/// ```sh
///  $ pulumi import pulumiservice:index:StackTags my-stack-tags my-org/my-project/my-stack/tags
/// ```
///
/// The ID ends with the literal segment `tags`. Import adopts every tag currently on the stack; declare `tags` explicitly after import so subsequent updates match your intent.
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
          pulumi.CustomResourceOptions(replaceOnChanges: ['organization', 'project', 'stack']).merge(options),
        ) {
    organization = registerOutput<String>('organization');
    project = registerOutput<String>('project');
    stack = registerOutput<String>('stack');
    tags = registerOutput<Map<String, String>>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [StackTags] resource.
  StackTags.reference(String urn)
    : super(
        'pulumiservice:index:StackTags',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    organization = registerOutput<String>('organization');
    project = registerOutput<String>('project');
    stack = registerOutput<String>('stack');
    tags = registerOutput<Map<String, String>>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
