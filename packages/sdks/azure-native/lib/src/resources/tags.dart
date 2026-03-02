// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A dictionary of name and value pairs.
class Tags {
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [Tags].
  /// [tags] Optional.
  Tags({
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tags': ?tags,
    };
  }

  factory Tags.fromMap(Map<String, dynamic> map) {
    return Tags(
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

