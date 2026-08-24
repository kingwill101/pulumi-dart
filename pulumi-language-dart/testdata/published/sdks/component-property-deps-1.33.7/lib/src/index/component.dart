import 'package:pulumi/pulumi.dart' as pulumi;
import 'component_args.dart';
import 'component_refs_args.dart';
import 'component_refs_result.dart';

/// A component resource that accepts a list of resources. The construct request's property dependencies are returned as an output.
class Component extends pulumi.ComponentResource {
  late final pulumi.Output<Map<String, List<String>>?> propertyDeps;

  /// Creates a new [Component].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Component]. {@macro pulumi_index_component_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Component(
    String name, {
    ComponentArgs? args,
    pulumi.ComponentResourceOptions? options,
  }) : super(
          'component-property-deps:index:Component',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.ComponentResourceOptions(version: '1.33.7').merge(options),
          remote: true,
        ) {
    propertyDeps = registerOutput<Map<String, List<String>>?>('propertyDeps', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<List<String>>(guardedValue, (value) => (value as List).cast<String>()); });
  }

  /// The `refs` method of the `Component` component resource. Returns the call request's property dependencies.
  /// [args] Arguments passed to this method call. {@macro pulumi_index_component_refs_args_doc}
  Future<ComponentRefsResult> refs({
    ComponentRefsArgs? args,
  }) async {
    final deployment = pulumi.DeploymentImpl.instance as pulumi.DeploymentImpl;
    final result = await deployment.callWithResult<Map<String, dynamic>>(
      'component-property-deps:index:Component/refs',
      args?.toMap() ?? const <String, dynamic>{},
      self: this,
    );
    return ComponentRefsResult.fromMap(result);
  }
}
