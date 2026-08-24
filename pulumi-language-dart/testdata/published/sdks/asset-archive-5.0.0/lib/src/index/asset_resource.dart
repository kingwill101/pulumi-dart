import 'package:pulumi/pulumi.dart' as pulumi;
import 'asset_resource_args.dart';

class AssetResource extends pulumi.CustomResource {
  late final pulumi.Output<dynamic> value;

  /// Creates a new [AssetResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AssetResource]. {@macro pulumi_index_asset_resource_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AssetResource(
    String name, {
    AssetResourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'asset-archive:index:AssetResource',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '5.0.0').merge(options),
        ) {
    value = registerOutput<dynamic>('value');
  }

  /// Creates a typed reference to an existing [AssetResource] resource.
  AssetResource.reference(String urn)
    : super(
        'asset-archive:index:AssetResource',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    value = registerOutput<dynamic>('value');
  }
}
