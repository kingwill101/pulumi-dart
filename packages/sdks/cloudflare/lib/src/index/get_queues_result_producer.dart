// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetQueuesResultProducer {
  final pulumi.Input<String> bucketName;
  final pulumi.Input<String> script;
  /// Available values: "worker", "r2Bucket".
  final pulumi.Input<String> type;

  /// Creates a new [GetQueuesResultProducer].
  /// [bucketName] Required.
  /// [script] Required.
  /// [type] Available values: "worker", "r2Bucket".
  const GetQueuesResultProducer({
    required this.bucketName,
    required this.script,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': bucketName,
      'script': script,
      'type': type,
    };
  }

  factory GetQueuesResultProducer.fromMap(Map<String, dynamic> map) {
    return GetQueuesResultProducer(
      bucketName: pulumi.Input.fromValue(map['bucketName'] as String),
      script: pulumi.Input.fromValue(map['script'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
