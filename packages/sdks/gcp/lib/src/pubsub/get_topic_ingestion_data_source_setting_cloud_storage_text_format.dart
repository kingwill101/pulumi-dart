// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTopicIngestionDataSourceSettingCloudStorageTextFormat {
  /// The delimiter to use when using the 'text' format. Each line of text as
  /// specified by the delimiter will be set to the 'data' field of a Pub/Sub
  /// message. When unset, '\n' is used.
  final pulumi.Input<String> delimiter;

  /// Creates a new [GetTopicIngestionDataSourceSettingCloudStorageTextFormat].
  /// [delimiter] The delimiter to use when using the 'text' format. Each line of text as
  const GetTopicIngestionDataSourceSettingCloudStorageTextFormat({
    required this.delimiter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delimiter': delimiter,
    };
  }

  factory GetTopicIngestionDataSourceSettingCloudStorageTextFormat.fromMap(Map<String, dynamic> map) {
    return GetTopicIngestionDataSourceSettingCloudStorageTextFormat(
      delimiter: pulumi.Input.fromValue(map['delimiter'] as String),
    );
  }
}

