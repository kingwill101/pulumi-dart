import 'package:pulumi/pulumi.dart' as pulumi;
import 'string_resource_args.dart';

class StringResource extends pulumi.CustomResource {
  late final pulumi.Output<String> text;

  /// Creates a new [StringResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StringResource]. {@macro pulumi_index_string_resource_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StringResource(
    String name, {
    StringResourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'simple-invoke-with-scalar-return:index:StringResource',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '17.0.0').merge(options),
        ) {
    text = registerOutput<String>('text');
  }

  /// Creates a typed reference to an existing [StringResource] resource.
  StringResource.reference(String urn)
    : super(
        'simple-invoke-with-scalar-return:index:StringResource',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    text = registerOutput<String>('text');
  }
}
