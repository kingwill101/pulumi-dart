// ignore_for_file: unused_element, unnecessary_cast


/// Represents security alert timeline item.
class SecurityAlertTimelineItemResponse {
  /// The name of the alert type.
  final String alertType;
  /// The alert azure resource id.
  final String azureResourceId;
  /// The alert description.
  final String? description;
  /// The alert name.
  final String displayName;
  /// The alert end time.
  final String endTimeUtc;
  /// The intent of the alert.
  final String intent;
  /// The entity query kind
  /// Expected value is 'SecurityAlert'.
  final String kind;
  /// The alert product name.
  final String? productName;
  /// The alert severity.
  final String severity;
  /// The alert start time.
  final String startTimeUtc;
  /// The techniques of the alert.
  final List<String>? techniques;
  /// The alert generated time.
  final String timeGenerated;

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
      alertType: map['alertType'] as String,
      azureResourceId: map['azureResourceId'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] as String,
      endTimeUtc: map['endTimeUtc'] as String,
      intent: map['intent'] as String,
      kind: map['kind'] as String,
      productName: map['productName'] == null ? null : map['productName'] as String,
      severity: map['severity'] as String,
      startTimeUtc: map['startTimeUtc'] as String,
      techniques: map['techniques'] == null ? null : (map['techniques'] as List).cast<String>(),
      timeGenerated: map['timeGenerated'] as String,
    );
  }
}

