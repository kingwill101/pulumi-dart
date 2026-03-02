// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConfigFile {
  /// The contents of the file.
  final pulumi.Input<String>? content;

  /// Creates a new [ConfigFile].
  /// [content] The contents of the file.
  ConfigFile({
    this.content,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': ?content,
    };
  }

  factory ConfigFile.fromMap(Map<String, dynamic> map) {
    return ConfigFile(
      content: map['content'] == null ? null : (map['content'] as String).input(),
    );
  }
}

