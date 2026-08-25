// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ParserLowCodeFieldExtractorsExtractor {
  /// Path in generated event which is to be populated. This is required if the
  /// FieldExtractor is used to specify the parser extension.
  final pulumi.Input<String?>? destinationPath;
  /// Field path could be a json path, xml path or csv column name
  /// depending on log format. It refers to a section or substring in raw log.
  /// This is required if the FieldExtractor is used to specify the parser
  /// extension.
  final pulumi.Input<String?>? fieldPath;
  /// Operator used for precondition.
  /// Possible values:
  /// EQUALS
  /// NOT_EQUALS
  final pulumi.Input<String?>? preconditionOp;
  /// Precondition path could be a json path, xml path or csv column name
  /// depending on log format. It refers to a section or substring in raw log.
  final pulumi.Input<String?>? preconditionPath;
  /// Precondition value.
  final pulumi.Input<String?>? preconditionValue;
  /// Value to be mapped to the destination path directly.
  final pulumi.Input<String?>? value;

  /// Creates a new [ParserLowCodeFieldExtractorsExtractor].
  /// [destinationPath] Path in generated event which is to be populated. This is required if the
  /// [fieldPath] Field path could be a json path, xml path or csv column name
  /// [preconditionOp] Operator used for precondition.
  /// [preconditionPath] Precondition path could be a json path, xml path or csv column name
  /// [preconditionValue] Precondition value.
  /// [value] Value to be mapped to the destination path directly.
  const ParserLowCodeFieldExtractorsExtractor({
    this.destinationPath,
    this.fieldPath,
    this.preconditionOp,
    this.preconditionPath,
    this.preconditionValue,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationPath': ?destinationPath,
      'fieldPath': ?fieldPath,
      'preconditionOp': ?preconditionOp,
      'preconditionPath': ?preconditionPath,
      'preconditionValue': ?preconditionValue,
      'value': ?value,
    };
  }

  factory ParserLowCodeFieldExtractorsExtractor.fromMap(Map<String, dynamic> map) {
    return ParserLowCodeFieldExtractorsExtractor(
      destinationPath: (() { final guardedValue = map['destinationPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fieldPath: (() { final guardedValue = map['fieldPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      preconditionOp: (() { final guardedValue = map['preconditionOp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      preconditionPath: (() { final guardedValue = map['preconditionPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      preconditionValue: (() { final guardedValue = map['preconditionValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
