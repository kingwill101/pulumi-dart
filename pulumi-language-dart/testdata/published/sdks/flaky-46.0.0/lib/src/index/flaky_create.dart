import 'package:pulumi/pulumi.dart' as pulumi;

class FlakyCreate extends pulumi.CustomResource {
  /// Creates a new [FlakyCreate].
  /// [name] The Pulumi resource name.
  /// [args] The raw input arguments for this resource.
  /// [options] Resource options controlling this resource's behavior.
  FlakyCreate(
    String name, {
    Map<String, dynamic>? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'flaky:index:FlakyCreate',
          name,
          pulumi.Input.mapToInputs(args ?? const {}),
          pulumi.CustomResourceOptions(version: '46.0.0').merge(options),
        );
}
