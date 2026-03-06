// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatasetTagsItem {
  /// [Required] The namespaced friendly name of the tag key, e.g. "12345/environment" where 12345 is org id.
  final pulumi.Input<String>? tagKey;
  /// [Required] Friendly short name of the tag value, e.g. "production".
  final pulumi.Input<String>? tagValue;

  /// Creates a new [DatasetTagsItem].
  /// [tagKey] [Required] The namespaced friendly name of the tag key, e.g. "12345/environment" where 12345 is org id.
  /// [tagValue] [Required] Friendly short name of the tag value, e.g. "production".
  const DatasetTagsItem({
    this.tagKey,
    this.tagValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tagKey': ?tagKey,
      'tagValue': ?tagValue,
    };
  }

  factory DatasetTagsItem.fromMap(Map<String, dynamic> map) {
    return DatasetTagsItem(
      tagKey: (() { final guardedValue = map['tagKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tagValue: (() { final guardedValue = map['tagValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

