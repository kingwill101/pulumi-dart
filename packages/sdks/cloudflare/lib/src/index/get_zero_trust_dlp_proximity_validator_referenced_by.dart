// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_dlp_proximity_validator_referenced_by_entry.dart';

class GetZeroTrustDlpProximityValidatorReferencedBy {
  /// The detection entries using this validator, ordered by name.
  final pulumi.Input<List<GetZeroTrustDlpProximityValidatorReferencedByEntry>> entries;
  /// Number of detection entries this validator is attached to.
  final pulumi.Input<int> entryCount;

  /// Creates a new [GetZeroTrustDlpProximityValidatorReferencedBy].
  /// [entries] The detection entries using this validator, ordered by name.
  /// [entryCount] Number of detection entries this validator is attached to.
  const GetZeroTrustDlpProximityValidatorReferencedBy({
    required this.entries,
    required this.entryCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entries': pulumi.Input.mapInputValue<List<GetZeroTrustDlpProximityValidatorReferencedByEntry>, List<Map<String, dynamic>>>(entries, (value) => pulumi.Input.encodeList<GetZeroTrustDlpProximityValidatorReferencedByEntry, Map<String, dynamic>>(value, (value) => value.toMap())),
      'entryCount': entryCount,
    };
  }

  factory GetZeroTrustDlpProximityValidatorReferencedBy.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDlpProximityValidatorReferencedBy(
      entries: pulumi.Input.fromValue(pulumi.Input.decodeList<GetZeroTrustDlpProximityValidatorReferencedByEntry>(map['entries']!, (value) => GetZeroTrustDlpProximityValidatorReferencedByEntry.fromMap((value as Map).cast<String, dynamic>()))),
      entryCount: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['entryCount'])),
    );
  }
}
