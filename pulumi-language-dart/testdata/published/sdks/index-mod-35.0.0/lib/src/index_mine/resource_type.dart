import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_args.dart';
import 'resource_call_args.dart';
import 'resource_call_result.dart';

class ResourceType extends pulumi.CustomResource {
  late final pulumi.Output<String> text;

  /// Creates a new [ResourceType].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourceType]. {@macro pulumi_index_mine_nested_resource_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourceType(
    String name, {
    ResourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'index-mod:indexMine/nested:Resource',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '35.0.0').merge(options),
        ) {
    text = registerOutput<String>('text');
  }

  /// [args] Arguments passed to this method call. {@macro pulumi_index_mine_nested_resource_call_args_doc}
  Future<ResourceCallResult> call({
    ResourceCallArgs? args,
  }) async {
    final deployment = pulumi.DeploymentImpl.instance as pulumi.DeploymentImpl;
    final result = await deployment.callWithResult<Map<String, dynamic>>(
      'index-mod:indexMine/nested:Resource/call',
      args?.toMap() ?? const <String, dynamic>{},
      self: this,
    );
    return ResourceCallResult.fromMap(result);
  }

  /// Creates a typed reference to an existing [ResourceType] resource.
  ResourceType.reference(String urn)
    : super(
        'index-mod:indexMine/nested:Resource',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    text = registerOutput<String>('text');
  }
}
