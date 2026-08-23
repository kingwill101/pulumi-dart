// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobDirectNotebookSource {
  /// The base64-encoded contents of the input notebook file.
  final pulumi.Input<String>? content;

  /// Creates a new [AiScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobDirectNotebookSource].
  /// [content] The base64-encoded contents of the input notebook file.
  const AiScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobDirectNotebookSource({
    this.content,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': ?content,
    };
  }

  factory AiScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobDirectNotebookSource.fromMap(Map<String, dynamic> map) {
    return AiScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobDirectNotebookSource(
      content: (() { final guardedValue = map['content']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
