import 'package:pulumi/pulumi.dart' as pulumi;
import 'map_container_args.dart';

class MapContainer extends pulumi.CustomResource {
  late final pulumi.Output<Map<String, String>> tags;

  /// Creates a new [MapContainer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MapContainer]. {@macro pulumi_index_map_container_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MapContainer(
    String name, {
    MapContainerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'nestedobject:index:MapContainer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '1.42.0').merge(options),
        ) {
    tags = registerOutput<Map<String, String>>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [MapContainer] resource.
  MapContainer.reference(String urn)
    : super(
        'nestedobject:index:MapContainer',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    tags = registerOutput<Map<String, String>>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
