import 'package:pulumi/pulumi.dart' as pulumi;
import 'output_item.dart';
import 'some_resource_args.dart';

class SomeResource extends pulumi.CustomResource {
  late final pulumi.Output<Map<String, List<OutputItem>>> theOutput;

  /// Creates a new [SomeResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SomeResource]. {@macro pulumi_cool_module_some_resource_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SomeResource(
    String name, {
    SomeResourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'snake_names:cool_module:some_resource',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '33.0.0').merge(options),
        ) {
    theOutput = registerOutput<Map<String, List<OutputItem>>>('the_output', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<List<OutputItem>>(guardedValue, (value) => pulumi.Input.decodeList<OutputItem>(value, (value) => OutputItem.fromMap((value as Map).cast<String, dynamic>()))); });
  }
}
