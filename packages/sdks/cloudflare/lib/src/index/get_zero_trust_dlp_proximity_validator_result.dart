// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_dlp_proximity_validator_referenced_by.dart';
import 'get_zero_trust_dlp_proximity_validator_word.dart';

/// Result data returned by getZeroTrustDlpProximityValidator.
class GetZeroTrustDlpProximityValidatorResult {
  final String? accountId;
  final String? createdAt;
  /// The ID of this resource.
  final String? id;
  /// A name for this validator, at most 50 characters.
  final String? name;
  /// What currently uses a validator. Deleting a validator that is still in use returns `409`, so
  /// check this first.
  final GetZeroTrustDlpProximityValidatorReferencedBy? referencedBy;
  final String? updatedAt;
  final String? validatorId;
  final List<GetZeroTrustDlpProximityValidatorWord>? words;

  /// Creates a new [GetZeroTrustDlpProximityValidatorResult].
  /// [accountId] Optional.
  /// [createdAt] Optional.
  /// [id] The ID of this resource.
  /// [name] A name for this validator, at most 50 characters.
  /// [referencedBy] What currently uses a validator. Deleting a validator that is still in use returns `409`, so
  /// [updatedAt] Optional.
  /// [validatorId] Optional.
  /// [words] Optional.
  const GetZeroTrustDlpProximityValidatorResult({
    this.accountId,
    this.createdAt,
    this.id,
    this.name,
    this.referencedBy,
    this.updatedAt,
    this.validatorId,
    this.words,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'createdAt': ?createdAt,
      'id': ?id,
      'name': ?name,
      'referencedBy': ?referencedBy?.toMap(),
      'updatedAt': ?updatedAt,
      'validatorId': ?validatorId,
      'words': ?(() { final guardedValue = words; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZeroTrustDlpProximityValidatorWord, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetZeroTrustDlpProximityValidatorResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDlpProximityValidatorResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      referencedBy: (() { final guardedValue = map['referencedBy']; if (guardedValue == null) return null; return GetZeroTrustDlpProximityValidatorReferencedBy.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      validatorId: (() { final guardedValue = map['validatorId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      words: (() { final guardedValue = map['words']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZeroTrustDlpProximityValidatorWord>(guardedValue, (value) => GetZeroTrustDlpProximityValidatorWord.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
