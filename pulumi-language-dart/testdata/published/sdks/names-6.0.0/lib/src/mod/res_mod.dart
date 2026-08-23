import 'package:pulumi/pulumi.dart' as pulumi;
import 'res_mod_args.dart';

class ResMod extends pulumi.CustomResource {
  late final pulumi.Output<bool> value;

  /// Creates a new [ResMod].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResMod]. {@macro pulumi_mod_res_mod_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResMod(
    String name, {
    ResModArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'names:mod:Res',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.0.0').merge(options),
        ) {
    value = registerOutput<bool>('value');
  }
}
