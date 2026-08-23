// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Pull Message. This proto can only be used for tasks in a queue which has PULL type. It currently exists for backwards compatibility with the App Engine Task Queue SDK. This message type maybe returned with methods list and get, when the response view is FULL.
class PullMessageCloudtasksV2beta3 {
  /// A data payload consumed by the worker to execute the task.
  final pulumi.Input<String>? payload;
  /// The tasks's tag. The tag is less than 500 characters. SDK compatibility: Although the SDK allows tags to be either string or [bytes](https://cloud.google.com/appengine/docs/standard/java/javadoc/com/google/appengine/api/taskqueue/TaskOptions.html#tag-byte:A-), only UTF-8 encoded tags can be used in Cloud Tasks. If a tag isn't UTF-8 encoded, the tag will be empty when the task is returned by Cloud Tasks.
  final pulumi.Input<String>? tag;

  /// Creates a new [PullMessageCloudtasksV2beta3].
  /// [payload] A data payload consumed by the worker to execute the task.
  /// [tag] The tasks's tag. The tag is less than 500 characters. SDK compatibility: Although the SDK allows tags to be either string or [bytes](https://cloud.google.com/appengine/docs/standard/java/javadoc/com/google/appengine/api/taskqueue/TaskOptions.html#tag-byte:A-), only UTF-8 encoded tags can be used in Cloud Tasks. If a tag isn't UTF-8 encoded, the tag will be empty when the task is returned by Cloud Tasks.
  const PullMessageCloudtasksV2beta3({
    this.payload,
    this.tag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'payload': ?payload,
      'tag': ?tag,
    };
  }

  factory PullMessageCloudtasksV2beta3.fromMap(Map<String, dynamic> map) {
    return PullMessageCloudtasksV2beta3(
      payload: (() { final guardedValue = map['payload']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tag: (() { final guardedValue = map['tag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
