// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_dlp_proximity_validator_referenced_by_entry.dart';

class ZeroTrustDlpProximityValidatorReferencedBy {
  /// The detection entries using this validator, ordered by name.
  final pulumi.Input<List<ZeroTrustDlpProximityValidatorReferencedByEntry>?>? entries;
  /// Number of detection entries this validator is attached to.
  final pulumi.Input<int?>? entryCount;

  /// Creates a new [ZeroTrustDlpProximityValidatorReferencedBy].
  /// [entries] The detection entries using this validator, ordered by name.
  /// [entryCount] Number of detection entries this validator is attached to.
  const ZeroTrustDlpProximityValidatorReferencedBy({
    this.entries,
    this.entryCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entries': ?pulumi.Input.mapOptionalInputValue<List<ZeroTrustDlpProximityValidatorReferencedByEntry>, List<Map<String, dynamic>>>(entries, (value) => pulumi.Input.encodeList<ZeroTrustDlpProximityValidatorReferencedByEntry, Map<String, dynamic>>(value, (value) => value.toMap())),
      'entryCount': ?entryCount,
    };
  }

  factory ZeroTrustDlpProximityValidatorReferencedBy.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDlpProximityValidatorReferencedBy(
      entries: (() { final guardedValue = map['entries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ZeroTrustDlpProximityValidatorReferencedByEntry>(guardedValue, (value) => ZeroTrustDlpProximityValidatorReferencedByEntry.fromMap((value as Map).cast<String, dynamic>()))); })(),
      entryCount: (() { final guardedValue = map['entryCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
