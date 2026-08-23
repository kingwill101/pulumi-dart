import 'package:pulumi/pulumi.dart' as pulumi;
import 'res_map_args.dart';

class ResMap extends pulumi.CustomResource {
  late final pulumi.Output<bool> value;

  /// Creates a new [ResMap].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResMap]. {@macro pulumi_index_res_map_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResMap(
    String name, {
    ResMapArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'names:index:ResMap',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    value = registerOutput<bool>('value');
  }
}
