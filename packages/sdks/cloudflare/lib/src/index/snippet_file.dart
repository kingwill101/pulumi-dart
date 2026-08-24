// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SnippetFile {
  final pulumi.Input<String> content;
  final pulumi.Input<String> name;

  /// Creates a new [SnippetFile].
  /// [content] Required.
  /// [name] Required.
  const SnippetFile({
    required this.content,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
      'name': name,
    };
  }

  factory SnippetFile.fromMap(Map<String, dynamic> map) {
    return SnippetFile(
      content: pulumi.Input.fromValue(map['content'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
