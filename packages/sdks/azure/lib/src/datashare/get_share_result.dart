// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_share_snapshot_schedule.dart';

/// Result data returned by getShare.
class GetShareResult {
  final String accountId;
  /// The description of the Data Share.
  final String description;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The kind of the Data Share.
  final String kind;
  /// The name of the snapshot schedule.
  final String name;
  /// A `snapshot_schedule` block as defined below.
  final List<GetShareSnapshotSchedule> snapshotSchedules;
  /// The terms of the Data Share.
  final String terms;

  /// Creates a new [GetShareResult].
  /// [accountId] Required.
  /// [description] The description of the Data Share.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kind] The kind of the Data Share.
  /// [name] The name of the snapshot schedule.
  /// [snapshotSchedules] A `snapshot_schedule` block as defined below.
  /// [terms] The terms of the Data Share.
  const GetShareResult({
    required this.accountId,
    required this.description,
    required this.id,
    required this.kind,
    required this.name,
    required this.snapshotSchedules,
    required this.terms,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'description': description,
      'id': id,
      'kind': kind,
      'name': name,
      'snapshotSchedules': pulumi.Input.encodeList<GetShareSnapshotSchedule, Map<String, dynamic>>(snapshotSchedules, (value) => value.toMap()),
      'terms': terms,
    };
  }

  factory GetShareResult.fromMap(Map<String, dynamic> map) {
    return GetShareResult(
      accountId: map['accountId'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      kind: map['kind'] as String,
      name: map['name'] as String,
      snapshotSchedules: pulumi.Input.decodeList<GetShareSnapshotSchedule>(map['snapshotSchedules']!, (value) => GetShareSnapshotSchedule.fromMap((value as Map).cast<String, dynamic>())),
      terms: map['terms'] as String,
    );
  }
}

