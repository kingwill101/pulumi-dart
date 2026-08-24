import 'package:pulumi/pulumi.dart' as pulumi;
import 'int_enum.dart';
import 'res_args.dart';
import 'string_enum.dart';

class Res extends pulumi.CustomResource {
  late final pulumi.Output<IntEnum?> intEnum;
  late final pulumi.Output<StringEnum?> stringEnum;

  /// Creates a new [Res].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Res]. {@macro pulumi_index_res_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Res(
    String name, {
    ResArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'enum:index:Res',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '30.0.0').merge(options),
        ) {
    intEnum = registerOutput<IntEnum?>('intEnum', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IntEnum.fromValue(guardedValue as int); });
    stringEnum = registerOutput<StringEnum?>('stringEnum', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StringEnum.fromValue(guardedValue as String); });
  }

  /// Creates a typed reference to an existing [Res] resource.
  Res.reference(String urn)
    : super(
        'enum:index:Res',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    intEnum = registerOutput<IntEnum?>('intEnum', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IntEnum.fromValue(guardedValue as int); });
    stringEnum = registerOutput<StringEnum?>('stringEnum', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StringEnum.fromValue(guardedValue as String); });
  }
}
