import 'package:pulumi/pulumi.dart' as pulumi;
import 'component_custom_ref_output_args.dart';

/// A component resource that accepts an input that is used to create a child custom resource. A reference to this child custom resource is returned.
class ComponentCustomRefOutput extends pulumi.ComponentResource {
  late final pulumi.Output<pulumi.CustomResource?> ref;
  late final pulumi.Output<String?> value;

  /// Creates a new [ComponentCustomRefOutput].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ComponentCustomRefOutput]. {@macro pulumi_index_component_custom_ref_output_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ComponentCustomRefOutput(
    String name, {
    ComponentCustomRefOutputArgs? args,
    pulumi.ComponentResourceOptions? options,
  }) : super(
          'component:index:ComponentCustomRefOutput',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.ComponentResourceOptions(version: '13.3.7').merge(options),
          remote: true,
        ) {
    ref = registerOutput<pulumi.CustomResource?>('ref');
    value = registerOutput<String?>('value');
  }
}
