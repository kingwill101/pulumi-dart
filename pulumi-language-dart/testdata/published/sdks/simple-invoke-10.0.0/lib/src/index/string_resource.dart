import 'package:pulumi/pulumi.dart' as pulumi;
import 'string_resource_args.dart';

class StringResource extends pulumi.CustomResource {
  late final pulumi.Output<String> text;

  /// Creates a new [StringResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StringResource]. {@macro pulumi_index_string_resource_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StringResource(
    String name, {
    StringResourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'simple-invoke:index:StringResource',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    text = registerOutput<String>('text');
  }
}
