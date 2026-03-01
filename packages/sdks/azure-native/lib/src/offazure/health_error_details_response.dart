// ignore_for_file: unused_element, unnecessary_cast


/// Error contract returned when some exception occurs in Rest API.
class HealthErrorDetailsResponse {
  /// Gets the appliance name.
  final String applianceName;
  /// Gets the error name.
  final String code;
  /// Gets discovery scope for which             error is encountered.
  final String discoveryScope;
  /// Gets the error ID.
  final double id;
  /// Gets the error message.
  final String message;
  /// Gets the message parameters.
  final Map<String, String> messageParameters;
  /// Gets the possible causes of error.
  final String possibleCauses;
  /// Gets the recommended action to resolve error.
  final String recommendedAction;
  /// Gets run as account id used while performing discovery             of entity.
  final String runAsAccountId;
  /// Gets the error severity.
  final String severity;
  /// Gets the error source.
  final String source;
  /// Gets the error summary message.
  final String summaryMessage;
  /// Gets the time stamp when the error was updated.
  final String updatedTimeStamp;

  /// Creates a new [HealthErrorDetailsResponse].
  /// [applianceName] Gets the appliance name.
  /// [code] Gets the error name.
  /// [discoveryScope] Gets discovery scope for which             error is encountered.
  /// [id] Gets the error ID.
  /// [message] Gets the error message.
  /// [messageParameters] Gets the message parameters.
  /// [possibleCauses] Gets the possible causes of error.
  /// [recommendedAction] Gets the recommended action to resolve error.
  /// [runAsAccountId] Gets run as account id used while performing discovery             of entity.
  /// [severity] Gets the error severity.
  /// [source] Gets the error source.
  /// [summaryMessage] Gets the error summary message.
  /// [updatedTimeStamp] Gets the time stamp when the error was updated.
  HealthErrorDetailsResponse({
    required this.applianceName,
    required this.code,
    required this.discoveryScope,
    required this.id,
    required this.message,
    required this.messageParameters,
    required this.possibleCauses,
    required this.recommendedAction,
    required this.runAsAccountId,
    required this.severity,
    required this.source,
    required this.summaryMessage,
    required this.updatedTimeStamp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applianceName': applianceName,
      'code': code,
      'discoveryScope': discoveryScope,
      'id': id,
      'message': message,
      'messageParameters': messageParameters,
      'possibleCauses': possibleCauses,
      'recommendedAction': recommendedAction,
      'runAsAccountId': runAsAccountId,
      'severity': severity,
      'source': source,
      'summaryMessage': summaryMessage,
      'updatedTimeStamp': updatedTimeStamp,
    };
  }

  factory HealthErrorDetailsResponse.fromMap(Map<String, dynamic> map) {
    return HealthErrorDetailsResponse(
      applianceName: map['applianceName'] as String,
      code: map['code'] as String,
      discoveryScope: map['discoveryScope'] as String,
      id: map['id'] as double,
      message: map['message'] as String,
      messageParameters: (map['messageParameters'] as Map).cast<String, String>(),
      possibleCauses: map['possibleCauses'] as String,
      recommendedAction: map['recommendedAction'] as String,
      runAsAccountId: map['runAsAccountId'] as String,
      severity: map['severity'] as String,
      source: map['source'] as String,
      summaryMessage: map['summaryMessage'] as String,
      updatedTimeStamp: map['updatedTimeStamp'] as String,
    );
  }
}

