// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class QueueProducer {
  final pulumi.Input<String?>? bucketName;
  final pulumi.Input<String?>? script;
  /// Available values: "worker", "r2Bucket".
  final pulumi.Input<String?>? type;

  /// Creates a new [QueueProducer].
  /// [bucketName] Optional.
  /// [script] Optional.
  /// [type] Available values: "worker", "r2Bucket".
  const QueueProducer({
    this.bucketName,
    this.script,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': ?bucketName,
      'script': ?script,
      'type': ?type,
    };
  }

  factory QueueProducer.fromMap(Map<String, dynamic> map) {
    return QueueProducer(
      bucketName: (() { final guardedValue = map['bucketName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      script: (() { final guardedValue = map['script']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
