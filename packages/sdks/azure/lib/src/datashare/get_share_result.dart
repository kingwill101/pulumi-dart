// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_share_snapshot_schedule.dart';

/// Result data returned by getShare.
class GetShareResult {
  final String? accountId;
  /// The description of the Data Share.
  final String? description;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The kind of the Data Share.
  final String? kind;
  /// The name of the snapshot schedule.
  final String? name;
  /// A `snapshotSchedule` block as defined below.
  final List<GetShareSnapshotSchedule>? snapshotSchedules;
  /// The terms of the Data Share.
  final String? terms;

  /// Creates a new [GetShareResult].
  /// [accountId] Optional.
  /// [description] The description of the Data Share.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kind] The kind of the Data Share.
  /// [name] The name of the snapshot schedule.
  /// [snapshotSchedules] A `snapshotSchedule` block as defined below.
  /// [terms] The terms of the Data Share.
  const GetShareResult({
    this.accountId,
    this.description,
    this.id,
    this.kind,
    this.name,
    this.snapshotSchedules,
    this.terms,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'description': ?description,
      'id': ?id,
      'kind': ?kind,
      'name': ?name,
      'snapshotSchedules': ?(() { final guardedValue = snapshotSchedules; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetShareSnapshotSchedule, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'terms': ?terms,
    };
  }

  factory GetShareResult.fromMap(Map<String, dynamic> map) {
    return GetShareResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      snapshotSchedules: (() { final guardedValue = map['snapshotSchedules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetShareSnapshotSchedule>(guardedValue, (value) => GetShareSnapshotSchedule.fromMap((value as Map).cast<String, dynamic>())); })(),
      terms: (() { final guardedValue = map['terms']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
