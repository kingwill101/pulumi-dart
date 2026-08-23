import 'package:pulumi/pulumi.dart' as pulumi;
import 'res_resource_args.dart';

class ResResource extends pulumi.CustomResource {
  late final pulumi.Output<bool> value;

  /// Creates a new [ResResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResResource]. {@macro pulumi_index_res_resource_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResResource(
    String name, {
    ResResourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'names:index:ResResource',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.0.0').merge(options),
        ) {
    value = registerOutput<bool>('value');
  }
}
