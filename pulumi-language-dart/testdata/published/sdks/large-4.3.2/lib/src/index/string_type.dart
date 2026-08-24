import 'package:pulumi/pulumi.dart' as pulumi;
import 'string_args.dart';

class StringType extends pulumi.CustomResource {
  late final pulumi.Output<String> value;

  /// Creates a new [StringType].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StringType]. {@macro pulumi_index_string_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StringType(
    String name, {
    StringArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'large:index:String',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '4.3.2').merge(options),
        ) {
    value = registerOutput<String>('value');
  }

  /// Creates a typed reference to an existing [StringType] resource.
  StringType.reference(String urn)
    : super(
        'large:index:String',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    value = registerOutput<String>('value');
  }
}
