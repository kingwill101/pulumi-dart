// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConfigurationConfigFile {
  /// Specifies the base-64 encoded contents of this config file.
  final pulumi.Input<String> content;
  /// Specifies the path of this config file.
  final pulumi.Input<String> virtualPath;

  /// Creates a new [ConfigurationConfigFile].
  /// [content] Specifies the base-64 encoded contents of this config file.
  /// [virtualPath] Specifies the path of this config file.
  ConfigurationConfigFile({
    required this.content,
    required this.virtualPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
      'virtualPath': virtualPath,
    };
  }

  factory ConfigurationConfigFile.fromMap(Map<String, dynamic> map) {
    return ConfigurationConfigFile(
      content: pulumi.Input.fromValue(map['content'] as String),
      virtualPath: pulumi.Input.fromValue(map['virtualPath'] as String),
    );
  }
}

