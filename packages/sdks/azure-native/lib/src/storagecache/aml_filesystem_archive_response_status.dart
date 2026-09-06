// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The status of the archive
class AmlFilesystemArchiveResponseStatus {
  /// Server-defined error code for the archive operation
  final pulumi.Input<String> errorCode;
  /// Server-defined error message for the archive operation
  final pulumi.Input<String> errorMessage;
  /// The time of the last completed archive operation
  final pulumi.Input<String> lastCompletionTime;
  /// The time the latest archive operation started
  final pulumi.Input<String> lastStartedTime;
  /// The completion percentage of the archive operation
  final pulumi.Input<int> percentComplete;
  /// The state of the archive operation
  final pulumi.Input<String> state;

  /// Creates a new [AmlFilesystemArchiveResponseStatus].
  /// [errorCode] Server-defined error code for the archive operation
  /// [errorMessage] Server-defined error message for the archive operation
  /// [lastCompletionTime] The time of the last completed archive operation
  /// [lastStartedTime] The time the latest archive operation started
  /// [percentComplete] The completion percentage of the archive operation
  /// [state] The state of the archive operation
  const AmlFilesystemArchiveResponseStatus({
    required this.errorCode,
    required this.errorMessage,
    required this.lastCompletionTime,
    required this.lastStartedTime,
    required this.percentComplete,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorCode': errorCode,
      'errorMessage': errorMessage,
      'lastCompletionTime': lastCompletionTime,
      'lastStartedTime': lastStartedTime,
      'percentComplete': percentComplete,
      'state': state,
    };
  }

  factory AmlFilesystemArchiveResponseStatus.fromMap(Map<String, dynamic> map) {
    return AmlFilesystemArchiveResponseStatus(
      errorCode: pulumi.Input.fromValue(map['errorCode'] as String),
      errorMessage: pulumi.Input.fromValue(map['errorMessage'] as String),
      lastCompletionTime: pulumi.Input.fromValue(map['lastCompletionTime'] as String),
      lastStartedTime: pulumi.Input.fromValue(map['lastStartedTime'] as String),
      percentComplete: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['percentComplete'])),
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}
