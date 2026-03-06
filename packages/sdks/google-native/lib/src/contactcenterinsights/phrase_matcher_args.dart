// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_contactcenterinsights_v1_phrase_match_rule_group.dart';
import 'phrase_matcher_role_match.dart';
import 'phrase_matcher_type.dart';

/// {@template pulumi_contactcenterinsights_v1_phrase_matcher_args_doc}
/// The set of arguments for PhraseMatcher.
/// {@endtemplate}
/// {@macro pulumi_contactcenterinsights_v1_phrase_matcher_args_doc}
class PhraseMatcherArgs {
  /// Applies the phrase matcher only when it is active.
  final pulumi.Input<bool>? active;
  /// The human-readable name of the phrase matcher.
  final pulumi.Input<String>? displayName;
  final pulumi.Input<String>? location;
  /// The resource name of the phrase matcher. Format: projects/{project}/locations/{location}/phraseMatchers/{phrase_matcher}
  final pulumi.Input<String>? name;
  /// A list of phase match rule groups that are included in this matcher.
  final pulumi.Input<List<GoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup>>? phraseMatchRuleGroups;
  final pulumi.Input<String>? project;
  /// The role whose utterances the phrase matcher should be matched against. If the role is ROLE_UNSPECIFIED it will be matched against any utterances in the transcript.
  final pulumi.Input<PhraseMatcherRoleMatch>? roleMatch;
  /// The type of this phrase matcher.
  final pulumi.Input<PhraseMatcherType> type;
  /// The customized version tag to use for the phrase matcher. If not specified, it will default to `revision_id`.
  final pulumi.Input<String>? versionTag;

  /// Creates a new [PhraseMatcherArgs].
  /// [active] Applies the phrase matcher only when it is active.
  /// [displayName] The human-readable name of the phrase matcher.
  /// [location] Optional.
  /// [name] The resource name of the phrase matcher. Format: projects/{project}/locations/{location}/phraseMatchers/{phrase_matcher}
  /// [phraseMatchRuleGroups] A list of phase match rule groups that are included in this matcher.
  /// [project] Optional.
  /// [roleMatch] The role whose utterances the phrase matcher should be matched against. If the role is ROLE_UNSPECIFIED it will be matched against any utterances in the transcript.
  /// [type] The type of this phrase matcher.
  /// [versionTag] The customized version tag to use for the phrase matcher. If not specified, it will default to `revision_id`.
  const PhraseMatcherArgs({
    this.active,
    this.displayName,
    this.location,
    this.name,
    this.phraseMatchRuleGroups,
    this.project,
    this.roleMatch,
    required this.type,
    this.versionTag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'active': ?active,
      'displayName': ?displayName,
      'location': ?location,
      'name': ?name,
      'phraseMatchRuleGroups': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup>, List<Map<String, dynamic>>>(phraseMatchRuleGroups, (value) => pulumi.Input.encodeList<GoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'project': ?project,
      'roleMatch': ?pulumi.Input.mapOptionalInputValue<PhraseMatcherRoleMatch, String>(roleMatch, (value) => value.wireValue),
      'type': pulumi.Input.mapInputValue<PhraseMatcherType, String>(type, (value) => value.wireValue),
      'versionTag': ?versionTag,
    };
  }

  factory PhraseMatcherArgs.fromMap(Map<String, dynamic> map) {
    return PhraseMatcherArgs(
      active: (() { final guardedValue = map['active']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      phraseMatchRuleGroups: (() { final guardedValue = map['phraseMatchRuleGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup>(guardedValue, (value) => GoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup.fromMap((value as Map).cast<String, dynamic>()))); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleMatch: (() { final guardedValue = map['roleMatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PhraseMatcherRoleMatch.fromValue(guardedValue as String)); })(),
      type: pulumi.Input.fromValue(PhraseMatcherType.fromValue(map['type']! as String)),
      versionTag: (() { final guardedValue = map['versionTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

