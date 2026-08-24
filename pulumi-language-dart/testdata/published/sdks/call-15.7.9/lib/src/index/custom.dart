import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_args.dart';
import 'custom_provider_value_result.dart';

/// A custom resource that supports method calls
class Custom extends pulumi.CustomResource {
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
          'call:index:Custom',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '15.7.9').merge(options),
        ) {
    value = registerOutput<String>('value');
  }

  /// The `providerValue` method of the `call` package's Custom resource. Returns the resource's provider's `value` and the resource's `value` concatenated.
  Future<CustomProviderValueResult> providerValue() async {
    final deployment = pulumi.DeploymentImpl.instance as pulumi.DeploymentImpl;
    final result = await deployment.callWithResult<Map<String, dynamic>>(
      'call:index:Custom/providerValue',
      const <String, dynamic>{},
      self: this,
    );
    return CustomProviderValueResult.fromMap(result);
  }

  /// Creates a typed reference to an existing [Custom] resource.
  Custom.reference(String urn)
    : super(
        'call:index:Custom',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    value = registerOutput<String>('value');
  }
}
