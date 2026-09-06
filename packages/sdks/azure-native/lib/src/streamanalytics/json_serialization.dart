// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes how data from an input is serialized or how data is serialized when written to an output in JSON format.
class JsonSerialization {
  /// Specifies the encoding of the incoming data in the case of input and the encoding of outgoing data in the case of output. Required on PUT (CreateOrReplace) requests.
  final pulumi.Input<dynamic>? encoding;
  /// This property only applies to JSON serialization of outputs only. It is not applicable to inputs. This property specifies the format of the JSON the output will be written in. The currently supported values are 'lineSeparated' indicating the output will be formatted by having each JSON object separated by a new line and 'array' indicating the output will be formatted as an array of JSON objects. Default value is 'lineSeparated' if left null.
  final pulumi.Input<dynamic>? format;
  /// Indicates the type of serialization that the input or output uses. Required on PUT (CreateOrReplace) requests.
  /// Expected value is 'Json'.
  final pulumi.Input<String> type;

  /// Creates a new [JsonSerialization].
  /// [encoding] Specifies the encoding of the incoming data in the case of input and the encoding of outgoing data in the case of output. Required on PUT (CreateOrReplace) requests.
  /// [format] This property only applies to JSON serialization of outputs only. It is not applicable to inputs. This property specifies the format of the JSON the output will be written in. The currently supported values are 'lineSeparated' indicating the output will be formatted by having each JSON object separated by a new line and 'array' indicating the output will be formatted as an array of JSON objects. Default value is 'lineSeparated' if left null.
  /// [type] Indicates the type of serialization that the input or output uses. Required on PUT (CreateOrReplace) requests.
  const JsonSerialization({
    this.encoding,
    this.format,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encoding': ?encoding,
      'format': ?format,
      'type': type,
    };
  }

  factory JsonSerialization.fromMap(Map<String, dynamic> map) {
    return JsonSerialization(
      encoding: (() { final guardedValue = map['encoding']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      format: (() { final guardedValue = map['format']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
