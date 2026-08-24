import 'package:pulumi/pulumi.dart' as pulumi;
import 'component_args.dart';

class Component extends pulumi.ComponentResource {
  late final pulumi.Output<String?> label;

  /// Creates a new [Component].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Component]. {@macro pulumi_index_component_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Component(
    String name, {
    ComponentArgs? args,
    pulumi.ComponentResourceOptions? options,
  }) : super(
          'plaincomponent:index:Component',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.ComponentResourceOptions(version: '36.0.0').merge(options),
          remote: true,
        ) {
    label = registerOutput<String?>('label');
  }
}
