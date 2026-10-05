// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_contactcenterinsights_v1_analysis_response.dart';
import 'google_cloud_contactcenterinsights_v1_conversation_call_metadata_response.dart';
import 'google_cloud_contactcenterinsights_v1_conversation_data_source_response.dart';
import 'google_cloud_contactcenterinsights_v1_conversation_summarization_suggestion_data_response.dart';
import 'google_cloud_contactcenterinsights_v1_conversation_transcript_response.dart';
import 'google_cloud_contactcenterinsights_v1_runtime_annotation_response.dart';

/// Result data returned by getConversation.
class GetConversationResult {
  /// An opaque, user-specified string representing the human agent who handled the conversation.
  final String? agentId;
  /// Call-specific metadata.
  final GoogleCloudContactcenterinsightsV1ConversationCallMetadataResponse? callMetadata;
  /// The time at which the conversation was created.
  final String? createTime;
  /// The source of the audio and transcription for the conversation.
  final GoogleCloudContactcenterinsightsV1ConversationDataSourceResponse? dataSource;
  /// All the matched Dialogflow intents in the call. The key corresponds to a Dialogflow intent, format: projects/{project}/agent/{agent}/intents/{intent}
  final Map<String, String>? dialogflowIntents;
  /// The duration of the conversation.
  final String? duration;
  /// The time at which this conversation should expire. After this time, the conversation data and any associated analyses will be deleted.
  final String? expireTime;
  /// A map for the user to specify any custom fields. A maximum of 20 labels per conversation is allowed, with a maximum of 256 characters per entry.
  final Map<String, String>? labels;
  /// A user-specified language code for the conversation.
  final String? languageCode;
  /// The conversation's latest analysis, if one exists.
  final GoogleCloudContactcenterinsightsV1AnalysisResponse? latestAnalysis;
  /// Latest summary of the conversation.
  final GoogleCloudContactcenterinsightsV1ConversationSummarizationSuggestionDataResponse? latestSummary;
  /// Immutable. The conversation medium, if unspecified will default to PHONE_CALL.
  final String? medium;
  /// Immutable. The resource name of the conversation. Format: projects/{project}/locations/{location}/conversations/{conversation}
  final String? name;
  /// Obfuscated user ID which the customer sent to us.
  final String? obfuscatedUserId;
  /// The annotations that were generated during the customer and agent interaction.
  final List<GoogleCloudContactcenterinsightsV1RuntimeAnnotationResponse>? runtimeAnnotations;
  /// The time at which the conversation started.
  final String? startTime;
  /// The conversation transcript.
  final GoogleCloudContactcenterinsightsV1ConversationTranscriptResponse? transcript;
  /// Input only. The TTL for this resource. If specified, then this TTL will be used to calculate the expire time.
  final String? ttl;
  /// The number of turns in the conversation.
  final int? turnCount;
  /// The most recent time at which the conversation was updated.
  final String? updateTime;

  /// Creates a new [GetConversationResult].
  /// [agentId] An opaque, user-specified string representing the human agent who handled the conversation.
  /// [callMetadata] Call-specific metadata.
  /// [createTime] The time at which the conversation was created.
  /// [dataSource] The source of the audio and transcription for the conversation.
  /// [dialogflowIntents] All the matched Dialogflow intents in the call. The key corresponds to a Dialogflow intent, format: projects/{project}/agent/{agent}/intents/{intent}
  /// [duration] The duration of the conversation.
  /// [expireTime] The time at which this conversation should expire. After this time, the conversation data and any associated analyses will be deleted.
  /// [labels] A map for the user to specify any custom fields. A maximum of 20 labels per conversation is allowed, with a maximum of 256 characters per entry.
  /// [languageCode] A user-specified language code for the conversation.
  /// [latestAnalysis] The conversation's latest analysis, if one exists.
  /// [latestSummary] Latest summary of the conversation.
  /// [medium] Immutable. The conversation medium, if unspecified will default to PHONE_CALL.
  /// [name] Immutable. The resource name of the conversation. Format: projects/{project}/locations/{location}/conversations/{conversation}
  /// [obfuscatedUserId] Obfuscated user ID which the customer sent to us.
  /// [runtimeAnnotations] The annotations that were generated during the customer and agent interaction.
  /// [startTime] The time at which the conversation started.
  /// [transcript] The conversation transcript.
  /// [ttl] Input only. The TTL for this resource. If specified, then this TTL will be used to calculate the expire time.
  /// [turnCount] The number of turns in the conversation.
  /// [updateTime] The most recent time at which the conversation was updated.
  const GetConversationResult({
    this.agentId,
    this.callMetadata,
    this.createTime,
    this.dataSource,
    this.dialogflowIntents,
    this.duration,
    this.expireTime,
    this.labels,
    this.languageCode,
    this.latestAnalysis,
    this.latestSummary,
    this.medium,
    this.name,
    this.obfuscatedUserId,
    this.runtimeAnnotations,
    this.startTime,
    this.transcript,
    this.ttl,
    this.turnCount,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentId': ?agentId,
      'callMetadata': ?callMetadata?.toMap(),
      'createTime': ?createTime,
      'dataSource': ?dataSource?.toMap(),
      'dialogflowIntents': ?dialogflowIntents,
      'duration': ?duration,
      'expireTime': ?expireTime,
      'labels': ?labels,
      'languageCode': ?languageCode,
      'latestAnalysis': ?latestAnalysis?.toMap(),
      'latestSummary': ?latestSummary?.toMap(),
      'medium': ?medium,
      'name': ?name,
      'obfuscatedUserId': ?obfuscatedUserId,
      'runtimeAnnotations': ?(() { final guardedValue = runtimeAnnotations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GoogleCloudContactcenterinsightsV1RuntimeAnnotationResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'startTime': ?startTime,
      'transcript': ?transcript?.toMap(),
      'ttl': ?ttl,
      'turnCount': ?turnCount,
      'updateTime': ?updateTime,
    };
  }

  factory GetConversationResult.fromMap(Map<String, dynamic> map) {
    return GetConversationResult(
      agentId: (() { final guardedValue = map['agentId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      callMetadata: (() { final guardedValue = map['callMetadata']; if (guardedValue == null) return null; return GoogleCloudContactcenterinsightsV1ConversationCallMetadataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataSource: (() { final guardedValue = map['dataSource']; if (guardedValue == null) return null; return GoogleCloudContactcenterinsightsV1ConversationDataSourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      dialogflowIntents: (() { final guardedValue = map['dialogflowIntents']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      duration: (() { final guardedValue = map['duration']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expireTime: (() { final guardedValue = map['expireTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      languageCode: (() { final guardedValue = map['languageCode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      latestAnalysis: (() { final guardedValue = map['latestAnalysis']; if (guardedValue == null) return null; return GoogleCloudContactcenterinsightsV1AnalysisResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      latestSummary: (() { final guardedValue = map['latestSummary']; if (guardedValue == null) return null; return GoogleCloudContactcenterinsightsV1ConversationSummarizationSuggestionDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      medium: (() { final guardedValue = map['medium']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      obfuscatedUserId: (() { final guardedValue = map['obfuscatedUserId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      runtimeAnnotations: (() { final guardedValue = map['runtimeAnnotations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GoogleCloudContactcenterinsightsV1RuntimeAnnotationResponse>(guardedValue, (value) => GoogleCloudContactcenterinsightsV1RuntimeAnnotationResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      transcript: (() { final guardedValue = map['transcript']; if (guardedValue == null) return null; return GoogleCloudContactcenterinsightsV1ConversationTranscriptResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      ttl: (() { final guardedValue = map['ttl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      turnCount: (() { final guardedValue = map['turnCount']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
