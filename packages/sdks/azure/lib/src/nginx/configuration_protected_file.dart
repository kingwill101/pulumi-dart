// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConfigurationProtectedFile {
  /// Specifies the base-64 encoded contents of this config file (Sensitive).
  final pulumi.Input<String> content;
  /// The hash of the contents of this configuration file prefixed by the algorithm used.
  final pulumi.Input<String>? contentHash;
  /// Specifies the path of this config file.
  final pulumi.Input<String> virtualPath;

  /// Creates a new [ConfigurationProtectedFile].
  /// [content] Specifies the base-64 encoded contents of this config file (Sensitive).
  /// [contentHash] The hash of the contents of this configuration file prefixed by the algorithm used.
  /// [virtualPath] Specifies the path of this config file.
  ConfigurationProtectedFile({
    required this.content,
    this.contentHash,
    required this.virtualPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
      'contentHash': ?contentHash,
      'virtualPath': virtualPath,
    };
  }

  factory ConfigurationProtectedFile.fromMap(Map<String, dynamic> map) {
    return ConfigurationProtectedFile(
      content: (map['content'] as String).input(),
      contentHash: map['contentHash'] == null ? null : (map['contentHash']! as String).input(),
      virtualPath: (map['virtualPath'] as String).input(),
    );
  }
}

