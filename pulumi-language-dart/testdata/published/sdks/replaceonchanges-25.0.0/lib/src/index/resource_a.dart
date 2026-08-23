import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_aargs.dart';

class ResourceA extends pulumi.CustomResource {
  late final pulumi.Output<bool?> replaceProp;
  late final pulumi.Output<bool> value;

  /// Creates a new [ResourceA].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourceA]. {@macro pulumi_index_resource_aargs_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourceA(
    String name, {
    ResourceAArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'replaceonchanges:index:ResourceA',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '25.0.0', replaceOnChanges: ['replaceProp']).merge(options),
        ) {
    replaceProp = registerOutput<bool?>('replaceProp');
    value = registerOutput<bool>('value');
  }
}
