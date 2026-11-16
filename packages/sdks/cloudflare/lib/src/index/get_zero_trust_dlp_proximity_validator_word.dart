// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustDlpProximityValidatorWord {
  /// How much a word contributes to a match's confidence when it is found nearby.
  final pulumi.Input<String> weight;
  /// The word or phrase to look for. Must contain 1–128 characters and is matched
  /// case-insensitively.
  final pulumi.Input<String> word;

  /// Creates a new [GetZeroTrustDlpProximityValidatorWord].
  /// [weight] How much a word contributes to a match's confidence when it is found nearby.
  /// [word] The word or phrase to look for. Must contain 1–128 characters and is matched
  const GetZeroTrustDlpProximityValidatorWord({
    required this.weight,
    required this.word,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'weight': weight,
      'word': word,
    };
  }

  factory GetZeroTrustDlpProximityValidatorWord.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDlpProximityValidatorWord(
      weight: pulumi.Input.fromValue(map['weight'] as String),
      word: pulumi.Input.fromValue(map['word'] as String),
    );
  }
}
