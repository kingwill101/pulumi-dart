import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_args.dart';
import 'resource_data.dart';
import 'package:pulumi_enum/index.dart' as pulumi_enum_index;

/// ResourceType is a basic resource. Use fun to set in_ using out.
class ResourceType extends pulumi.CustomResource {
  /// state will have internal data about this resource.
  late final pulumi.Output<ResourceData> data;
  /// The StringEnum value passed to externalEnum.
  late final pulumi.Output<pulumi_enum_index.StringEnum> externalEnum;
  /// Will be set to the same as in_.
  late final pulumi.Output<bool?> in_;
  /// Will be set to the opposite of in_.
  late final pulumi.Output<bool> out;

  /// Creates a new [ResourceType].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourceType]. {@macro pulumi_index_resource_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourceType(
    String name, {
    ResourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'docs:index:Resource',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '28.0.0').merge(options),
        ) {
    data = registerOutput<ResourceData>('data', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceData.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    externalEnum = registerOutput<pulumi_enum_index.StringEnum>('externalEnum', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi_enum_index.StringEnum.fromValue(guardedValue as String); });
    in_ = registerOutput<bool?>('in');
    out = registerOutput<bool>('out');
  }

  /// Creates a typed reference to an existing [ResourceType] resource.
  ResourceType.reference(String urn)
    : super(
        'docs:index:Resource',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    data = registerOutput<ResourceData>('data', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceData.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    externalEnum = registerOutput<pulumi_enum_index.StringEnum>('externalEnum', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi_enum_index.StringEnum.fromValue(guardedValue as String); });
    in_ = registerOutput<bool?>('in');
    out = registerOutput<bool>('out');
  }
}
