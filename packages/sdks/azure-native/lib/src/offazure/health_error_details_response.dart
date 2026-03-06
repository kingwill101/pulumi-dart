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
  const HealthErrorDetailsResponse({
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
      applianceName: pulumi.Input.fromValue(map['applianceName'] as String),
      code: pulumi.Input.fromValue(map['code'] as String),
      discoveryScope: pulumi.Input.fromValue(map['discoveryScope'] as String),
      id: pulumi.Input.fromValue(map['id'] as double),
      message: pulumi.Input.fromValue(map['message'] as String),
      messageParameters: pulumi.Input.fromValue((map['messageParameters'] as Map).cast<String, String>()),
      possibleCauses: pulumi.Input.fromValue(map['possibleCauses'] as String),
      recommendedAction: pulumi.Input.fromValue(map['recommendedAction'] as String),
      runAsAccountId: pulumi.Input.fromValue(map['runAsAccountId'] as String),
      severity: pulumi.Input.fromValue(map['severity'] as String),
      source: pulumi.Input.fromValue(map['source'] as String),
      summaryMessage: pulumi.Input.fromValue(map['summaryMessage'] as String),
      updatedTimeStamp: pulumi.Input.fromValue(map['updatedTimeStamp'] as String),
    );
  }
}

