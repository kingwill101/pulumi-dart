// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConfigFileResponse {
  /// The contents of the file.
  final pulumi.Input<String> content;

  /// Creates a new [ConfigFileResponse].
  /// [content] The contents of the file.
  ConfigFileResponse({
    required this.content,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
    };
  }

  factory ConfigFileResponse.fromMap(Map<String, dynamic> map) {
    return ConfigFileResponse(
      content: pulumi.Input.fromValue(map['content'] as String),
    );
  }
}

