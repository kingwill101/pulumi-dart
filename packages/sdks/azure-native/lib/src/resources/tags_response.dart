// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A dictionary of name and value pairs.
class TagsResponse {
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [TagsResponse].
  /// [tags] Optional.
  TagsResponse({
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tags': ?tags,
    };
  }

  factory TagsResponse.fromMap(Map<String, dynamic> map) {
    return TagsResponse(
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

