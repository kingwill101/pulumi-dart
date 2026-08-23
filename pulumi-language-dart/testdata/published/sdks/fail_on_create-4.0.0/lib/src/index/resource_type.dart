import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_args.dart';

class ResourceType extends pulumi.CustomResource {
  late final pulumi.Output<bool> value;

  /// Creates a new [ResourceType].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourceType]. {@macro pulumi_index_resource_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourceType(
    String name, {
    ResourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'fail_on_create:index:Resource',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '4.0.0').merge(options),
        ) {
    value = registerOutput<bool>('value');
  }
}
