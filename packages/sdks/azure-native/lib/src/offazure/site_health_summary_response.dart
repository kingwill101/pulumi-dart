// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of ServerSiteResource.
class SiteHealthSummaryResponse {
  /// Gets or sets the count of affected objects.
  final pulumi.Input<double>? affectedObjectsCount;
  /// Gets the affected resource type.
  final pulumi.Input<String> affectedResourceType;
  /// Gets or sets the affected resources.
  final pulumi.Input<List<String>>? affectedResources;
  /// Gets the appliance name.
  final pulumi.Input<String> applianceName;
  /// Gets the error code.
  final pulumi.Input<String> errorCode;
  /// Gets the error Id.
  final pulumi.Input<double> errorId;
  /// Gets the error message.
  final pulumi.Input<String> errorMessage;
  /// Gets or sets sources of the exception.
  final pulumi.Input<List<String>>? fabricLayoutUpdateSources;
  /// Gets or sets the hit count of the error.
  final pulumi.Input<double>? hitCount;
  /// Gets the remediation guidance.
  final pulumi.Input<String> remediationGuidance;
  /// Gets the severity of error.
  final pulumi.Input<String> severity;
  /// Gets the summary message.
  final pulumi.Input<String> summaryMessage;

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
      affectedObjectsCount: map['affectedObjectsCount'] == null ? null : (map['affectedObjectsCount'] as double).input(),
      affectedResourceType: (map['affectedResourceType'] as String).input(),
      affectedResources: map['affectedResources'] == null ? null : ((map['affectedResources'] as List).cast<String>()).input(),
      applianceName: (map['applianceName'] as String).input(),
      errorCode: (map['errorCode'] as String).input(),
      errorId: (map['errorId'] as double).input(),
      errorMessage: (map['errorMessage'] as String).input(),
      fabricLayoutUpdateSources: map['fabricLayoutUpdateSources'] == null ? null : ((map['fabricLayoutUpdateSources'] as List).cast<String>()).input(),
      hitCount: map['hitCount'] == null ? null : (map['hitCount'] as double).input(),
      remediationGuidance: (map['remediationGuidance'] as String).input(),
      severity: (map['severity'] as String).input(),
      summaryMessage: (map['summaryMessage'] as String).input(),
    );
  }
}

