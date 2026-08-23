import 'package:pulumi/pulumi.dart' as pulumi;
import 'simple_args.dart';

class Simple extends pulumi.ComponentResource {
  late final pulumi.Output<bool?> value;

  /// Creates a new [Simple].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Simple]. {@macro pulumi_index_simple_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Simple(
    String name, {
    SimpleArgs? args,
    pulumi.ComponentResourceOptions? options,
  }) : super(
          'conformance-component:index:Simple',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.ComponentResourceOptions(version: '22.0.0').merge(options),
          remote: true,
        ) {
    value = registerOutput<bool?>('value');
  }
}
