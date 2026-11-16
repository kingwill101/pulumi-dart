// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_dlp_proximity_validator_word.dart';

/// {@template pulumi_index_zero_trust_dlp_proximity_validator_zero_trust_dlp_proximity_validator_args_doc}
/// The set of arguments for ZeroTrustDlpProximityValidator.
/// {@endtemplate}
/// {@macro pulumi_index_zero_trust_dlp_proximity_validator_zero_trust_dlp_proximity_validator_args_doc}
class ZeroTrustDlpProximityValidatorArgs {
  final pulumi.Input<String> accountId;
  /// A name for this validator, at most 50 characters.
  final pulumi.Input<String> name;
  /// The words that raise confidence when found near a match, at most 100 per validator. Matching
  /// ignores case, so the list may not contain the same word twice with different capitalisation.
  /// Words are stored as sent.
  final pulumi.Input<List<ZeroTrustDlpProximityValidatorWord>> words;

  /// Creates a new [ZeroTrustDlpProximityValidatorArgs].
  /// [accountId] Required.
  /// [name] A name for this validator, at most 50 characters.
  /// [words] The words that raise confidence when found near a match, at most 100 per validator. Matching
  const ZeroTrustDlpProximityValidatorArgs({
    required this.accountId,
    required this.name,
    required this.words,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'name': name,
      'words': pulumi.Input.mapInputValue<List<ZeroTrustDlpProximityValidatorWord>, List<Map<String, dynamic>>>(words, (value) => pulumi.Input.encodeList<ZeroTrustDlpProximityValidatorWord, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ZeroTrustDlpProximityValidatorArgs.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDlpProximityValidatorArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      words: pulumi.Input.fromValue(pulumi.Input.decodeList<ZeroTrustDlpProximityValidatorWord>(map['words']!, (value) => ZeroTrustDlpProximityValidatorWord.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
