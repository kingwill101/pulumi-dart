// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlertPolicyCreationRecord {
  /// (Output)
  /// When the change occurred.
  final pulumi.Input<String>? mutateTime;

  /// (Output)
  /// The email address of the user making the change.
  final pulumi.Input<String>? mutatedBy;

  /// Creates a new [AlertPolicyCreationRecord].
  /// [mutateTime] (Output)
  /// [mutatedBy] (Output)
  AlertPolicyCreationRecord({this.mutateTime, this.mutatedBy});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mutateTime': ?mutateTime,
      'mutatedBy': ?mutatedBy,
    };
  }

  factory AlertPolicyCreationRecord.fromMap(Map<String, dynamic> map) {
    return AlertPolicyCreationRecord(
      mutateTime: (() {
        final guardedValue = map['mutateTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      mutatedBy: (() {
        final guardedValue = map['mutatedBy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
