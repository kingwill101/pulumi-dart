// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'parser_extension_dynamic_parsing_opted_field.dart';

class ParserExtensionDynamicParsing {
  /// List of fields to be parsed.
  /// Structure is documented below.
  final pulumi.Input<List<ParserExtensionDynamicParsingOptedField>?>? optedFields;

  /// Creates a new [ParserExtensionDynamicParsing].
  /// [optedFields] List of fields to be parsed.
  const ParserExtensionDynamicParsing({
    this.optedFields,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'optedFields': ?pulumi.Input.mapOptionalInputValue<List<ParserExtensionDynamicParsingOptedField>, List<Map<String, dynamic>>>(optedFields, (value) => pulumi.Input.encodeList<ParserExtensionDynamicParsingOptedField, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ParserExtensionDynamicParsing.fromMap(Map<String, dynamic> map) {
    return ParserExtensionDynamicParsing(
      optedFields: (() { final guardedValue = map['optedFields']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ParserExtensionDynamicParsingOptedField>(guardedValue, (value) => ParserExtensionDynamicParsingOptedField.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
