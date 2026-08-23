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
    tags = registerOutput<Map<String, String>>('tags');
  }
}
