// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'share_snapshot_schedule.dart';

/// {@template pulumi_datashare_share_share_args_doc}
/// The set of arguments for Share.
/// {@endtemplate}
/// {@macro pulumi_datashare_share_share_args_doc}
class ShareArgs {
  /// The ID of the Data Share account in which the Data Share is created. Changing this forces a new Data Share to be created.
  final pulumi.Input<String> accountId;
  /// The Data Share's description.
  final pulumi.Input<String>? description;
  /// The kind of the Data Share. Possible values are `CopyBased` and `InPlace`. Changing this forces a new Data Share to be created.
  final pulumi.Input<String> kind;
  /// The name which should be used for this Data Share. Changing this forces a new Data Share to be created.
  final pulumi.Input<String>? name;
  /// A `snapshot_schedule` block as defined below.
  final pulumi.Input<ShareSnapshotSchedule>? snapshotSchedule;
  /// The terms of the Data Share.
  final pulumi.Input<String>? terms;

  /// Creates a new [ShareArgs].
  /// [accountId] The ID of the Data Share account in which the Data Share is created. Changing this forces a new Data Share to be created.
  /// [description] The Data Share's description.
  /// [kind] The kind of the Data Share. Possible values are `CopyBased` and `InPlace`. Changing this forces a new Data Share to be created.
  /// [name] The name which should be used for this Data Share. Changing this forces a new Data Share to be created.
  /// [snapshotSchedule] A `snapshot_schedule` block as defined below.
  /// [terms] The terms of the Data Share.
  ShareArgs({
    required this.accountId,
    this.description,
    required this.kind,
    this.name,
    this.snapshotSchedule,
    this.terms,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'description': ?description,
      'kind': kind,
      'name': ?name,
      'snapshotSchedule': ?pulumi.Input.mapOptionalInputValue<ShareSnapshotSchedule, Map<String, dynamic>>(snapshotSchedule, (value) => value.toMap()),
      'terms': ?terms,
    };
  }

  factory ShareArgs.fromMap(Map<String, dynamic> map) {
    return ShareArgs(
      accountId: (map['accountId'] as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      kind: (map['kind'] as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      snapshotSchedule: map['snapshotSchedule'] == null ? null : (ShareSnapshotSchedule.fromMap((map['snapshotSchedule']! as Map).cast<String, dynamic>())).input(),
      terms: map['terms'] == null ? null : (map['terms']! as String).input(),
    );
  }
}

