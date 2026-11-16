// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_dlp_proximity_validator_referenced_by.dart';
import 'zero_trust_dlp_proximity_validator_word.dart';

/// Input properties used for looking up and filtering ZeroTrustDlpProximityValidator resources.
class ZeroTrustDlpProximityValidatorState {
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<String?>? createdAt;
  /// A name for this validator, at most 50 characters.
  final pulumi.Input<String?>? name;
  /// What currently uses a validator. Deleting a validator that is still in use returns `409`, so
  /// check this first.
  ///
  /// Read-only. A validator is attached or detached by updating the detection entry that uses it, not
  /// by writing this back.
  final pulumi.Input<ZeroTrustDlpProximityValidatorReferencedBy?>? referencedBy;
  final pulumi.Input<String?>? updatedAt;
  /// The words that raise confidence when found near a match, at most 100 per validator. Matching
  /// ignores case, so the list may not contain the same word twice with different capitalisation.
  /// Words are stored as sent.
  final pulumi.Input<List<ZeroTrustDlpProximityValidatorWord>?>? words;

  /// Creates a new [ZeroTrustDlpProximityValidatorState].
  /// [accountId] Optional.
  /// [createdAt] Optional.
  /// [name] A name for this validator, at most 50 characters.
  /// [referencedBy] What currently uses a validator. Deleting a validator that is still in use returns `409`, so
  /// [updatedAt] Optional.
  /// [words] The words that raise confidence when found near a match, at most 100 per validator. Matching
  const ZeroTrustDlpProximityValidatorState({
    this.accountId,
    this.createdAt,
    this.name,
    this.referencedBy,
    this.updatedAt,
    this.words,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'createdAt': ?createdAt,
      'name': ?name,
      'referencedBy': ?pulumi.Input.mapOptionalInputValue<ZeroTrustDlpProximityValidatorReferencedBy, Map<String, dynamic>>(referencedBy, (value) => value.toMap()),
      'updatedAt': ?updatedAt,
      'words': ?pulumi.Input.mapOptionalInputValue<List<ZeroTrustDlpProximityValidatorWord>, List<Map<String, dynamic>>>(words, (value) => pulumi.Input.encodeList<ZeroTrustDlpProximityValidatorWord, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ZeroTrustDlpProximityValidatorState.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDlpProximityValidatorState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      referencedBy: (() { final guardedValue = map['referencedBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustDlpProximityValidatorReferencedBy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      words: (() { final guardedValue = map['words']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ZeroTrustDlpProximityValidatorWord>(guardedValue, (value) => ZeroTrustDlpProximityValidatorWord.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
