// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_dlp_proximity_validators_result_referenced_by_entry.dart';

class GetZeroTrustDlpProximityValidatorsResultReferencedBy {
  /// The detection entries using this validator, ordered by name.
  final pulumi.Input<List<GetZeroTrustDlpProximityValidatorsResultReferencedByEntry>> entries;
  /// Number of detection entries this validator is attached to.
  final pulumi.Input<int> entryCount;

  /// Creates a new [GetZeroTrustDlpProximityValidatorsResultReferencedBy].
  /// [entries] The detection entries using this validator, ordered by name.
  /// [entryCount] Number of detection entries this validator is attached to.
  const GetZeroTrustDlpProximityValidatorsResultReferencedBy({
    required this.entries,
    required this.entryCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entries': pulumi.Input.mapInputValue<List<GetZeroTrustDlpProximityValidatorsResultReferencedByEntry>, List<Map<String, dynamic>>>(entries, (value) => pulumi.Input.encodeList<GetZeroTrustDlpProximityValidatorsResultReferencedByEntry, Map<String, dynamic>>(value, (value) => value.toMap())),
      'entryCount': entryCount,
    };
  }

  factory GetZeroTrustDlpProximityValidatorsResultReferencedBy.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDlpProximityValidatorsResultReferencedBy(
      entries: pulumi.Input.fromValue(pulumi.Input.decodeList<GetZeroTrustDlpProximityValidatorsResultReferencedByEntry>(map['entries']!, (value) => GetZeroTrustDlpProximityValidatorsResultReferencedByEntry.fromMap((value as Map).cast<String, dynamic>()))),
      entryCount: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['entryCount'])),
    );
  }
}
