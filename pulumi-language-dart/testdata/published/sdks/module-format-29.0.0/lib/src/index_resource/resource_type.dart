import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_args.dart';
import 'resource_call_args.dart';
import 'resource_call_result.dart';

class ResourceType extends pulumi.CustomResource {
  late final pulumi.Output<String> text;

  /// Creates a new [ResourceType].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourceType]. {@macro pulumi_index_resource_resource_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourceType(
    String name, {
    ResourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'module-format:index_Resource:Resource',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '29.0.0').merge(options),
        ) {
    text = registerOutput<String>('text');
  }

  /// [args] Arguments passed to this method call. {@macro pulumi_index_resource_resource_call_args_doc}
  Future<ResourceCallResult> call({
    ResourceCallArgs? args,
  }) async {
    final deployment = pulumi.DeploymentImpl.instance as pulumi.DeploymentImpl;
    final result = await deployment.callWithResult<Map<String, dynamic>>(
      'module-format:index_Resource:Resource/call',
      args?.toMap() ?? const <String, dynamic>{},
      self: this,
    );
    return ResourceCallResult.fromMap(result);
  }

  /// Creates a typed reference to an existing [ResourceType] resource.
  ResourceType.reference(String urn)
    : super(
        'module-format:index_Resource:Resource',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    text = registerOutput<String>('text');
  }
}
