// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_dlp_predefined_profile_entry_confidence.dart';
import 'get_zero_trust_dlp_predefined_profile_entry_pattern.dart';
import 'get_zero_trust_dlp_predefined_profile_entry_variant.dart';

class GetZeroTrustDlpPredefinedProfileEntry {
  /// For `type: exactData`: Only applies to custom word lists.
  /// Determines if the words should be matched in a case-sensitive manner
  /// Cannot be set to false if secret is true
  final pulumi.Input<bool> caseSensitive;
  final pulumi.Input<GetZeroTrustDlpPredefinedProfileEntryConfidence> confidence;
  final pulumi.Input<String> createdAt;
  /// For `type: predefined`: Whether this entry is deprecated for new use. This is computed from the static catalog and
  /// emitted only when true.
  final pulumi.Input<bool> deprecated;
  /// For `type: customPromptTopic`: The optional description of the custom prompt topic entry.
  final pulumi.Input<String> description;
  final pulumi.Input<bool> enabled;
  /// The ID of this resource.
  final pulumi.Input<String> id;
  /// The name of the predefined profile.
  final pulumi.Input<String> name;
  final pulumi.Input<GetZeroTrustDlpPredefinedProfileEntryPattern> pattern;
  final pulumi.Input<String> profileId;
  final pulumi.Input<bool> secret;
  /// Available values: "custom", "customPromptTopic", "predefined", "integration", "exactData", "documentFingerprint", "wordList".
  final pulumi.Input<String> type;
  final pulumi.Input<String> updatedAt;
  /// For `type: custom`: Validators this entry references, by id, at most 10. An empty list means the entry
  /// references none.
  ///
  /// Returned by the entry endpoints. Not returned on entries embedded in other responses, such
  /// as profiles.
  final pulumi.Input<List<String>> validatorIds;
  /// For `type: predefined`: A Predefined AI prompt classification topic entry.
  final pulumi.Input<GetZeroTrustDlpPredefinedProfileEntryVariant> variant;
  final pulumi.Input<List<String>> wordLists;

  /// Creates a new [GetZeroTrustDlpPredefinedProfileEntry].
  /// [caseSensitive] For `type: exactData`: Only applies to custom word lists.
  /// [confidence] Required.
  /// [createdAt] Required.
  /// [deprecated] For `type: predefined`: Whether this entry is deprecated for new use. This is computed from the static catalog and
  /// [description] For `type: customPromptTopic`: The optional description of the custom prompt topic entry.
  /// [enabled] Required.
  /// [id] The ID of this resource.
  /// [name] The name of the predefined profile.
  /// [pattern] Required.
  /// [profileId] Required.
  /// [secret] Required.
  /// [type] Available values: "custom", "customPromptTopic", "predefined", "integration", "exactData", "documentFingerprint", "wordList".
  /// [updatedAt] Required.
  /// [validatorIds] For `type: custom`: Validators this entry references, by id, at most 10. An empty list means the entry
  /// [variant] For `type: predefined`: A Predefined AI prompt classification topic entry.
  /// [wordLists] Required.
  const GetZeroTrustDlpPredefinedProfileEntry({
    required this.caseSensitive,
    required this.confidence,
    required this.createdAt,
    required this.deprecated,
    required this.description,
    required this.enabled,
    required this.id,
    required this.name,
    required this.pattern,
    required this.profileId,
    required this.secret,
    required this.type,
    required this.updatedAt,
    required this.validatorIds,
    required this.variant,
    required this.wordLists,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caseSensitive': caseSensitive,
      'confidence': pulumi.Input.mapInputValue<GetZeroTrustDlpPredefinedProfileEntryConfidence, Map<String, dynamic>>(confidence, (value) => value.toMap()),
      'createdAt': createdAt,
      'deprecated': deprecated,
      'description': description,
      'enabled': enabled,
      'id': id,
      'name': name,
      'pattern': pulumi.Input.mapInputValue<GetZeroTrustDlpPredefinedProfileEntryPattern, Map<String, dynamic>>(pattern, (value) => value.toMap()),
      'profileId': profileId,
      'secret': secret,
      'type': type,
      'updatedAt': updatedAt,
      'validatorIds': validatorIds,
      'variant': pulumi.Input.mapInputValue<GetZeroTrustDlpPredefinedProfileEntryVariant, Map<String, dynamic>>(variant, (value) => value.toMap()),
      'wordLists': wordLists,
    };
  }

  factory GetZeroTrustDlpPredefinedProfileEntry.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDlpPredefinedProfileEntry(
      caseSensitive: pulumi.Input.fromValue(map['caseSensitive'] as bool),
      confidence: pulumi.Input.fromValue(GetZeroTrustDlpPredefinedProfileEntryConfidence.fromMap((map['confidence']! as Map).cast<String, dynamic>())),
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      deprecated: pulumi.Input.fromValue(map['deprecated'] as bool),
      description: pulumi.Input.fromValue(map['description'] as String),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      pattern: pulumi.Input.fromValue(GetZeroTrustDlpPredefinedProfileEntryPattern.fromMap((map['pattern']! as Map).cast<String, dynamic>())),
      profileId: pulumi.Input.fromValue(map['profileId'] as String),
      secret: pulumi.Input.fromValue(map['secret'] as bool),
      type: pulumi.Input.fromValue(map['type'] as String),
      updatedAt: pulumi.Input.fromValue(map['updatedAt'] as String),
      validatorIds: pulumi.Input.fromValue((map['validatorIds'] as List).cast<String>()),
      variant: pulumi.Input.fromValue(GetZeroTrustDlpPredefinedProfileEntryVariant.fromMap((map['variant']! as Map).cast<String, dynamic>())),
      wordLists: pulumi.Input.fromValue((map['wordLists'] as List).cast<String>()),
    );
  }
}
