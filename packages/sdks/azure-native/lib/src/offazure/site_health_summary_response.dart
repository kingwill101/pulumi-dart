// ignore_for_file: unused_element, unnecessary_cast


/// The properties of ServerSiteResource.
class SiteHealthSummaryResponse {
  /// Gets or sets the count of affected objects.
  final double? affectedObjectsCount;
  /// Gets the affected resource type.
  final String affectedResourceType;
  /// Gets or sets the affected resources.
  final List<String>? affectedResources;
  /// Gets the appliance name.
  final String applianceName;
  /// Gets the error code.
  final String errorCode;
  /// Gets the error Id.
  final double errorId;
  /// Gets the error message.
  final String errorMessage;
  /// Gets or sets sources of the exception.
  final List<String>? fabricLayoutUpdateSources;
  /// Gets or sets the hit count of the error.
  final double? hitCount;
  /// Gets the remediation guidance.
  final String remediationGuidance;
  /// Gets the severity of error.
  final String severity;
  /// Gets the summary message.
  final String summaryMessage;

  /// Creates a new [SiteHealthSummaryResponse].
  /// [affectedObjectsCount] Gets or sets the count of affected objects.
  /// [affectedResourceType] Gets the affected resource type.
  /// [affectedResources] Gets or sets the affected resources.
  /// [applianceName] Gets the appliance name.
  /// [errorCode] Gets the error code.
  /// [errorId] Gets the error Id.
  /// [errorMessage] Gets the error message.
  /// [fabricLayoutUpdateSources] Gets or sets sources of the exception.
  /// [hitCount] Gets or sets the hit count of the error.
  /// [remediationGuidance] Gets the remediation guidance.
  /// [severity] Gets the severity of error.
  /// [summaryMessage] Gets the summary message.
  SiteHealthSummaryResponse({
    this.affectedObjectsCount,
    required this.affectedResourceType,
    this.affectedResources,
    required this.applianceName,
    required this.errorCode,
    required this.errorId,
    required this.errorMessage,
    this.fabricLayoutUpdateSources,
    this.hitCount,
    required this.remediationGuidance,
    required this.severity,
    required this.summaryMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'affectedObjectsCount': ?affectedObjectsCount,
      'affectedResourceType': affectedResourceType,
      'affectedResources': ?affectedResources,
      'applianceName': applianceName,
      'errorCode': errorCode,
      'errorId': errorId,
      'errorMessage': errorMessage,
      'fabricLayoutUpdateSources': ?fabricLayoutUpdateSources,
      'hitCount': ?hitCount,
      'remediationGuidance': remediationGuidance,
      'severity': severity,
      'summaryMessage': summaryMessage,
    };
  }

  factory SiteHealthSummaryResponse.fromMap(Map<String, dynamic> map) {
    return SiteHealthSummaryResponse(
      affectedObjectsCount: map['affectedObjectsCount'] == null ? null : map['affectedObjectsCount'] as double,
      affectedResourceType: map['affectedResourceType'] as String,
      affectedResources: map['affectedResources'] == null ? null : (map['affectedResources'] as List).cast<String>(),
      applianceName: map['applianceName'] as String,
      errorCode: map['errorCode'] as String,
      errorId: map['errorId'] as double,
      errorMessage: map['errorMessage'] as String,
      fabricLayoutUpdateSources: map['fabricLayoutUpdateSources'] == null ? null : (map['fabricLayoutUpdateSources'] as List).cast<String>(),
      hitCount: map['hitCount'] == null ? null : map['hitCount'] as double,
      remediationGuidance: map['remediationGuidance'] as String,
      severity: map['severity'] as String,
      summaryMessage: map['summaryMessage'] as String,
    );
  }
}

