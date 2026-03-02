// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the latest status of running an image template
class ImageTemplateLastRunStatusResponse {
  /// End time of the last run (UTC)
  final pulumi.Input<String>? endTime;
  /// Verbose information about the last run state
  final pulumi.Input<String>? message;
  /// State of the last run
  final pulumi.Input<String>? runState;
  /// Sub-state of the last run
  final pulumi.Input<String>? runSubState;
  /// Start time of the last run (UTC)
  final pulumi.Input<String>? startTime;

  /// Creates a new [ImageTemplateLastRunStatusResponse].
  /// [endTime] End time of the last run (UTC)
  /// [message] Verbose information about the last run state
  /// [runState] State of the last run
  /// [runSubState] Sub-state of the last run
  /// [startTime] Start time of the last run (UTC)
  ImageTemplateLastRunStatusResponse({
    this.endTime,
    this.message,
    this.runState,
    this.runSubState,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': ?endTime,
      'message': ?message,
      'runState': ?runState,
      'runSubState': ?runSubState,
      'startTime': ?startTime,
    };
  }

  factory ImageTemplateLastRunStatusResponse.fromMap(Map<String, dynamic> map) {
    return ImageTemplateLastRunStatusResponse(
      endTime: map['endTime'] == null ? null : (map['endTime'] as String).input(),
      message: map['message'] == null ? null : (map['message'] as String).input(),
      runState: map['runState'] == null ? null : (map['runState'] as String).input(),
      runSubState: map['runSubState'] == null ? null : (map['runSubState'] as String).input(),
      startTime: map['startTime'] == null ? null : (map['startTime'] as String).input(),
    );
  }
}

