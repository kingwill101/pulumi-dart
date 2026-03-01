// ignore_for_file: unused_element, unnecessary_cast


/// Describes the latest status of running an image template
class ImageTemplateLastRunStatusResponse {
  /// End time of the last run (UTC)
  final String? endTime;
  /// Verbose information about the last run state
  final String? message;
  /// State of the last run
  final String? runState;
  /// Sub-state of the last run
  final String? runSubState;
  /// Start time of the last run (UTC)
  final String? startTime;

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
      endTime: map['endTime'] == null ? null : map['endTime'] as String,
      message: map['message'] == null ? null : map['message'] as String,
      runState: map['runState'] == null ? null : map['runState'] as String,
      runSubState: map['runSubState'] == null ? null : map['runSubState'] as String,
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
    );
  }
}

