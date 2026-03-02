// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Error contract returned when some exception occurs in Rest API.
class HealthErrorDetailsResponse {
  /// Gets the appliance name.
  final pulumi.Input<String> applianceName;
  /// Gets the error name.
  final pulumi.Input<String> code;
  /// Gets discovery scope for which             error is encountered.
  final pulumi.Input<String> discoveryScope;
  /// Gets the error ID.
  final pulumi.Input<double> id;
  /// Gets the error message.
  final pulumi.Input<String> message;
  /// Gets the message parameters.
  final pulumi.Input<Map<String, String>> messageParameters;
  /// Gets the possible causes of error.
  final pulumi.Input<String> possibleCauses;
  /// Gets the recommended action to resolve error.
  final pulumi.Input<String> recommendedAction;
  /// Gets run as account id used while performing discovery             of entity.
  final pulumi.Input<String> runAsAccountId;
  /// Gets the error severity.
  final pulumi.Input<String> severity;
  /// Gets the error source.
  final pulumi.Input<String> source;
  /// Gets the error summary message.
  final pulumi.Input<String> summaryMessage;
  /// Gets the time stamp when the error was updated.
  final pulumi.Input<String> updatedTimeStamp;

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
      applianceName: (map['applianceName'] as String).input(),
      code: (map['code'] as String).input(),
      discoveryScope: (map['discoveryScope'] as String).input(),
      id: (map['id'] as double).input(),
      message: (map['message'] as String).input(),
      messageParameters: ((map['messageParameters'] as Map).cast<String, String>()).input(),
      possibleCauses: (map['possibleCauses'] as String).input(),
      recommendedAction: (map['recommendedAction'] as String).input(),
      runAsAccountId: (map['runAsAccountId'] as String).input(),
      severity: (map['severity'] as String).input(),
      source: (map['source'] as String).input(),
      summaryMessage: (map['summaryMessage'] as String).input(),
      updatedTimeStamp: (map['updatedTimeStamp'] as String).input(),
    );
  }
}

