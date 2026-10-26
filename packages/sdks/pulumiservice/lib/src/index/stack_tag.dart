import 'package:pulumi/pulumi.dart' as pulumi;
import 'stack_tag_args.dart';

/// Stacks have associated metadata in the form of tags. Each tag consists of a name and value.
class StackTag extends pulumi.CustomResource {
  /// Name of the tag. The 'key' part of the key=value pair
  late final pulumi.Output<String> name;
  /// Organization name.
  late final pulumi.Output<String> organization;
  /// Project name.
  late final pulumi.Output<String> project;
  /// Stack name.
  late final pulumi.Output<String> stack;
  /// Value of the tag. The 'value' part of the key=value pair
  late final pulumi.Output<String> value;

  /// Creates a new [StackTag].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StackTag]. {@macro pulumi_index_stack_tag_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StackTag(
    String name, {
    StackTagArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'pulumiservice:index:StackTag',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(replaceOnChanges: ['name', 'organization', 'project', 'stack', 'value']).merge(options),
        ) {
    this.name = registerOutput<String>('name');
    organization = registerOutput<String>('organization');
    project = registerOutput<String>('project');
    stack = registerOutput<String>('stack');
    value = registerOutput<String>('value');
  }

  /// Creates a typed reference to an existing [StackTag] resource.
  StackTag.reference(String urn)
    : super(
        'pulumiservice:index:StackTag',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    this.name = registerOutput<String>('name');
    organization = registerOutput<String>('organization');
    project = registerOutput<String>('project');
    stack = registerOutput<String>('stack');
    value = registerOutput<String>('value');
  }
}
