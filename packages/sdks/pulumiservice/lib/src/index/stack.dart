import 'package:pulumi/pulumi.dart' as pulumi;
import 'stack_args.dart';

/// A stack is a collection of resources that share a common lifecycle. Stacks are uniquely identified by their name and the project they belong to.
class Stack extends pulumi.CustomResource {
  /// Optional. Flag indicating whether to delete the stack even if it still contains resources.
  late final pulumi.Output<bool?> forceDestroy;

  /// The name of the organization.
  late final pulumi.Output<String> organizationName;

  /// The name of the project.
  late final pulumi.Output<String> projectName;

  /// The name of the stack.
  late final pulumi.Output<String> stackName;

  /// Creates a new [Stack].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Stack]. {@macro pulumi_index_stack_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Stack(String name, {StackArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'pulumiservice:index:Stack',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    forceDestroy = registerOutput<bool?>('forceDestroy');
    organizationName = registerOutput<String>('organizationName');
    projectName = registerOutput<String>('projectName');
    stackName = registerOutput<String>('stackName');
  }
}
