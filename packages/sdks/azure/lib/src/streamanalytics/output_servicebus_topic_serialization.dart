// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OutputServicebusTopicSerialization {
  /// The encoding of the incoming data in the case of input and the encoding of outgoing data in the case of output. It currently can only be set to `UTF8`.
  ///
  /// &gt; **Note:** This is required when `type` is set to `Csv` or `Json`.
  final pulumi.Input<String>? encoding;
  /// The delimiter that will be used to separate comma-separated value (CSV) records. Possible values are ` ` (space), `,` (comma), `	` (tab), `|` (pipe) and `;`.
  ///
  /// &gt; **Note:** This is required when `type` is set to `Csv`.
  final pulumi.Input<String>? fieldDelimiter;
  /// Specifies the format of the JSON the output will be written in. Possible values are `Array` and `LineSeparated`.
  ///
  /// &gt; **Note:** This is Required and can only be specified when `type` is set to `Json`.
  final pulumi.Input<String>? format;
  /// The serialization format used for outgoing data streams. Possible values are `Avro`, `Csv`, `Json` and `Parquet`.
  final pulumi.Input<String> type;

  /// Creates a new [OutputServicebusTopicSerialization].
  /// [encoding] The encoding of the incoming data in the case of input and the encoding of outgoing data in the case of output. It currently can only be set to `UTF8`.
  /// [fieldDelimiter] The delimiter that will be used to separate comma-separated value (CSV) records. Possible values are ` ` (space), `,` (comma), `	` (tab), `|` (pipe) and `;`.
  /// [format] Specifies the format of the JSON the output will be written in. Possible values are `Array` and `LineSeparated`.
  /// [type] The serialization format used for outgoing data streams. Possible values are `Avro`, `Csv`, `Json` and `Parquet`.
  const OutputServicebusTopicSerialization({
    this.encoding,
    this.fieldDelimiter,
    this.format,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encoding': ?encoding,
      'fieldDelimiter': ?fieldDelimiter,
      'format': ?format,
      'type': type,
    };
  }

  factory OutputServicebusTopicSerialization.fromMap(Map<String, dynamic> map) {
    return OutputServicebusTopicSerialization(
      encoding: (() { final guardedValue = map['encoding']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fieldDelimiter: (() { final guardedValue = map['fieldDelimiter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      format: (() { final guardedValue = map['format']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

