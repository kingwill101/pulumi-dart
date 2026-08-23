// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NotebookExecutionDirectNotebookSource {
  /// The base64-encoded contents of the input notebook file.
  final pulumi.Input<String> content;

  /// Creates a new [NotebookExecutionDirectNotebookSource].
  /// [content] The base64-encoded contents of the input notebook file.
  const NotebookExecutionDirectNotebookSource({
    required this.content,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
    };
  }

  factory NotebookExecutionDirectNotebookSource.fromMap(Map<String, dynamic> map) {
    return NotebookExecutionDirectNotebookSource(
      content: pulumi.Input.fromValue(map['content'] as String),
    );
  }
}
