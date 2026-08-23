import 'package:pulumi/pulumi.dart' as pulumi;
import 'another_resource_args.dart';

class AnotherResource extends pulumi.CustomResource {
  late final pulumi.Output<String> theInput;

  /// Creates a new [AnotherResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AnotherResource]. {@macro pulumi_cool_module_another_resource_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AnotherResource(
    String name, {
    AnotherResourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'snake_names:cool_module:another_resource',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '33.0.0').merge(options),
        ) {
    theInput = registerOutput<String>('the_input');
  }
}
