import 'package:pulumi/pulumi.dart' as pulumi;
import 'some_resource_args.dart';

class SomeResource extends pulumi.CustomResource {
  late final pulumi.Output<String> builtins;
  late final pulumi.Output<String> lambda;
  late final pulumi.Output<String> property;

  /// Creates a new [SomeResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SomeResource]. {@macro pulumi_index_some_resource_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SomeResource(
    String name, {
    SomeResourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'keywords:index:SomeResource',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '20.0.0').merge(options),
        ) {
    builtins = registerOutput<String>('builtins');
    lambda = registerOutput<String>('lambda');
    property = registerOutput<String>('property');
  }

  /// Creates a typed reference to an existing [SomeResource] resource.
  SomeResource.reference(String urn)
    : super(
        'keywords:index:SomeResource',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    builtins = registerOutput<String>('builtins');
    lambda = registerOutput<String>('lambda');
    property = registerOutput<String>('property');
  }
}
