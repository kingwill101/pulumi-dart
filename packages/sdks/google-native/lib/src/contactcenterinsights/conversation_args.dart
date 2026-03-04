// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'conversation_medium.dart';
import 'google_cloud_contactcenterinsights_v1_conversation_call_metadata.dart';
import 'google_cloud_contactcenterinsights_v1_conversation_data_source.dart';

/// {@template pulumi_contactcenterinsights_v1_conversation_args_doc}
/// The set of arguments for Conversation.
/// {@endtemplate}
/// {@macro pulumi_contactcenterinsights_v1_conversation_args_doc}
class ConversationArgs {
  /// An opaque, user-specified string representing the human agent who handled the conversation.
  final pulumi.Input<String>? agentId;

  /// Call-specific metadata.
  final pulumi.Input<
    GoogleCloudContactcenterinsightsV1ConversationCallMetadata
  >?
  callMetadata;

  /// A unique ID for the new conversation. This ID will become the final component of the conversation's resource name. If no ID is specified, a server-generated ID will be used. This value should be 4-64 characters and must match the regular expression `^[a-z0-9-]{4,64}$`. Valid characters are `a-z-`
  final pulumi.Input<String>? conversationId;

  /// The source of the audio and transcription for the conversation.
  final pulumi.Input<GoogleCloudContactcenterinsightsV1ConversationDataSource>?
  dataSource;

  /// The time at which this conversation should expire. After this time, the conversation data and any associated analyses will be deleted.
  final pulumi.Input<String>? expireTime;

  /// A map for the user to specify any custom fields. A maximum of 20 labels per conversation is allowed, with a maximum of 256 characters per entry.
  final pulumi.Input<Map<String, String>>? labels;

  /// A user-specified language code for the conversation.
  final pulumi.Input<String>? languageCode;
  final pulumi.Input<String>? location;

  /// Immutable. The conversation medium, if unspecified will default to PHONE_CALL.
  final pulumi.Input<ConversationMedium>? medium;

  /// Immutable. The resource name of the conversation. Format: projects/{project}/locations/{location}/conversations/{conversation}
  final pulumi.Input<String>? name;

  /// Obfuscated user ID which the customer sent to us.
  final pulumi.Input<String>? obfuscatedUserId;
  final pulumi.Input<String>? project;

  /// The time at which the conversation started.
  final pulumi.Input<String>? startTime;

  /// Input only. The TTL for this resource. If specified, then this TTL will be used to calculate the expire time.
  final pulumi.Input<String>? ttl;

  /// Creates a new [ConversationArgs].
  /// [agentId] An opaque, user-specified string representing the human agent who handled the conversation.
  /// [callMetadata] Call-specific metadata.
  /// [conversationId] A unique ID for the new conversation. This ID will become the final component of the conversation's resource name. If no ID is specified, a server-generated ID will be used. This value should be 4-64 characters and must match the regular expression `^[a-z0-9-]{4,64}$`. Valid characters are `a-z-`
  /// [dataSource] The source of the audio and transcription for the conversation.
  /// [expireTime] The time at which this conversation should expire. After this time, the conversation data and any associated analyses will be deleted.
  /// [labels] A map for the user to specify any custom fields. A maximum of 20 labels per conversation is allowed, with a maximum of 256 characters per entry.
  /// [languageCode] A user-specified language code for the conversation.
  /// [location] Optional.
  /// [medium] Immutable. The conversation medium, if unspecified will default to PHONE_CALL.
  /// [name] Immutable. The resource name of the conversation. Format: projects/{project}/locations/{location}/conversations/{conversation}
  /// [obfuscatedUserId] Obfuscated user ID which the customer sent to us.
  /// [project] Optional.
  /// [startTime] The time at which the conversation started.
  /// [ttl] Input only. The TTL for this resource. If specified, then this TTL will be used to calculate the expire time.
  ConversationArgs({
    this.agentId,
    this.callMetadata,
    this.conversationId,
    this.dataSource,
    this.expireTime,
    this.labels,
    this.languageCode,
    this.location,
    this.medium,
    this.name,
    this.obfuscatedUserId,
    this.project,
    this.startTime,
    this.ttl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentId': ?agentId,
      'callMetadata':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudContactcenterinsightsV1ConversationCallMetadata,
            Map<String, dynamic>
          >(callMetadata, (value) => value.toMap()),
      'conversationId': ?conversationId,
      'dataSource':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudContactcenterinsightsV1ConversationDataSource,
            Map<String, dynamic>
          >(dataSource, (value) => value.toMap()),
      'expireTime': ?expireTime,
      'labels': ?labels,
      'languageCode': ?languageCode,
      'location': ?location,
      'medium': ?pulumi.Input.mapOptionalInputValue<ConversationMedium, String>(
        medium,
        (value) => value.wireValue,
      ),
      'name': ?name,
      'obfuscatedUserId': ?obfuscatedUserId,
      'project': ?project,
      'startTime': ?startTime,
      'ttl': ?ttl,
    };
  }

  factory ConversationArgs.fromMap(Map<String, dynamic> map) {
    return ConversationArgs(
      agentId: (() {
        final guardedValue = map['agentId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      callMetadata: (() {
        final guardedValue = map['callMetadata'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudContactcenterinsightsV1ConversationCallMetadata.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      conversationId: (() {
        final guardedValue = map['conversationId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dataSource: (() {
        final guardedValue = map['dataSource'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudContactcenterinsightsV1ConversationDataSource.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      expireTime: (() {
        final guardedValue = map['expireTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      languageCode: (() {
        final guardedValue = map['languageCode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      medium: (() {
        final guardedValue = map['medium'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ConversationMedium.fromValue(guardedValue as String),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      obfuscatedUserId: (() {
        final guardedValue = map['obfuscatedUserId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      startTime: (() {
        final guardedValue = map['startTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ttl: (() {
        final guardedValue = map['ttl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
