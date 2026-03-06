// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSecretTopic {
  /// The resource name of the Pub/Sub topic that will be published to, in the following format: projects/*/topics/*.
  /// For publication to succeed, the Secret Manager Service Agent service account must have pubsub.publisher permissions on the topic.
  final pulumi.Input<String> name;

  /// Creates a new [GetSecretTopic].
  /// [name] The resource name of the Pub/Sub topic that will be published to, in the following format: projects/*/topics/*.
  const GetSecretTopic({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory GetSecretTopic.fromMap(Map<String, dynamic> map) {
    return GetSecretTopic(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

