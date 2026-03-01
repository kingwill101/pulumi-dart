// ignore_for_file: unused_element, unnecessary_cast


/// Settings for Azure Monitor based alerts
class AzureMonitorAlertSettingsResponse {
  final String? alertsForAllFailoverIssues;
  final String? alertsForAllJobFailures;
  final String? alertsForAllReplicationIssues;

  /// Creates a new [AzureMonitorAlertSettingsResponse].
  /// [alertsForAllFailoverIssues] Optional.
  /// [alertsForAllJobFailures] Optional.
  /// [alertsForAllReplicationIssues] Optional.
  AzureMonitorAlertSettingsResponse({
    this.alertsForAllFailoverIssues,
    this.alertsForAllJobFailures,
    this.alertsForAllReplicationIssues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertsForAllFailoverIssues': ?alertsForAllFailoverIssues,
      'alertsForAllJobFailures': ?alertsForAllJobFailures,
      'alertsForAllReplicationIssues': ?alertsForAllReplicationIssues,
    };
  }

  factory AzureMonitorAlertSettingsResponse.fromMap(Map<String, dynamic> map) {
    return AzureMonitorAlertSettingsResponse(
      alertsForAllFailoverIssues: map['alertsForAllFailoverIssues'] == null ? null : map['alertsForAllFailoverIssues'] as String,
      alertsForAllJobFailures: map['alertsForAllJobFailures'] == null ? null : map['alertsForAllJobFailures'] as String,
      alertsForAllReplicationIssues: map['alertsForAllReplicationIssues'] == null ? null : map['alertsForAllReplicationIssues'] as String,
    );
  }
}

