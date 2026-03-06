// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GuardrailContentFilter {
  /// List of banned phrases. Applies to both user inputs and agent responses.
  final pulumi.Input<List<String>>? bannedContents;
  /// List of banned phrases. Applies only to agent responses.
  final pulumi.Input<List<String>>? bannedContentsInAgentResponses;
  /// List of banned phrases. Applies only to user inputs.
  final pulumi.Input<List<String>>? bannedContentsInUserInputs;
  /// If true, diacritics are ignored during matching.
  final pulumi.Input<bool>? disregardDiacritics;
  /// Match type for the content filter.
  /// Possible values:
  /// SIMPLE_STRING_MATCH
  /// WORD_BOUNDARY_STRING_MATCH
  /// REGEXP_MATCH
  final pulumi.Input<String> matchType;

  /// Creates a new [GuardrailContentFilter].
  /// [bannedContents] List of banned phrases. Applies to both user inputs and agent responses.
  /// [bannedContentsInAgentResponses] List of banned phrases. Applies only to agent responses.
  /// [bannedContentsInUserInputs] List of banned phrases. Applies only to user inputs.
  /// [disregardDiacritics] If true, diacritics are ignored during matching.
  /// [matchType] Match type for the content filter.
  const GuardrailContentFilter({
    this.bannedContents,
    this.bannedContentsInAgentResponses,
    this.bannedContentsInUserInputs,
    this.disregardDiacritics,
    required this.matchType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bannedContents': ?bannedContents,
      'bannedContentsInAgentResponses': ?bannedContentsInAgentResponses,
      'bannedContentsInUserInputs': ?bannedContentsInUserInputs,
      'disregardDiacritics': ?disregardDiacritics,
      'matchType': matchType,
    };
  }

  factory GuardrailContentFilter.fromMap(Map<String, dynamic> map) {
    return GuardrailContentFilter(
      bannedContents: (() { final guardedValue = map['bannedContents']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      bannedContentsInAgentResponses: (() { final guardedValue = map['bannedContentsInAgentResponses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      bannedContentsInUserInputs: (() { final guardedValue = map['bannedContentsInUserInputs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      disregardDiacritics: (() { final guardedValue = map['disregardDiacritics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      matchType: pulumi.Input.fromValue(map['matchType'] as String),
    );
  }
}

