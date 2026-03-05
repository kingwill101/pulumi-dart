// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'compensation_entry.dart';

/// Job compensation details.
class CompensationInfo {
  /// Optional. Job compensation information. At most one entry can be of type CompensationInfo.CompensationType.BASE, which is referred as ** base compensation entry ** for the job.
  final pulumi.Input<List<CompensationEntry>>? entries;

  /// Creates a new [CompensationInfo].
  /// [entries] Optional. Job compensation information. At most one entry can be of type CompensationInfo.CompensationType.BASE, which is referred as ** base compensation entry ** for the job.
  CompensationInfo({
    this.entries,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entries': ?pulumi.Input.mapOptionalInputValue<List<CompensationEntry>, List<Map<String, dynamic>>>(entries, (value) => pulumi.Input.encodeList<CompensationEntry, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CompensationInfo.fromMap(Map<String, dynamic> map) {
    return CompensationInfo(
      entries: (() { final guardedValue = map['entries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CompensationEntry>(guardedValue, (value) => CompensationEntry.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

