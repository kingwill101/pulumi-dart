// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobConfigPubsubDestination {
  /// The name of the Pub/Sub topic to publish job completion notification to. For example: projects/{project}/topics/{topic}.
  final pulumi.Input<String>? topic;

  /// Creates a new [JobConfigPubsubDestination].
  /// [topic] The name of the Pub/Sub topic to publish job completion notification to. For example: projects/{project}/topics/{topic}.
  JobConfigPubsubDestination({this.topic});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'topic': ?topic};
  }

  factory JobConfigPubsubDestination.fromMap(Map<String, dynamic> map) {
    return JobConfigPubsubDestination(
      topic: (() {
        final guardedValue = map['topic'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
