// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OutputServicebusTopicSerialization {
  /// The encoding of the incoming data in the case of input and the encoding of outgoing data in the case of output. It currently can only be set to `UTF8`.
  ///
  /// > **Note:** This is required when `type` is set to `Csv` or `Json`.
  final pulumi.Input<String>? encoding;
  /// The delimiter that will be used to separate comma-separated value (CSV) records. Possible values are ` ` (space), `,` (comma), `	` (tab), `|` (pipe) and `;`.
  ///
  /// > **Note:** This is required when `type` is set to `Csv`.
  final pulumi.Input<String>? fieldDelimiter;
  /// Specifies the format of the JSON the output will be written in. Possible values are `Array` and `LineSeparated`.
  ///
  /// > **Note:** This is Required and can only be specified when `type` is set to `Json`.
  final pulumi.Input<String>? format;
  /// The serialization format used for outgoing data streams. Possible values are `Avro`, `Csv`, `Json` and `Parquet`.
  final pulumi.Input<String> type;

  /// Creates a new [OutputServicebusTopicSerialization].
  /// [encoding] The encoding of the incoming data in the case of input and the encoding of outgoing data in the case of output. It currently can only be set to `UTF8`.
  /// [fieldDelimiter] The delimiter that will be used to separate comma-separated value (CSV) records. Possible values are ` ` (space), `,` (comma), `	` (tab), `|` (pipe) and `;`.
  /// [format] Specifies the format of the JSON the output will be written in. Possible values are `Array` and `LineSeparated`.
  /// [type] The serialization format used for outgoing data streams. Possible values are `Avro`, `Csv`, `Json` and `Parquet`.
  OutputServicebusTopicSerialization({
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
      encoding: map['encoding'] == null ? null : (map['encoding'] as String).input(),
      fieldDelimiter: map['fieldDelimiter'] == null ? null : (map['fieldDelimiter'] as String).input(),
      format: map['format'] == null ? null : (map['format'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

