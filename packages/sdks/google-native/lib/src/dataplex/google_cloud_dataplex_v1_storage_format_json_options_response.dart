// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes JSON data format.
class GoogleCloudDataplexV1StorageFormatJsonOptionsResponse {
  /// Optional. The character encoding of the data. Accepts "US-ASCII", "UTF-8" and "ISO-8859-1". Defaults to UTF-8 if not specified.
  final pulumi.Input<String> encoding;

  /// Creates a new [GoogleCloudDataplexV1StorageFormatJsonOptionsResponse].
  /// [encoding] Optional. The character encoding of the data. Accepts "US-ASCII", "UTF-8" and "ISO-8859-1". Defaults to UTF-8 if not specified.
  const GoogleCloudDataplexV1StorageFormatJsonOptionsResponse({
    required this.encoding,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encoding': encoding,
    };
  }

  factory GoogleCloudDataplexV1StorageFormatJsonOptionsResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1StorageFormatJsonOptionsResponse(
      encoding: pulumi.Input.fromValue(map['encoding'] as String),
    );
  }
}
