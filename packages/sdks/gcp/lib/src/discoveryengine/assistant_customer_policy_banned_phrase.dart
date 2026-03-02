// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AssistantCustomerPolicyBannedPhrase {
  /// If true, diacritical marks (e.g., accents, umlauts) are ignored when
  /// matching banned phrases. For example, "cafe" would match "café".
  final pulumi.Input<bool>? ignoreDiacritics;
  /// Match type for the banned phrase.
  /// The supported values: 'SIMPLE_STRING_MATCH', 'WORD_BOUNDARY_STRING_MATCH'.
  final pulumi.Input<String>? matchType;
  /// The raw string content to be banned.
  final pulumi.Input<String> phrase;

  /// Creates a new [AssistantCustomerPolicyBannedPhrase].
  /// [ignoreDiacritics] If true, diacritical marks (e.g., accents, umlauts) are ignored when
  /// [matchType] Match type for the banned phrase.
  /// [phrase] The raw string content to be banned.
  AssistantCustomerPolicyBannedPhrase({
    this.ignoreDiacritics,
    this.matchType,
    required this.phrase,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ignoreDiacritics': ?ignoreDiacritics,
      'matchType': ?matchType,
      'phrase': phrase,
    };
  }

  factory AssistantCustomerPolicyBannedPhrase.fromMap(Map<String, dynamic> map) {
    return AssistantCustomerPolicyBannedPhrase(
      ignoreDiacritics: map['ignoreDiacritics'] == null ? null : (map['ignoreDiacritics'] as bool).input(),
      matchType: map['matchType'] == null ? null : (map['matchType'] as String).input(),
      phrase: (map['phrase'] as String).input(),
    );
  }
}

