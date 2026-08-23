// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the error.
class Error {
  /// The error code.
  final pulumi.Input<String>? code;
  /// The error ID.
  final pulumi.Input<double>? id;
  /// The detailed error message.
  final pulumi.Input<String>? message;
  /// The error possible causes.
  final pulumi.Input<String>? possibleCauses;
  /// The error recommended action
  final pulumi.Input<String>? recommendedAction;
  /// The account ID used to login.
  final pulumi.Input<String>? runAsAccountId;
  /// The error severity
  final pulumi.Input<String>? severity;
  /// The summarized error message.
  final pulumi.Input<String>? summaryMessage;
  /// Time when this error was last updated.
  final pulumi.Input<String>? updatedTimeStamp;

  /// Creates a new [Error].
  /// [code] The error code.
  /// [id] The error ID.
  /// [message] The detailed error message.
  /// [possibleCauses] The error possible causes.
  /// [recommendedAction] The error recommended action
  /// [runAsAccountId] The account ID used to login.
  /// [severity] The error severity
  /// [summaryMessage] The summarized error message.
  /// [updatedTimeStamp] Time when this error was last updated.
  const Error({
    this.code,
    this.id,
    this.message,
    this.possibleCauses,
    this.recommendedAction,
    this.runAsAccountId,
    this.severity,
    this.summaryMessage,
    this.updatedTimeStamp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'id': ?id,
      'message': ?message,
      'possibleCauses': ?possibleCauses,
      'recommendedAction': ?recommendedAction,
      'runAsAccountId': ?runAsAccountId,
      'severity': ?severity,
      'summaryMessage': ?summaryMessage,
      'updatedTimeStamp': ?updatedTimeStamp,
    };
  }

  factory Error.fromMap(Map<String, dynamic> map) {
    return Error(
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      possibleCauses: (() { final guardedValue = map['possibleCauses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recommendedAction: (() { final guardedValue = map['recommendedAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runAsAccountId: (() { final guardedValue = map['runAsAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      severity: (() { final guardedValue = map['severity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      summaryMessage: (() { final guardedValue = map['summaryMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updatedTimeStamp: (() { final guardedValue = map['updatedTimeStamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
