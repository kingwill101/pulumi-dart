import 'package:pulumi/pulumi.dart' as pulumi;
import 'provider_args.dart';
import 'provider_identity_result.dart';
import 'provider_prefixed_args.dart';
import 'provider_prefixed_result.dart';

/// The `call` package's provider resource
class ProviderProvider extends pulumi.ProviderResource {
  late final pulumi.Output<String> value;

  /// Creates a new [ProviderProvider].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProviderProvider]. {@macro pulumi_providers_provider_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProviderProvider(
    String name, {
    ProviderArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'call',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '15.7.9').merge(options),
        ) {
    value = registerOutput<String>('value');
  }

  /// The `identity` method of the `call` package's provider. Returns the provider's `value` configuration unaltered.
  Future<ProviderIdentityResult> identity() async {
    final deployment = pulumi.DeploymentImpl.instance as pulumi.DeploymentImpl;
    final result = await deployment.callWithResult<Map<String, dynamic>>(
      'pulumi:providers:call/identity',
      const <String, dynamic>{},
      self: this,
    );
    return ProviderIdentityResult.fromMap(result);
  }

  /// The `prefixed` method of the `call` package's provider. Accepts a string and returns the provider's `value` configuration prefixed with that string.
  /// [args] Arguments passed to this method call. {@macro pulumi_providers_provider_prefixed_args_doc}
  Future<ProviderPrefixedResult> prefixed({
    ProviderPrefixedArgs? args,
  }) async {
    final deployment = pulumi.DeploymentImpl.instance as pulumi.DeploymentImpl;
    final result = await deployment.callWithResult<Map<String, dynamic>>(
      'pulumi:providers:call/prefixed',
      args?.toMap() ?? const <String, dynamic>{},
      self: this,
    );
    return ProviderPrefixedResult.fromMap(result);
  }
}
