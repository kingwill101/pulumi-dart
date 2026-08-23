import 'package:pulumi/pulumi.dart' as pulumi;
import 'some_resource_args.dart';

class SomeResource extends pulumi.CustomResource {
  late final pulumi.Output<String?> resourceName;
  late final pulumi.Output<bool> theOutput;

  /// Creates a new [SomeResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SomeResource]. {@macro pulumi_cool_module_some_resource_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SomeResource(
    String name, {
    SomeResourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'camelNames:CoolModule:SomeResource',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '19.0.0').merge(options),
        ) {
    resourceName = registerOutput<String?>('resourceName');
    theOutput = registerOutput<bool>('theOutput');
  }
}
