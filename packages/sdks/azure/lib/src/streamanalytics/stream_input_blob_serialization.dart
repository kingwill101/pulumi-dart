// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StreamInputBlobSerialization {
  /// The encoding of the incoming data in the case of input and the encoding of outgoing data in the case of output. It currently can only be set to `UTF8`.
  ///
  /// &gt; **Note:** This is required when `type` is set to `Csv` or `Json`.
  final pulumi.Input<String>? encoding;
  /// The delimiter that will be used to separate comma-separated value (CSV) records. Possible values are ` ` (space), `,` (comma), `	` (tab), `|` (pipe) and `;`.
  ///
  /// &gt; **Note:** This is required when `type` is set to `Csv`.
  final pulumi.Input<String>? fieldDelimiter;
  /// The serialization format used for incoming data streams. Possible values are `Avro`, `Csv` and `Json`.
  final pulumi.Input<String> type;

  /// Creates a new [StreamInputBlobSerialization].
  /// [encoding] The encoding of the incoming data in the case of input and the encoding of outgoing data in the case of output. It currently can only be set to `UTF8`.
  /// [fieldDelimiter] The delimiter that will be used to separate comma-separated value (CSV) records. Possible values are ` ` (space), `,` (comma), `	` (tab), `|` (pipe) and `;`.
  /// [type] The serialization format used for incoming data streams. Possible values are `Avro`, `Csv` and `Json`.
  const StreamInputBlobSerialization({
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

  factory StreamInputBlobSerialization.fromMap(Map<String, dynamic> map) {
    return StreamInputBlobSerialization(
      encoding: (() { final guardedValue = map['encoding']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fieldDelimiter: (() { final guardedValue = map['fieldDelimiter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
