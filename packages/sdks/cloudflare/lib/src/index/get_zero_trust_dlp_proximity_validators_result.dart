// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_dlp_proximity_validators_result_referenced_by.dart';
import 'get_zero_trust_dlp_proximity_validators_result_word.dart';

class GetZeroTrustDlpProximityValidatorsResult {
  final pulumi.Input<String> createdAt;
  final pulumi.Input<String> id;
  /// A name for this validator, at most 50 characters.
  final pulumi.Input<String> name;
  /// What currently uses a validator. Deleting a validator that is still in use returns `409`, so
  /// check this first.
  final pulumi.Input<GetZeroTrustDlpProximityValidatorsResultReferencedBy> referencedBy;
  final pulumi.Input<String> updatedAt;
  /// The words that raise confidence when found near a match.
  final pulumi.Input<List<GetZeroTrustDlpProximityValidatorsResultWord>> words;

  /// Creates a new [GetZeroTrustDlpProximityValidatorsResult].
  /// [createdAt] Required.
  /// [id] Required.
  /// [name] A name for this validator, at most 50 characters.
  /// [referencedBy] What currently uses a validator. Deleting a validator that is still in use returns `409`, so
  /// [updatedAt] Required.
  /// [words] The words that raise confidence when found near a match.
  const GetZeroTrustDlpProximityValidatorsResult({
    required this.createdAt,
    required this.id,
    required this.name,
    required this.referencedBy,
    required this.updatedAt,
    required this.words,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt,
      'id': id,
      'name': name,
      'referencedBy': pulumi.Input.mapInputValue<GetZeroTrustDlpProximityValidatorsResultReferencedBy, Map<String, dynamic>>(referencedBy, (value) => value.toMap()),
      'updatedAt': updatedAt,
      'words': pulumi.Input.mapInputValue<List<GetZeroTrustDlpProximityValidatorsResultWord>, List<Map<String, dynamic>>>(words, (value) => pulumi.Input.encodeList<GetZeroTrustDlpProximityValidatorsResultWord, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetZeroTrustDlpProximityValidatorsResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDlpProximityValidatorsResult(
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      referencedBy: pulumi.Input.fromValue(GetZeroTrustDlpProximityValidatorsResultReferencedBy.fromMap((map['referencedBy']! as Map).cast<String, dynamic>())),
      updatedAt: pulumi.Input.fromValue(map['updatedAt'] as String),
      words: pulumi.Input.fromValue(pulumi.Input.decodeList<GetZeroTrustDlpProximityValidatorsResultWord>(map['words']!, (value) => GetZeroTrustDlpProximityValidatorsResultWord.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
