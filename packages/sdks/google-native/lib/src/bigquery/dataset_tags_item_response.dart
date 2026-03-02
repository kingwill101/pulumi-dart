// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatasetTagsItemResponse {
  /// [Required] The namespaced friendly name of the tag key, e.g. "12345/environment" where 12345 is org id.
  final pulumi.Input<String> tagKey;
  /// [Required] Friendly short name of the tag value, e.g. "production".
  final pulumi.Input<String> tagValue;

  /// Creates a new [DatasetTagsItemResponse].
  /// [tagKey] [Required] The namespaced friendly name of the tag key, e.g. "12345/environment" where 12345 is org id.
  /// [tagValue] [Required] Friendly short name of the tag value, e.g. "production".
  DatasetTagsItemResponse({
    required this.tagKey,
    required this.tagValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tagKey': tagKey,
      'tagValue': tagValue,
    };
  }

  factory DatasetTagsItemResponse.fromMap(Map<String, dynamic> map) {
    return DatasetTagsItemResponse(
      tagKey: (map['tagKey'] as String).input(),
      tagValue: (map['tagValue'] as String).input(),
    );
  }
}

