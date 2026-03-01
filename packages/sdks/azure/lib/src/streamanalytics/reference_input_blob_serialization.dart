// ignore_for_file: unused_element, unnecessary_cast


class ReferenceInputBlobSerialization {
  /// The encoding of the incoming data in the case of input and the encoding of outgoing data in the case of output. It currently can only be set to `UTF8`.
  ///
  /// > **Note:** This is required when `type` is set to `Csv` or `Json`.
  final String? encoding;
  /// The delimiter that will be used to separate comma-separated value (CSV) records. Possible values are ` ` (space), `,` (comma), `	` (tab), `|` (pipe) and `;`.
  ///
  /// > **Note:** This is required when `type` is set to `Csv`.
  final String? fieldDelimiter;
  /// The serialization format used for the reference data. Possible values are `Avro`, `Csv` and `Json`.
  final String type;

  /// Creates a new [ReferenceInputBlobSerialization].
  /// [encoding] The encoding of the incoming data in the case of input and the encoding of outgoing data in the case of output. It currently can only be set to `UTF8`.
  /// [fieldDelimiter] The delimiter that will be used to separate comma-separated value (CSV) records. Possible values are ` ` (space), `,` (comma), `	` (tab), `|` (pipe) and `;`.
  /// [type] The serialization format used for the reference data. Possible values are `Avro`, `Csv` and `Json`.
  ReferenceInputBlobSerialization({
    this.encoding,
    this.fieldDelimiter,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encoding': ?encoding,
      'fieldDelimiter': ?fieldDelimiter,
      'type': type,
    };
  }

  factory ReferenceInputBlobSerialization.fromMap(Map<String, dynamic> map) {
    return ReferenceInputBlobSerialization(
      encoding: map['encoding'] == null ? null : map['encoding'] as String,
      fieldDelimiter: map['fieldDelimiter'] == null ? null : map['fieldDelimiter'] as String,
      type: map['type'] as String,
    );
  }
}

