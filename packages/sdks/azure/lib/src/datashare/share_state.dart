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
    pulumi.Output<String>? accountId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? kind,
    pulumi.Output<String>? name,
    pulumi.Output<ShareSnapshotSchedule>? snapshotSchedule,
    pulumi.Output<String>? terms,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      description = pulumi.Input.asOptionalInput<String>(description),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      name = pulumi.Input.asOptionalInput<String>(name),
      snapshotSchedule = pulumi.Input.asOptionalInput<ShareSnapshotSchedule>(snapshotSchedule),
      terms = pulumi.Input.asOptionalInput<String>(terms);

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
      accountId: map['accountId'] == null ? null : pulumi.Output.create<String>(map['accountId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      snapshotSchedule: map['snapshotSchedule'] == null ? null : pulumi.Output.create<ShareSnapshotSchedule>(ShareSnapshotSchedule.fromMap((map['snapshotSchedule'] as Map).cast<String, dynamic>())),
      terms: map['terms'] == null ? null : pulumi.Output.create<String>(map['terms'] as String),
    );
  }
}

