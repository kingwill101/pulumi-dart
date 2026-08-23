// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A dictionary of name and value pairs.
class TagsResponse {
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [TagsResponse].
  /// [tags] Optional.
  const TagsResponse({
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tags': ?tags,
    };
  }

  factory TagsResponse.fromMap(Map<String, dynamic> map) {
    return TagsResponse(
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
