// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The mapping of content type to a repo path.
class ContentPathMapResponse {
  /// Content type.
  final pulumi.Input<String>? contentType;
  /// The path to the content.
  final pulumi.Input<String>? path;

  /// Creates a new [ContentPathMapResponse].
  /// [contentType] Content type.
  /// [path] The path to the content.
  ContentPathMapResponse({
    this.contentType,
    this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentType': ?contentType,
      'path': ?path,
    };
  }

  factory ContentPathMapResponse.fromMap(Map<String, dynamic> map) {
    return ContentPathMapResponse(
      contentType: map['contentType'] == null ? null : (map['contentType']! as String).input(),
      path: map['path'] == null ? null : (map['path']! as String).input(),
    );
  }
}

