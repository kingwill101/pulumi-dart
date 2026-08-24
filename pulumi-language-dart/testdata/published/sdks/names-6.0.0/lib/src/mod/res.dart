import 'package:pulumi/pulumi.dart' as pulumi;
import 'res_args.dart';

class Res extends pulumi.CustomResource {
  late final pulumi.Output<bool> value;

  /// Creates a new [Res].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Res]. {@macro pulumi_mod_nested_res_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Res(
    String name, {
    ResArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'names:mod/nested:Res',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.0.0').merge(options),
        ) {
    value = registerOutput<bool>('value');
  }

  /// Creates a typed reference to an existing [Res] resource.
  Res.reference(String urn)
    : super(
        'names:mod/nested:Res',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    value = registerOutput<bool>('value');
  }
}
