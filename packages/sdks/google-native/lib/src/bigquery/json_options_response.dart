// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JsonOptionsResponse {
  /// [Optional] The character encoding of the data. The supported values are UTF-8, UTF-16BE, UTF-16LE, UTF-32BE, and UTF-32LE. The default value is UTF-8.
  final pulumi.Input<String> encoding;

  /// Creates a new [JsonOptionsResponse].
  /// [encoding] [Optional] The character encoding of the data. The supported values are UTF-8, UTF-16BE, UTF-16LE, UTF-32BE, and UTF-32LE. The default value is UTF-8.
  JsonOptionsResponse({
    required this.encoding,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encoding': encoding,
    };
  }

  factory JsonOptionsResponse.fromMap(Map<String, dynamic> map) {
    return JsonOptionsResponse(
      encoding: pulumi.Input.fromValue(map['encoding'] as String),
    );
  }
}

