// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_contactcenterinsights_v1_phrase_match_rule_group_response.dart';

/// Result data returned by getPhraseMatcher.
class GetPhraseMatcherResult {
  /// The most recent time at which the activation status was updated.
  final String activationUpdateTime;
  /// Applies the phrase matcher only when it is active.
  final bool active;
  /// The human-readable name of the phrase matcher.
  final String displayName;
  /// The resource name of the phrase matcher. Format: projects/{project}/locations/{location}/phraseMatchers/{phrase_matcher}
  final String name;
  /// A list of phase match rule groups that are included in this matcher.
  final List<GoogleCloudContactcenterinsightsV1PhraseMatchRuleGroupResponse> phraseMatchRuleGroups;
  /// The timestamp of when the revision was created. It is also the create time when a new matcher is added.
  final String revisionCreateTime;
  /// Immutable. The revision ID of the phrase matcher. A new revision is committed whenever the matcher is changed, except when it is activated or deactivated. A server generated random ID will be used. Example: locations/global/phraseMatchers/my-first-matcher@1234567
  final String revisionId;
  /// The role whose utterances the phrase matcher should be matched against. If the role is ROLE_UNSPECIFIED it will be matched against any utterances in the transcript.
  final String roleMatch;
  /// The type of this phrase matcher.
  final String type;
  /// The most recent time at which the phrase matcher was updated.
  final String updateTime;
  /// The customized version tag to use for the phrase matcher. If not specified, it will default to `revision_id`.
  final String versionTag;

  /// Creates a new [GetPhraseMatcherResult].
  /// [activationUpdateTime] The most recent time at which the activation status was updated.
  /// [active] Applies the phrase matcher only when it is active.
  /// [displayName] The human-readable name of the phrase matcher.
  /// [name] The resource name of the phrase matcher. Format: projects/{project}/locations/{location}/phraseMatchers/{phrase_matcher}
  /// [phraseMatchRuleGroups] A list of phase match rule groups that are included in this matcher.
  /// [revisionCreateTime] The timestamp of when the revision was created. It is also the create time when a new matcher is added.
  /// [revisionId] Immutable. The revision ID of the phrase matcher. A new revision is committed whenever the matcher is changed, except when it is activated or deactivated. A server generated random ID will be used. Example: locations/global/phraseMatchers/my-first-matcher@1234567
  /// [roleMatch] The role whose utterances the phrase matcher should be matched against. If the role is ROLE_UNSPECIFIED it will be matched against any utterances in the transcript.
  /// [type] The type of this phrase matcher.
  /// [updateTime] The most recent time at which the phrase matcher was updated.
  /// [versionTag] The customized version tag to use for the phrase matcher. If not specified, it will default to `revision_id`.
  const GetPhraseMatcherResult({
    required this.activationUpdateTime,
    required this.active,
    required this.displayName,
    required this.name,
    required this.phraseMatchRuleGroups,
    required this.revisionCreateTime,
    required this.revisionId,
    required this.roleMatch,
    required this.type,
    required this.updateTime,
    required this.versionTag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activationUpdateTime': activationUpdateTime,
      'active': active,
      'displayName': displayName,
      'name': name,
      'phraseMatchRuleGroups': pulumi.Input.encodeList<GoogleCloudContactcenterinsightsV1PhraseMatchRuleGroupResponse, Map<String, dynamic>>(phraseMatchRuleGroups, (value) => value.toMap()),
      'revisionCreateTime': revisionCreateTime,
      'revisionId': revisionId,
      'roleMatch': roleMatch,
      'type': type,
      'updateTime': updateTime,
      'versionTag': versionTag,
    };
  }

  factory GetPhraseMatcherResult.fromMap(Map<String, dynamic> map) {
    return GetPhraseMatcherResult(
      activationUpdateTime: map['activationUpdateTime'] as String,
      active: map['active'] as bool,
      displayName: map['displayName'] as String,
      name: map['name'] as String,
      phraseMatchRuleGroups: pulumi.Input.decodeList<GoogleCloudContactcenterinsightsV1PhraseMatchRuleGroupResponse>(map['phraseMatchRuleGroups']!, (value) => GoogleCloudContactcenterinsightsV1PhraseMatchRuleGroupResponse.fromMap((value as Map).cast<String, dynamic>())),
      revisionCreateTime: map['revisionCreateTime'] as String,
      revisionId: map['revisionId'] as String,
      roleMatch: map['roleMatch'] as String,
      type: map['type'] as String,
      updateTime: map['updateTime'] as String,
      versionTag: map['versionTag'] as String,
    );
  }
}
