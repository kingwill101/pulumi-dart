import 'package:pulumi/pulumi.dart' as pulumi;
import 'int_enum_mod.dart';
import 'res_mod_args.dart';
import 'string_enum_mod.dart';

class ResMod extends pulumi.CustomResource {
  late final pulumi.Output<IntEnumMod?> intEnum;
  late final pulumi.Output<StringEnumMod?> stringEnum;

  /// Creates a new [ResMod].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResMod]. {@macro pulumi_mod_res_mod_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResMod(
    String name, {
    ResModArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'enum:mod:Res',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '30.0.0').merge(options),
        ) {
    intEnum = registerOutput<IntEnumMod?>('intEnum', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IntEnumMod.fromValue(guardedValue as int); });
    stringEnum = registerOutput<StringEnumMod?>('stringEnum', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StringEnumMod.fromValue(guardedValue as String); });
  }
}
