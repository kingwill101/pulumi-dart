// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetConfigurationProtectedFile {
  /// The base-64 encoded contents of this configuration file.
  final pulumi.Input<String> content;
  /// The hash of the contents of this configuration file prefixed by the algorithm used.
  final pulumi.Input<String> contentHash;
  /// The path of this configuration file.
  final pulumi.Input<String> virtualPath;

  /// Creates a new [GetConfigurationProtectedFile].
  /// [content] The base-64 encoded contents of this configuration file.
  /// [contentHash] The hash of the contents of this configuration file prefixed by the algorithm used.
  /// [virtualPath] The path of this configuration file.
  const GetConfigurationProtectedFile({
    required this.content,
    required this.contentHash,
    required this.virtualPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
      'contentHash': contentHash,
      'virtualPath': virtualPath,
    };
  }

  factory GetConfigurationProtectedFile.fromMap(Map<String, dynamic> map) {
    return GetConfigurationProtectedFile(
      content: pulumi.Input.fromValue(map['content'] as String),
      contentHash: pulumi.Input.fromValue(map['contentHash'] as String),
      virtualPath: pulumi.Input.fromValue(map['virtualPath'] as String),
    );
  }
}
