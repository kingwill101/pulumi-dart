// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ImportFileResponse {
  /// The contents of the file.
  final pulumi.Input<String> content;

  /// The name of the file.
  final pulumi.Input<String> name;

  /// Creates a new [ImportFileResponse].
  /// [content] The contents of the file.
  /// [name] The name of the file.
  ImportFileResponse({required this.content, required this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'content': content, 'name': name};
  }

  factory ImportFileResponse.fromMap(Map<String, dynamic> map) {
    return ImportFileResponse(
      content: pulumi.Input.fromValue(map['content'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
