// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'participant_role.dart';

/// {@template pulumi_dialogflow_v2_participant_args_doc}
/// The set of arguments for Participant.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v2_participant_args_doc}
class ParticipantArgs {
  final pulumi.Input<String> conversationId;
  /// Optional. Key-value filters on the metadata of documents returned by article suggestion. If specified, article suggestion only returns suggested documents that match all filters in their Document.metadata. Multiple values for a metadata key should be concatenated by comma. For example, filters to match all documents that have 'US' or 'CA' in their market metadata values and 'agent' in their user metadata values will be ``` documents_metadata_filters { key: "market" value: "US,CA" } documents_metadata_filters { key: "user" value: "agent" } ```
  final pulumi.Input<Map<String, String>>? documentsMetadataFilters;
  final pulumi.Input<String>? location;
  /// Optional. The unique identifier of this participant. Format: `projects//locations//conversations//participants/`.
  final pulumi.Input<String>? name;
  /// Optional. Obfuscated user id that should be associated with the created participant. You can specify a user id as follows: 1. If you set this field in CreateParticipantRequest or UpdateParticipantRequest, Dialogflow adds the obfuscated user id with the participant. 2. If you set this field in AnalyzeContent or StreamingAnalyzeContent, Dialogflow will update Participant.obfuscated_external_user_id. Dialogflow returns an error if you try to add a user id for a non-END_USER participant. Dialogflow uses this user id for billing and measurement purposes. For example, Dialogflow determines whether a user in one conversation returned in a later conversation. Note: * Please never pass raw user ids to Dialogflow. Always obfuscate your user id first. * Dialogflow only accepts a UTF-8 encoded string, e.g., a hex digest of a hash function like SHA-512. * The length of the user id must be <= 256 characters.
  final pulumi.Input<String>? obfuscatedExternalUserId;
  final pulumi.Input<String>? project;
  /// Immutable. The role this participant plays in the conversation. This field must be set during participant creation and is then immutable.
  final pulumi.Input<ParticipantRole>? role;
  /// Optional. Label applied to streams representing this participant in SIPREC XML metadata and SDP. This is used to assign transcriptions from that media stream to this participant. This field can be updated.
  final pulumi.Input<String>? sipRecordingMediaLabel;

  /// Creates a new [ParticipantArgs].
  /// [conversationId] Required.
  /// [documentsMetadataFilters] Optional. Key-value filters on the metadata of documents returned by article suggestion. If specified, article suggestion only returns suggested documents that match all filters in their Document.metadata. Multiple values for a metadata key should be concatenated by comma. For example, filters to match all documents that have 'US' or 'CA' in their market metadata values and 'agent' in their user metadata values will be ``` documents_metadata_filters { key: "market" value: "US,CA" } documents_metadata_filters { key: "user" value: "agent" } ```
  /// [location] Optional.
  /// [name] Optional. The unique identifier of this participant. Format: `projects//locations//conversations//participants/`.
  /// [obfuscatedExternalUserId] Optional. Obfuscated user id that should be associated with the created participant. You can specify a user id as follows: 1. If you set this field in CreateParticipantRequest or UpdateParticipantRequest, Dialogflow adds the obfuscated user id with the participant. 2. If you set this field in AnalyzeContent or StreamingAnalyzeContent, Dialogflow will update Participant.obfuscated_external_user_id. Dialogflow returns an error if you try to add a user id for a non-END_USER participant. Dialogflow uses this user id for billing and measurement purposes. For example, Dialogflow determines whether a user in one conversation returned in a later conversation. Note: * Please never pass raw user ids to Dialogflow. Always obfuscate your user id first. * Dialogflow only accepts a UTF-8 encoded string, e.g., a hex digest of a hash function like SHA-512. * The length of the user id must be <= 256 characters.
  /// [project] Optional.
  /// [role] Immutable. The role this participant plays in the conversation. This field must be set during participant creation and is then immutable.
  /// [sipRecordingMediaLabel] Optional. Label applied to streams representing this participant in SIPREC XML metadata and SDP. This is used to assign transcriptions from that media stream to this participant. This field can be updated.
  ParticipantArgs({
    required this.conversationId,
    this.documentsMetadataFilters,
    this.location,
    this.name,
    this.obfuscatedExternalUserId,
    this.project,
    this.role,
    this.sipRecordingMediaLabel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conversationId': conversationId,
      'documentsMetadataFilters': ?documentsMetadataFilters,
      'location': ?location,
      'name': ?name,
      'obfuscatedExternalUserId': ?obfuscatedExternalUserId,
      'project': ?project,
      'role': ?pulumi.Input.mapOptionalInputValue<ParticipantRole, String>(role, (value) => value.value),
      'sipRecordingMediaLabel': ?sipRecordingMediaLabel,
    };
  }

  factory ParticipantArgs.fromMap(Map<String, dynamic> map) {
    return ParticipantArgs(
      conversationId: (map['conversationId'] as String).input(),
      documentsMetadataFilters: map['documentsMetadataFilters'] == null ? null : ((map['documentsMetadataFilters'] as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      obfuscatedExternalUserId: map['obfuscatedExternalUserId'] == null ? null : (map['obfuscatedExternalUserId'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      role: map['role'] == null ? null : (ParticipantRole.fromValue(map['role'] as String)).input(),
      sipRecordingMediaLabel: map['sipRecordingMediaLabel'] == null ? null : (map['sipRecordingMediaLabel'] as String).input(),
    );
  }
}

