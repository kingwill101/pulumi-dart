// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'parser_low_code_field_extractors.dart';

class ParserLowCode {
  /// A representation of a parser extension as a set of field extractors.
  /// Structure is documented below.
  final pulumi.Input<ParserLowCodeFieldExtractors?>? fieldExtractors;
  /// The log used to create this low code parser in the UI.
  final pulumi.Input<String?>? log;

  /// Creates a new [ParserLowCode].
  /// [fieldExtractors] A representation of a parser extension as a set of field extractors.
  /// [log] The log used to create this low code parser in the UI.
  const ParserLowCode({
    this.fieldExtractors,
    this.log,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fieldExtractors': ?pulumi.Input.mapOptionalInputValue<ParserLowCodeFieldExtractors, Map<String, dynamic>>(fieldExtractors, (value) => value.toMap()),
      'log': ?log,
    };
  }

  factory ParserLowCode.fromMap(Map<String, dynamic> map) {
    return ParserLowCode(
      fieldExtractors: (() { final guardedValue = map['fieldExtractors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ParserLowCodeFieldExtractors.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      log: (() { final guardedValue = map['log']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
