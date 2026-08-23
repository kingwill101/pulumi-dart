import 'package:pulumi/pulumi.dart' as pulumi;
import 'lambda_args.dart';

class Lambda extends pulumi.CustomResource {
  late final pulumi.Output<String> builtins;
  late final pulumi.Output<String> lambda;
  late final pulumi.Output<String> property;

  /// Creates a new [Lambda].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Lambda]. {@macro pulumi_module_lambda_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Lambda(
    String name, {
    LambdaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'keywords:module:Lambda',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '20.0.0').merge(options),
        ) {
    builtins = registerOutput<String>('builtins');
    lambda = registerOutput<String>('lambda');
    property = registerOutput<String>('property');
  }
}
