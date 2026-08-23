// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'int_enum_mod.dart';
import 'string_enum_mod.dart';

/// {@template pulumi_mod_res_mod_args_doc}
/// The set of arguments for Res.
/// {@endtemplate}
/// {@macro pulumi_mod_res_mod_args_doc}
class ResModArgs {
  final pulumi.Input<IntEnumMod>? intEnum;
  final pulumi.Input<StringEnumMod>? stringEnum;

  /// Creates a new [ResModArgs].
  /// [intEnum] Optional.
  /// [stringEnum] Optional.
  const ResModArgs({
    this.intEnum,
    this.stringEnum,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'intEnum': ?pulumi.Input.mapOptionalInputValue<IntEnumMod, int>(intEnum, (value) => value.wireValue),
      'stringEnum': ?pulumi.Input.mapOptionalInputValue<StringEnumMod, String>(stringEnum, (value) => value.wireValue),
    };
  }

  factory ResModArgs.fromMap(Map<String, dynamic> map) {
    return ResModArgs(
      intEnum: (() { final guardedValue = map['intEnum']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IntEnumMod.fromValue(guardedValue as int)); })(),
      stringEnum: (() { final guardedValue = map['stringEnum']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StringEnumMod.fromValue(guardedValue as String)); })(),
    );
  }
}
