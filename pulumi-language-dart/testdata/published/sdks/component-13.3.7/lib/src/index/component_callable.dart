import 'package:pulumi/pulumi.dart' as pulumi;
import 'component_callable_args.dart';
import 'component_callable_identity_result.dart';
import 'component_callable_prefixed_args.dart';
import 'component_callable_prefixed_result.dart';

/// A component resource that has callable methods.
class ComponentCallable extends pulumi.ComponentResource {
  late final pulumi.Output<String?> value;

  /// Creates a new [ComponentCallable].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ComponentCallable]. {@macro pulumi_index_component_callable_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ComponentCallable(
    String name, {
    ComponentCallableArgs? args,
    pulumi.ComponentResourceOptions? options,
  }) : super(
          'component:index:ComponentCallable',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.ComponentResourceOptions(version: '13.3.7').merge(options),
          remote: true,
        ) {
    value = registerOutput<String?>('value');
  }

  /// The `identity` method of the `ComponentCallable` component resource. Returns the component's `value` unaltered.
  Future<ComponentCallableIdentityResult> identity() async {
    final deployment = pulumi.DeploymentImpl.instance as pulumi.DeploymentImpl;
    final result = await deployment.callWithResult<Map<String, dynamic>>(
      'component:index:ComponentCallable/identity',
      const <String, dynamic>{},
      self: this,
    );
    return ComponentCallableIdentityResult.fromMap(result);
  }

  /// The `prefixed` method of the `ComponentCallable` component resource. Accepts a string and returns the component's `value` prefixed with that string.
  /// [args] Arguments passed to this method call. {@macro pulumi_index_component_callable_prefixed_args_doc}
  Future<ComponentCallablePrefixedResult> prefixed({
    ComponentCallablePrefixedArgs? args,
  }) async {
    final deployment = pulumi.DeploymentImpl.instance as pulumi.DeploymentImpl;
    final result = await deployment.callWithResult<Map<String, dynamic>>(
      'component:index:ComponentCallable/prefixed',
      args?.toMap() ?? const <String, dynamic>{},
      self: this,
    );
    return ComponentCallablePrefixedResult.fromMap(result);
  }
}
