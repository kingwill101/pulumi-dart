import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_call_index_mine_args.dart';
import 'resource_call_index_mine_result.dart';
import 'resource_index_mine_args.dart';

class ResourceIndexMine extends pulumi.CustomResource {
  late final pulumi.Output<String> text;

  /// Creates a new [ResourceIndexMine].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourceIndexMine]. {@macro pulumi_index_mine_resource_index_mine_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourceIndexMine(
    String name, {
    ResourceIndexMineArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'index-mod:indexMine:Resource',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '35.0.0').merge(options),
        ) {
    text = registerOutput<String>('text');
  }

  /// [args] Arguments passed to this method call. {@macro pulumi_index_mine_resource_call_index_mine_args_doc}
  Future<ResourceCallIndexMineResult> call({
    ResourceCallIndexMineArgs? args,
  }) async {
    final deployment = pulumi.DeploymentImpl.instance as pulumi.DeploymentImpl;
    final result = await deployment.callWithResult<Map<String, dynamic>>(
      'index-mod:indexMine:Resource/call',
      args?.toMap() ?? const <String, dynamic>{},
      self: this,
    );
    return ResourceCallIndexMineResult.fromMap(result);
  }
}
