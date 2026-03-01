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
  final pulumi.Input<GoogleCloudContactcenterinsightsV1ConversationCallMetadata>? callMetadata;
  /// A unique ID for the new conversation. This ID will become the final component of the conversation's resource name. If no ID is specified, a server-generated ID will be used. This value should be 4-64 characters and must match the regular expression `^[a-z0-9-]{4,64}$`. Valid characters are `a-z-`
  final pulumi.Input<String>? conversationId;
  /// The source of the audio and transcription for the conversation.
  final pulumi.Input<GoogleCloudContactcenterinsightsV1ConversationDataSource>? dataSource;
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
    pulumi.Output<String>? agentId,
    pulumi.Output<GoogleCloudContactcenterinsightsV1ConversationCallMetadata>? callMetadata,
    pulumi.Output<String>? conversationId,
    pulumi.Output<GoogleCloudContactcenterinsightsV1ConversationDataSource>? dataSource,
    pulumi.Output<String>? expireTime,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? languageCode,
    pulumi.Output<String>? location,
    pulumi.Output<ConversationMedium>? medium,
    pulumi.Output<String>? name,
    pulumi.Output<String>? obfuscatedUserId,
    pulumi.Output<String>? project,
    pulumi.Output<String>? startTime,
    pulumi.Output<String>? ttl,
  }) :
      agentId = pulumi.Input.asOptionalInput<String>(agentId),
      callMetadata = pulumi.Input.asOptionalInput<GoogleCloudContactcenterinsightsV1ConversationCallMetadata>(callMetadata),
      conversationId = pulumi.Input.asOptionalInput<String>(conversationId),
      dataSource = pulumi.Input.asOptionalInput<GoogleCloudContactcenterinsightsV1ConversationDataSource>(dataSource),
      expireTime = pulumi.Input.asOptionalInput<String>(expireTime),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      languageCode = pulumi.Input.asOptionalInput<String>(languageCode),
      location = pulumi.Input.asOptionalInput<String>(location),
      medium = pulumi.Input.asOptionalInput<ConversationMedium>(medium),
      name = pulumi.Input.asOptionalInput<String>(name),
      obfuscatedUserId = pulumi.Input.asOptionalInput<String>(obfuscatedUserId),
      project = pulumi.Input.asOptionalInput<String>(project),
      startTime = pulumi.Input.asOptionalInput<String>(startTime),
      ttl = pulumi.Input.asOptionalInput<String>(ttl);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentId': ?agentId,
      'callMetadata': ?pulumi.Input.mapOptionalInputValue<GoogleCloudContactcenterinsightsV1ConversationCallMetadata, Map<String, dynamic>>(callMetadata, (value) => value.toMap()),
      'conversationId': ?conversationId,
      'dataSource': ?pulumi.Input.mapOptionalInputValue<GoogleCloudContactcenterinsightsV1ConversationDataSource, Map<String, dynamic>>(dataSource, (value) => value.toMap()),
      'expireTime': ?expireTime,
      'labels': ?labels,
      'languageCode': ?languageCode,
      'location': ?location,
      'medium': ?pulumi.Input.mapOptionalInputValue<ConversationMedium, String>(medium, (value) => value.value),
      'name': ?name,
      'obfuscatedUserId': ?obfuscatedUserId,
      'project': ?project,
      'startTime': ?startTime,
      'ttl': ?ttl,
    };
  }

  factory ConversationArgs.fromMap(Map<String, dynamic> map) {
    return ConversationArgs(
      agentId: map['agentId'] == null ? null : pulumi.Output.create<String>(map['agentId'] as String),
      callMetadata: map['callMetadata'] == null ? null : pulumi.Output.create<GoogleCloudContactcenterinsightsV1ConversationCallMetadata>(GoogleCloudContactcenterinsightsV1ConversationCallMetadata.fromMap((map['callMetadata'] as Map).cast<String, dynamic>())),
      conversationId: map['conversationId'] == null ? null : pulumi.Output.create<String>(map['conversationId'] as String),
      dataSource: map['dataSource'] == null ? null : pulumi.Output.create<GoogleCloudContactcenterinsightsV1ConversationDataSource>(GoogleCloudContactcenterinsightsV1ConversationDataSource.fromMap((map['dataSource'] as Map).cast<String, dynamic>())),
      expireTime: map['expireTime'] == null ? null : pulumi.Output.create<String>(map['expireTime'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      languageCode: map['languageCode'] == null ? null : pulumi.Output.create<String>(map['languageCode'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      medium: map['medium'] == null ? null : pulumi.Output.create<ConversationMedium>(ConversationMedium.fromValue(map['medium'] as String)),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      obfuscatedUserId: map['obfuscatedUserId'] == null ? null : pulumi.Output.create<String>(map['obfuscatedUserId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      startTime: map['startTime'] == null ? null : pulumi.Output.create<String>(map['startTime'] as String),
      ttl: map['ttl'] == null ? null : pulumi.Output.create<String>(map['ttl'] as String),
    );
  }
}

