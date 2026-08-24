import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_bargs.dart';

class ResourceB extends pulumi.CustomResource {
  late final pulumi.Output<bool> value;

  /// Creates a new [ResourceB].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourceB]. {@macro pulumi_index_resource_bargs_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourceB(
    String name, {
    ResourceBArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'replaceonchanges:index:ResourceB',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '25.0.0').merge(options),
        ) {
    value = registerOutput<bool>('value');
  }

  /// Creates a typed reference to an existing [ResourceB] resource.
  ResourceB.reference(String urn)
    : super(
        'replaceonchanges:index:ResourceB',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    value = registerOutput<bool>('value');
  }
}
