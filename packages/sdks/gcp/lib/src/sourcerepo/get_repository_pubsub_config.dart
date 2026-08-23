// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRepositoryPubsubConfig {
  /// The format of the Cloud Pub/Sub messages.
  /// - PROTOBUF: The message payload is a serialized protocol buffer of SourceRepoEvent.
  /// - JSON: The message payload is a JSON string of SourceRepoEvent. Possible values: ["PROTOBUF", "JSON"]
  final pulumi.Input<String> messageFormat;
  /// Email address of the service account used for publishing Cloud Pub/Sub messages.
  /// This service account needs to be in the same project as the PubsubConfig. When added,
  /// the caller needs to have iam.serviceAccounts.actAs permission on this service account.
  /// If unspecified, it defaults to the compute engine default service account.
  final pulumi.Input<String> serviceAccountEmail;
  final pulumi.Input<String> topic;

  /// Creates a new [GetRepositoryPubsubConfig].
  /// [messageFormat] The format of the Cloud Pub/Sub messages.
  /// [serviceAccountEmail] Email address of the service account used for publishing Cloud Pub/Sub messages.
  /// [topic] Required.
  const GetRepositoryPubsubConfig({
    required this.messageFormat,
    required this.serviceAccountEmail,
    required this.topic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'messageFormat': messageFormat,
      'serviceAccountEmail': serviceAccountEmail,
      'topic': topic,
    };
  }

  factory GetRepositoryPubsubConfig.fromMap(Map<String, dynamic> map) {
    return GetRepositoryPubsubConfig(
      messageFormat: pulumi.Input.fromValue(map['messageFormat'] as String),
      serviceAccountEmail: pulumi.Input.fromValue(map['serviceAccountEmail'] as String),
      topic: pulumi.Input.fromValue(map['topic'] as String),
    );
  }
}
