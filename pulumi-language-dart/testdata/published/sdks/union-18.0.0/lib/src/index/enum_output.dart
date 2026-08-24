import 'package:pulumi/pulumi.dart' as pulumi;
import 'enum_output_args.dart';

class EnumOutput extends pulumi.CustomResource {
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> type;

  /// Creates a new [EnumOutput].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EnumOutput]. {@macro pulumi_index_enum_output_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EnumOutput(
    String name, {
    EnumOutputArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'union:index:EnumOutput',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '18.0.0').merge(options),
        ) {
    this.name = registerOutput<String>('name');
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [EnumOutput] resource.
  EnumOutput.reference(String urn)
    : super(
        'union:index:EnumOutput',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    this.name = registerOutput<String>('name');
    type = registerOutput<String>('type');
  }
}
