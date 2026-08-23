import 'package:pulumi/pulumi.dart' as pulumi;
import 'configurer_args.dart';
import 'configurer_nested_plain_provider_result.dart';

/// A component that internally constructs a Provider configured with `providerConfig` and exposes it via methods.
class Configurer extends pulumi.ComponentResource {
  late final pulumi.Output<String?> providerConfig;

  /// Creates a new [Configurer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Configurer]. {@macro pulumi_index_configurer_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Configurer(
    String name, {
    ConfigurerArgs? args,
    pulumi.ComponentResourceOptions? options,
  }) : super(
          'configurer:index:Configurer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.ComponentResourceOptions(version: '38.0.0').merge(options),
          remote: true,
        ) {
    providerConfig = registerOutput<String?>('providerConfig');
  }

  /// Returns a plain object containing a provider reference and an integer.
  Future<ConfigurerNestedPlainProviderResult> nestedPlainProvider() async {
    final deployment = pulumi.DeploymentImpl.instance as pulumi.DeploymentImpl;
    final result = await deployment.callWithResult<Map<String, dynamic>>(
      'configurer:index:Configurer/nestedPlainProvider',
      const <String, dynamic>{},
      self: this,
    );
    return ConfigurerNestedPlainProviderResult.fromMap(result);
  }

  /// Returns the provider constructed by the component as a single-value plain return.
  Future<dynamic> plainProvider() async {
    final deployment = pulumi.DeploymentImpl.instance as pulumi.DeploymentImpl;
    return await deployment.callWithResult<dynamic>(
      'configurer:index:Configurer/plainProvider',
      const <String, dynamic>{},
      self: this,
      unwrapSingleReturn: true,
    );
  }

  /// Returns a plain integer (42) as a single-value plain return.
  Future<int> plainValue() async {
    final deployment = pulumi.DeploymentImpl.instance as pulumi.DeploymentImpl;
    return await deployment.callWithResult<int>(
      'configurer:index:Configurer/plainValue',
      const <String, dynamic>{},
      self: this,
      unwrapSingleReturn: true,
    );
  }
}
