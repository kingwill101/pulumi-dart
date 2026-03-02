// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'share_snapshot_schedule.dart';

/// Input properties used for looking up and filtering Share resources.
class ShareState {
  /// The ID of the Data Share account in which the Data Share is created. Changing this forces a new Data Share to be created.
  final pulumi.Input<String>? accountId;
  /// The Data Share's description.
  final pulumi.Input<String>? description;
  /// The kind of the Data Share. Possible values are `CopyBased` and `InPlace`. Changing this forces a new Data Share to be created.
  final pulumi.Input<String>? kind;
  /// The name which should be used for this Data Share. Changing this forces a new Data Share to be created.
  final pulumi.Input<String>? name;
  /// A `snapshot_schedule` block as defined below.
  final pulumi.Input<ShareSnapshotSchedule>? snapshotSchedule;
  /// The terms of the Data Share.
  final pulumi.Input<String>? terms;

  /// Creates a new [ShareState].
  /// [accountId] The ID of the Data Share account in which the Data Share is created. Changing this forces a new Data Share to be created.
  /// [description] The Data Share's description.
  /// [kind] The kind of the Data Share. Possible values are `CopyBased` and `InPlace`. Changing this forces a new Data Share to be created.
  /// [name] The name which should be used for this Data Share. Changing this forces a new Data Share to be created.
  /// [snapshotSchedule] A `snapshot_schedule` block as defined below.
  /// [terms] The terms of the Data Share.
  ShareState({
    this.accountId,
    this.description,
    this.kind,
    this.name,
    this.snapshotSchedule,
    this.terms,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'description': ?description,
      'kind': ?kind,
      'name': ?name,
      'snapshotSchedule': ?pulumi.Input.mapOptionalInputValue<ShareSnapshotSchedule, Map<String, dynamic>>(snapshotSchedule, (value) => value.toMap()),
      'terms': ?terms,
    };
  }

  factory ShareState.fromMap(Map<String, dynamic> map) {
    return ShareState(
      accountId: map['accountId'] == null ? null : (map['accountId']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      snapshotSchedule: map['snapshotSchedule'] == null ? null : (ShareSnapshotSchedule.fromMap((map['snapshotSchedule']! as Map).cast<String, dynamic>())).input(),
      terms: map['terms'] == null ? null : (map['terms']! as String).input(),
    );
  }
}

