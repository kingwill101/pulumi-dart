// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BoundaryResourceFilterTagFilter {
  /// The namespaced name of the tag key, in the form
  /// `{parent_id}/{tag_key_short_name}`, for example `123456789012/env`.
  final pulumi.Input<String> tagKey;
  /// The allowed short name of the tag value, for example `production`.
  /// A project matches this tag filter if its effective tag value for
  /// the given `tagKey` matches this value.
  final pulumi.Input<String> tagValue;

  /// Creates a new [BoundaryResourceFilterTagFilter].
  /// [tagKey] The namespaced name of the tag key, in the form
  /// [tagValue] The allowed short name of the tag value, for example `production`.
  const BoundaryResourceFilterTagFilter({
    required this.tagKey,
    required this.tagValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tagKey': tagKey,
      'tagValue': tagValue,
    };
  }

  factory BoundaryResourceFilterTagFilter.fromMap(Map<String, dynamic> map) {
    return BoundaryResourceFilterTagFilter(
      tagKey: pulumi.Input.fromValue(map['tagKey'] as String),
      tagValue: pulumi.Input.fromValue(map['tagValue'] as String),
    );
  }
}
