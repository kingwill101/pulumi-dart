// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppVersionSnapshotGuardrailContentFilter {
  /// (Output)
  /// List of banned phrases. Applies to both user inputs and agent responses.
  final pulumi.Input<List<String>>? bannedContents;
  /// (Output)
  /// List of banned phrases. Applies only to agent responses.
  final pulumi.Input<List<String>>? bannedContentsInAgentResponses;
  /// (Output)
  /// List of banned phrases. Applies only to user inputs.
  final pulumi.Input<List<String>>? bannedContentsInUserInputs;
  /// (Output)
  /// If true, diacritics are ignored during matching.
  final pulumi.Input<bool>? disregardDiacritics;
  /// (Output)
  /// Match type for the content filter.
  /// Possible values:
  /// SIMPLE_STRING_MATCH
  /// WORD_BOUNDARY_STRING_MATCH
  /// REGEXP_MATCH
  final pulumi.Input<String>? matchType;

  /// Creates a new [AppVersionSnapshotGuardrailContentFilter].
  /// [bannedContents] (Output)
  /// [bannedContentsInAgentResponses] (Output)
  /// [bannedContentsInUserInputs] (Output)
  /// [disregardDiacritics] (Output)
  /// [matchType] (Output)
  const AppVersionSnapshotGuardrailContentFilter({
    this.bannedContents,
    this.bannedContentsInAgentResponses,
    this.bannedContentsInUserInputs,
    this.disregardDiacritics,
    this.matchType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bannedContents': ?bannedContents,
      'bannedContentsInAgentResponses': ?bannedContentsInAgentResponses,
      'bannedContentsInUserInputs': ?bannedContentsInUserInputs,
      'disregardDiacritics': ?disregardDiacritics,
      'matchType': ?matchType,
    };
  }

  factory AppVersionSnapshotGuardrailContentFilter.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotGuardrailContentFilter(
      bannedContents: (() { final guardedValue = map['bannedContents']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      bannedContentsInAgentResponses: (() { final guardedValue = map['bannedContentsInAgentResponses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      bannedContentsInUserInputs: (() { final guardedValue = map['bannedContentsInUserInputs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      disregardDiacritics: (() { final guardedValue = map['disregardDiacritics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      matchType: (() { final guardedValue = map['matchType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
