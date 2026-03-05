// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents security alert timeline item.
class SecurityAlertTimelineItemResponse {
  /// The name of the alert type.
  final pulumi.Input<String> alertType;
  /// The alert azure resource id.
  final pulumi.Input<String> azureResourceId;
  /// The alert description.
  final pulumi.Input<String>? description;
  /// The alert name.
  final pulumi.Input<String> displayName;
  /// The alert end time.
  final pulumi.Input<String> endTimeUtc;
  /// The intent of the alert.
  final pulumi.Input<String> intent;
  /// The entity query kind
  /// Expected value is 'SecurityAlert'.
  final pulumi.Input<String> kind;
  /// The alert product name.
  final pulumi.Input<String>? productName;
  /// The alert severity.
  final pulumi.Input<String> severity;
  /// The alert start time.
  final pulumi.Input<String> startTimeUtc;
  /// The techniques of the alert.
  final pulumi.Input<List<String>>? techniques;
  /// The alert generated time.
  final pulumi.Input<String> timeGenerated;

  /// Creates a new [SecurityAlertTimelineItemResponse].
  /// [alertType] The name of the alert type.
  /// [azureResourceId] The alert azure resource id.
  /// [description] The alert description.
  /// [displayName] The alert name.
  /// [endTimeUtc] The alert end time.
  /// [intent] The intent of the alert.
  /// [kind] The entity query kind
  /// [productName] The alert product name.
  /// [severity] The alert severity.
  /// [startTimeUtc] The alert start time.
  /// [techniques] The techniques of the alert.
  /// [timeGenerated] The alert generated time.
  SecurityAlertTimelineItemResponse({
    required this.alertType,
    required this.azureResourceId,
    this.description,
    required this.displayName,
    required this.endTimeUtc,
    required this.intent,
    required this.kind,
    this.productName,
    required this.severity,
    required this.startTimeUtc,
    this.techniques,
    required this.timeGenerated,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertType': alertType,
      'azureResourceId': azureResourceId,
      'description': ?description,
      'displayName': displayName,
      'endTimeUtc': endTimeUtc,
      'intent': intent,
      'kind': kind,
      'productName': ?productName,
      'severity': severity,
      'startTimeUtc': startTimeUtc,
      'techniques': ?techniques,
      'timeGenerated': timeGenerated,
    };
  }

  factory SecurityAlertTimelineItemResponse.fromMap(Map<String, dynamic> map) {
    return SecurityAlertTimelineItemResponse(
      alertType: pulumi.Input.fromValue(map['alertType'] as String),
      azureResourceId: pulumi.Input.fromValue(map['azureResourceId'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      endTimeUtc: pulumi.Input.fromValue(map['endTimeUtc'] as String),
      intent: pulumi.Input.fromValue(map['intent'] as String),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      productName: (() { final guardedValue = map['productName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      severity: pulumi.Input.fromValue(map['severity'] as String),
      startTimeUtc: pulumi.Input.fromValue(map['startTimeUtc'] as String),
      techniques: (() { final guardedValue = map['techniques']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      timeGenerated: pulumi.Input.fromValue(map['timeGenerated'] as String),
    );
  }
}

