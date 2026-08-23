// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The pull message contains data that can be used by the caller of LeaseTasks to process the task. This proto can only be used for tasks in a queue which has pull_target set.
class PullMessageResponse {
  /// A data payload consumed by the worker to execute the task.
  final pulumi.Input<String> payload;
  /// The task's tag. Tags allow similar tasks to be processed in a batch. If you label tasks with a tag, your worker can lease tasks with the same tag using filter. For example, if you want to aggregate the events associated with a specific user once a day, you could tag tasks with the user ID. The task's tag can only be set when the task is created. The tag must be less than 500 characters. SDK compatibility: Although the SDK allows tags to be either string or [bytes](https://cloud.google.com/appengine/docs/standard/java/javadoc/com/google/appengine/api/taskqueue/TaskOptions.html#tag-byte:A-), only UTF-8 encoded tags can be used in Cloud Tasks. If a tag isn't UTF-8 encoded, the tag will be empty when the task is returned by Cloud Tasks.
  final pulumi.Input<String> tag;

  /// Creates a new [PullMessageResponse].
  /// [payload] A data payload consumed by the worker to execute the task.
  /// [tag] The task's tag. Tags allow similar tasks to be processed in a batch. If you label tasks with a tag, your worker can lease tasks with the same tag using filter. For example, if you want to aggregate the events associated with a specific user once a day, you could tag tasks with the user ID. The task's tag can only be set when the task is created. The tag must be less than 500 characters. SDK compatibility: Although the SDK allows tags to be either string or [bytes](https://cloud.google.com/appengine/docs/standard/java/javadoc/com/google/appengine/api/taskqueue/TaskOptions.html#tag-byte:A-), only UTF-8 encoded tags can be used in Cloud Tasks. If a tag isn't UTF-8 encoded, the tag will be empty when the task is returned by Cloud Tasks.
  const PullMessageResponse({
    required this.payload,
    required this.tag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'payload': payload,
      'tag': tag,
    };
  }

  factory PullMessageResponse.fromMap(Map<String, dynamic> map) {
    return PullMessageResponse(
      payload: pulumi.Input.fromValue(map['payload'] as String),
      tag: pulumi.Input.fromValue(map['tag'] as String),
    );
  }
}
