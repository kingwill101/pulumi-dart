import 'package:pulumi/pulumi.dart' as pulumi;
import 'sink_args.dart';
import 'package:pulumi_enum/index.dart' as pulumi_enum_index;

class Sink extends pulumi.CustomResource {
  late final pulumi.Output<pulumi_enum_index.StringEnum?> stringEnum;

  /// Creates a new [Sink].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Sink]. {@macro pulumi_index_sink_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Sink(
    String name, {
    SinkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'extenumref:index:Sink',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '32.0.0').merge(options),
        ) {
    stringEnum = registerOutput<pulumi_enum_index.StringEnum?>('stringEnum', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi_enum_index.StringEnum.fromValue(guardedValue as String); });
  }

  /// Creates a typed reference to an existing [Sink] resource.
  Sink.reference(String urn)
    : super(
        'extenumref:index:Sink',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    stringEnum = registerOutput<pulumi_enum_index.StringEnum?>('stringEnum', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi_enum_index.StringEnum.fromValue(guardedValue as String); });
  }
}
