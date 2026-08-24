import 'package:pulumi/pulumi.dart' as pulumi;

class BuiltinInfo extends pulumi.ComponentResource {
  late final pulumi.Output<String?> organization;
  late final pulumi.Output<String?> project;
  late final pulumi.Output<String?> stack;

  /// Creates a new [BuiltinInfo].
  /// [name] The Pulumi resource name.
  /// [options] Resource options controlling this resource's behavior.
  BuiltinInfo(
    String name, {
    pulumi.ComponentResourceOptions? options,
  }) : super(
          'builtin-info-component:index:BuiltinInfo',
          name,
          null,
          pulumi.ComponentResourceOptions(version: '37.0.0').merge(options),
          remote: true,
        ) {
    organization = registerOutput<String?>('organization');
    project = registerOutput<String?>('project');
    stack = registerOutput<String?>('stack');
  }
}
