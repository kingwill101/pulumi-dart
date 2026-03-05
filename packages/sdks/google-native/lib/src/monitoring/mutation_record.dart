// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes a change made to a configuration.
class MutationRecord {
  /// When the change occurred.
  final pulumi.Input<String>? mutateTime;
  /// The email address of the user making the change.
  final pulumi.Input<String>? mutatedBy;

  /// Creates a new [MutationRecord].
  /// [mutateTime] When the change occurred.
  /// [mutatedBy] The email address of the user making the change.
  MutationRecord({
    this.mutateTime,
    this.mutatedBy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mutateTime': ?mutateTime,
      'mutatedBy': ?mutatedBy,
    };
  }

  factory MutationRecord.fromMap(Map<String, dynamic> map) {
    return MutationRecord(
      mutateTime: (() { final guardedValue = map['mutateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mutatedBy: (() { final guardedValue = map['mutatedBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

