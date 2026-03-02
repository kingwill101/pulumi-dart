// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the error.
class ErrorResponse {
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

  /// Creates a new [ErrorResponse].
  /// [code] The error code.
  /// [id] The error ID.
  /// [message] The detailed error message.
  /// [possibleCauses] The error possible causes.
  /// [recommendedAction] The error recommended action
  /// [runAsAccountId] The account ID used to login.
  /// [severity] The error severity
  /// [summaryMessage] The summarized error message.
  /// [updatedTimeStamp] Time when this error was last updated.
  ErrorResponse({
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

  factory ErrorResponse.fromMap(Map<String, dynamic> map) {
    return ErrorResponse(
      code: map['code'] == null ? null : (map['code'] as String).input(),
      id: map['id'] == null ? null : (map['id'] as double).input(),
      message: map['message'] == null ? null : (map['message'] as String).input(),
      possibleCauses: map['possibleCauses'] == null ? null : (map['possibleCauses'] as String).input(),
      recommendedAction: map['recommendedAction'] == null ? null : (map['recommendedAction'] as String).input(),
      runAsAccountId: map['runAsAccountId'] == null ? null : (map['runAsAccountId'] as String).input(),
      severity: map['severity'] == null ? null : (map['severity'] as String).input(),
      summaryMessage: map['summaryMessage'] == null ? null : (map['summaryMessage'] as String).input(),
      updatedTimeStamp: map['updatedTimeStamp'] == null ? null : (map['updatedTimeStamp'] as String).input(),
    );
  }
}

