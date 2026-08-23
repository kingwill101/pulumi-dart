import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_args.dart';

class Container extends pulumi.CustomResource {
  late final pulumi.Output<List<Map<String, dynamic>>> details;
  late final pulumi.Output<List<String>> inputs;

  /// Creates a new [Container].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Container]. {@macro pulumi_index_container_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Container(
    String name, {
    ContainerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'nestedobject:index:Container',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '1.42.0').merge(options),
        ) {
    details = registerOutput<List<Map<String, dynamic>>>('details');
    inputs = registerOutput<List<String>>('inputs');
  }
}
