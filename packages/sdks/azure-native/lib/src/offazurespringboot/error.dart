// ignore_for_file: unused_element, unnecessary_cast


/// Defines the error.
class Error {
  /// The error code.
  final String? code;
  /// The error ID.
  final double? id;
  /// The detailed error message.
  final String? message;
  /// The error possible causes.
  final String? possibleCauses;
  /// The error recommended action
  final String? recommendedAction;
  /// The account ID used to login.
  final String? runAsAccountId;
  /// The error severity
  final String? severity;
  /// The summarized error message.
  final String? summaryMessage;
  /// Time when this error was last updated.
  final String? updatedTimeStamp;

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
  Error({
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
      code: map['code'] == null ? null : map['code'] as String,
      id: map['id'] == null ? null : map['id'] as double,
      message: map['message'] == null ? null : map['message'] as String,
      possibleCauses: map['possibleCauses'] == null ? null : map['possibleCauses'] as String,
      recommendedAction: map['recommendedAction'] == null ? null : map['recommendedAction'] as String,
      runAsAccountId: map['runAsAccountId'] == null ? null : map['runAsAccountId'] as String,
      severity: map['severity'] == null ? null : map['severity'] as String,
      summaryMessage: map['summaryMessage'] == null ? null : map['summaryMessage'] as String,
      updatedTimeStamp: map['updatedTimeStamp'] == null ? null : map['updatedTimeStamp'] as String,
    );
  }
}

