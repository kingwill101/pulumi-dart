import 'package:pulumi/pulumi.dart' as pulumi;
import 'my_enum.dart';
import 'resource_args.dart';

class ResourceType extends pulumi.CustomResource {
  late final pulumi.Output<MyEnum> theEnum;
  late final pulumi.Output<String> theString;

  /// Creates a new [ResourceType].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourceType]. {@macro pulumi_index_resource_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourceType(
    String name, {
    ResourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'config-enum:index:Resource',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '41.0.0').merge(options),
        ) {
    theEnum = registerOutput<MyEnum>('theEnum', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MyEnum.fromValue(guardedValue as String); });
    theString = registerOutput<String>('theString');
  }

  /// Creates a typed reference to an existing [ResourceType] resource.
  ResourceType.reference(String urn)
    : super(
        'config-enum:index:Resource',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    theEnum = registerOutput<MyEnum>('theEnum', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MyEnum.fromValue(guardedValue as String); });
    theString = registerOutput<String>('theString');
  }
}
