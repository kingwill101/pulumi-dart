import 'package:pulumi/pulumi.dart' as pulumi;
import 'res_array_args.dart';

class ResArray extends pulumi.CustomResource {
  late final pulumi.Output<bool> value;

  /// Creates a new [ResArray].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResArray]. {@macro pulumi_index_res_array_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResArray(
    String name, {
    ResArrayArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'names:index:ResArray',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.0.0').merge(options),
        ) {
    value = registerOutput<bool>('value');
  }

  /// Creates a typed reference to an existing [ResArray] resource.
  ResArray.reference(String urn)
    : super(
        'names:index:ResArray',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    value = registerOutput<bool>('value');
  }
}
