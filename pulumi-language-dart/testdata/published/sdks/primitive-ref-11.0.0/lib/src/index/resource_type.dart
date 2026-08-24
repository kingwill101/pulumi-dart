import 'package:pulumi/pulumi.dart' as pulumi;
import 'data.dart';
import 'resource_args.dart';

class ResourceType extends pulumi.CustomResource {
  late final pulumi.Output<Data> data;

  /// Creates a new [ResourceType].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourceType]. {@macro pulumi_index_resource_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourceType(
    String name, {
    ResourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'primitive-ref:index:Resource',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '11.0.0').merge(options),
        ) {
    data = registerOutput<Data>('data', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return Data.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [ResourceType] resource.
  ResourceType.reference(String urn)
    : super(
        'primitive-ref:index:Resource',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    data = registerOutput<Data>('data', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return Data.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
