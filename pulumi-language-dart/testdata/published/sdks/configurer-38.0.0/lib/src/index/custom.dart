import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_args.dart';

/// A custom resource whose outputs echo its configured provider's `config` setting.
class Custom extends pulumi.CustomResource {
  late final pulumi.Output<String> config;
  late final pulumi.Output<String> value;

  /// Creates a new [Custom].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Custom]. {@macro pulumi_index_custom_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Custom(
    String name, {
    CustomArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'configurer:index:Custom',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '38.0.0').merge(options),
        ) {
    config = registerOutput<String>('config');
    value = registerOutput<String>('value');
  }

  /// Creates a typed reference to an existing [Custom] resource.
  Custom.reference(String urn)
    : super(
        'configurer:index:Custom',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    config = registerOutput<String>('config');
    value = registerOutput<String>('value');
  }
}
