import 'package:pulumi/pulumi.dart' as pulumi;
import 'res_list_args.dart';

class ResList extends pulumi.CustomResource {
  late final pulumi.Output<bool> value;

  /// Creates a new [ResList].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResList]. {@macro pulumi_index_res_list_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResList(
    String name, {
    ResListArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'names:index:ResList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.0.0').merge(options),
        ) {
    value = registerOutput<bool>('value');
  }

  /// Creates a typed reference to an existing [ResList] resource.
  ResList.reference(String urn)
    : super(
        'names:index:ResList',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    value = registerOutput<bool>('value');
  }
}
