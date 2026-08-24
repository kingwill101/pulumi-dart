// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_enum/index.dart' as pulumi_enum_index;

/// {@template pulumi_index_sink_args_doc}
/// The set of arguments for Sink.
/// {@endtemplate}
/// {@macro pulumi_index_sink_args_doc}
class SinkArgs {
  final pulumi.Input<pulumi_enum_index.StringEnum?>? stringEnum;

  /// Creates a new [SinkArgs].
  /// [stringEnum] Optional.
  const SinkArgs({
    this.stringEnum,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'stringEnum': ?pulumi.Input.mapOptionalInputValue<pulumi_enum_index.StringEnum, String>(stringEnum, (value) => value.wireValue),
    };
  }

  factory SinkArgs.fromMap(Map<String, dynamic> map) {
    return SinkArgs(
      stringEnum: (() { final guardedValue = map['stringEnum']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi_enum_index.StringEnum.fromValue(guardedValue as String)); })(),
    );
  }
}
