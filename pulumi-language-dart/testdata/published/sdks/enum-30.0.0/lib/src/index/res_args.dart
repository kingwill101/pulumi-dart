// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'int_enum.dart';
import 'string_enum.dart';

/// {@template pulumi_index_res_args_doc}
/// The set of arguments for Res.
/// {@endtemplate}
/// {@macro pulumi_index_res_args_doc}
class ResArgs {
  final pulumi.Input<IntEnum>? intEnum;
  final pulumi.Input<StringEnum>? stringEnum;

  /// Creates a new [ResArgs].
  /// [intEnum] Optional.
  /// [stringEnum] Optional.
  const ResArgs({
    this.intEnum,
    this.stringEnum,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'intEnum': ?pulumi.Input.mapOptionalInputValue<IntEnum, int>(intEnum, (value) => value.wireValue),
      'stringEnum': ?pulumi.Input.mapOptionalInputValue<StringEnum, String>(stringEnum, (value) => value.wireValue),
    };
  }

  factory ResArgs.fromMap(Map<String, dynamic> map) {
    return ResArgs(
      intEnum: (() { final guardedValue = map['intEnum']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IntEnum.fromValue(guardedValue as int)); })(),
      stringEnum: (() { final guardedValue = map['stringEnum']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StringEnum.fromValue(guardedValue as String)); })(),
    );
  }
}
