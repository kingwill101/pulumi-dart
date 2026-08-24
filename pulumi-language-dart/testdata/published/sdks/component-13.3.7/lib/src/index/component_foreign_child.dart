import 'package:pulumi/pulumi.dart' as pulumi;
import 'component_foreign_child_args.dart';

/// A component resource that creates a child custom resource from another package (simple), using the provider passed for that package in the component's providers map.
class ComponentForeignChild extends pulumi.ComponentResource {
  late final pulumi.Output<bool?> value;

  /// Creates a new [ComponentForeignChild].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ComponentForeignChild]. {@macro pulumi_index_component_foreign_child_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ComponentForeignChild(
    String name, {
    ComponentForeignChildArgs? args,
    pulumi.ComponentResourceOptions? options,
  }) : super(
          'component:index:ComponentForeignChild',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.ComponentResourceOptions(version: '13.3.7').merge(options),
          remote: true,
        ) {
    value = registerOutput<bool?>('value');
  }
}
