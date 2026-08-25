// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RepositoryPubsubConfig {
  /// The format of the Cloud Pub/Sub messages.
  /// - PROTOBUF: The message payload is a serialized protocol buffer of SourceRepoEvent.
  /// - JSON: The message payload is a JSON string of SourceRepoEvent.
  /// Possible values are: `PROTOBUF`, `JSON`.
  final pulumi.Input<String> messageFormat;
  /// Email address of the service account used for publishing Cloud Pub/Sub messages.
  /// This service account needs to be in the same project as the PubsubConfig. When added,
  /// the caller needs to have iam.serviceAccounts.actAs permission on this service account.
  /// If unspecified, it defaults to the compute engine default service account.
  final pulumi.Input<String?>? serviceAccountEmail;
  /// The identifier for this object. Format specified above.
  final pulumi.Input<String> topic;

  /// Creates a new [RepositoryPubsubConfig].
  /// [messageFormat] The format of the Cloud Pub/Sub messages.
  /// [serviceAccountEmail] Email address of the service account used for publishing Cloud Pub/Sub messages.
  /// [topic] The identifier for this object. Format specified above.
  const RepositoryPubsubConfig({
    required this.messageFormat,
    this.serviceAccountEmail,
    required this.topic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'messageFormat': messageFormat,
      'serviceAccountEmail': ?serviceAccountEmail,
      'topic': topic,
    };
  }

  factory RepositoryPubsubConfig.fromMap(Map<String, dynamic> map) {
    return RepositoryPubsubConfig(
      messageFormat: pulumi.Input.fromValue(map['messageFormat'] as String),
      serviceAccountEmail: (() { final guardedValue = map['serviceAccountEmail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      topic: pulumi.Input.fromValue(map['topic'] as String),
    );
  }
}
