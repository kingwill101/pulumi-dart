// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'share_snapshot_schedule.dart';

/// Input properties used for looking up and filtering Share resources.
class ShareState {
  /// The ID of the Data Share account in which the Data Share is created. Changing this forces a new Data Share to be created.
  final pulumi.Input<String?>? accountId;
  /// The Data Share's description.
  final pulumi.Input<String?>? description;
  /// The kind of the Data Share. Possible values are `CopyBased` and `InPlace`. Changing this forces a new Data Share to be created.
  final pulumi.Input<String?>? kind;
  /// The name which should be used for this Data Share. Changing this forces a new Data Share to be created.
  final pulumi.Input<String?>? name;
  /// A `snapshotSchedule` block as defined below.
  final pulumi.Input<ShareSnapshotSchedule?>? snapshotSchedule;
  /// The terms of the Data Share.
  final pulumi.Input<String?>? terms;

  /// Creates a new [ShareState].
  /// [accountId] The ID of the Data Share account in which the Data Share is created. Changing this forces a new Data Share to be created.
  /// [description] The Data Share's description.
  /// [kind] The kind of the Data Share. Possible values are `CopyBased` and `InPlace`. Changing this forces a new Data Share to be created.
  /// [name] The name which should be used for this Data Share. Changing this forces a new Data Share to be created.
  /// [snapshotSchedule] A `snapshotSchedule` block as defined below.
  /// [terms] The terms of the Data Share.
  const ShareState({
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
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      snapshotSchedule: (() { final guardedValue = map['snapshotSchedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ShareSnapshotSchedule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      terms: (() { final guardedValue = map['terms']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
