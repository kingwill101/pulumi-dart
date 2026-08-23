import 'package:pulumi/pulumi.dart' as pulumi;
import 'component_custom_ref_input_output_args.dart';

/// A component resource that accepts a reference to a custom resource. The input resource's `value` is used to create a child custom resource inside the component, before a reference to this child is returned.
class ComponentCustomRefInputOutput extends pulumi.ComponentResource {
  late final pulumi.Output<pulumi.CustomResource?> inputRef;
  late final pulumi.Output<pulumi.CustomResource?> outputRef;

  /// Creates a new [ComponentCustomRefInputOutput].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ComponentCustomRefInputOutput]. {@macro pulumi_index_component_custom_ref_input_output_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ComponentCustomRefInputOutput(
    String name, {
    ComponentCustomRefInputOutputArgs? args,
    pulumi.ComponentResourceOptions? options,
  }) : super(
          'component:index:ComponentCustomRefInputOutput',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.ComponentResourceOptions(version: '13.3.7').merge(options),
          remote: true,
        ) {
    inputRef = registerOutput<pulumi.CustomResource?>('inputRef');
    outputRef = registerOutput<pulumi.CustomResource?>('outputRef');
  }
}
