import 'package:pulumi/pulumi.dart' as pulumi;
import 'subset_example_args.dart';

class SubsetExample extends pulumi.CustomResource {
  late final pulumi.Output<dynamic> unionOf;

  /// Creates a new [SubsetExample].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SubsetExample]. {@macro pulumi_index_subset_example_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SubsetExample(
    String name, {
    SubsetExampleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'discriminated-union-many:index:SubsetExample',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '49.0.0').merge(options),
        ) {
    unionOf = registerOutput<dynamic>('unionOf');
  }
}
