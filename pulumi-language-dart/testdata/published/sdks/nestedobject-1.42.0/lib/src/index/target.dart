import 'package:pulumi/pulumi.dart' as pulumi;
import 'target_args.dart';

class Target extends pulumi.CustomResource {
  late final pulumi.Output<String> name;

  /// Creates a new [Target].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Target]. {@macro pulumi_index_target_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Target(
    String name, {
    TargetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'nestedobject:index:Target',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '1.42.0').merge(options),
        ) {
    this.name = registerOutput<String>('name');
  }

  /// Creates a typed reference to an existing [Target] resource.
  Target.reference(String urn)
    : super(
        'nestedobject:index:Target',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    this.name = registerOutput<String>('name');
  }
}
