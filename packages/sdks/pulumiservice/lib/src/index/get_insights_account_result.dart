// ignore_for_file: unused_element, unnecessary_cast

import 'cloud_provider.dart';
import 'scan_schedule.dart';

/// Result data returned by getInsightsAccount.
class GetInsightsAccountResult {
  /// Name of the insights account.
  final String accountName;

  /// The ESC environment used for provider credentials. Format: 'project/environment' with optional '@version' suffix (e.g., 'my-project/prod-env' or 'my-project/prod-env@v1.0').
  final String environment;

  /// The insights account identifier.
  final String insightsAccountId;

  /// The organization's name.
  final String organizationName;

  /// The cloud provider for scanning.
  final CloudProvider provider;

  /// Provider-specific configuration as a JSON object. For AWS, specify regions to scan: {"regions": ["us-west-1", "us-west-2"]}.
  final Map<String, dynamic>? providerConfig;

  /// Schedule for automated scanning. Use 'daily' to enable daily scans, or 'none' to disable scheduled scanning. Defaults to 'none'.
  final ScanSchedule scanSchedule;

  /// Whether scheduled scanning is enabled.
  final bool scheduledScanEnabled;

  /// Key-value tags to associate with the insights account.
  final Map<String, String>? tags;

  /// Creates a new [GetInsightsAccountResult].
  /// [accountName] Name of the insights account.
  /// [environment] The ESC environment used for provider credentials. Format: 'project/environment' with optional '@version' suffix (e.g., 'my-project/prod-env' or 'my-project/prod-env@v1.0').
  /// [insightsAccountId] The insights account identifier.
  /// [organizationName] The organization's name.
  /// [provider] The cloud provider for scanning.
  /// [providerConfig] Provider-specific configuration as a JSON object. For AWS, specify regions to scan: {"regions": ["us-west-1", "us-west-2"]}.
  /// [scanSchedule] Schedule for automated scanning. Use 'daily' to enable daily scans, or 'none' to disable scheduled scanning. Defaults to 'none'.
  /// [scheduledScanEnabled] Whether scheduled scanning is enabled.
  /// [tags] Key-value tags to associate with the insights account.
  GetInsightsAccountResult({
    required this.accountName,
    required this.environment,
    required this.insightsAccountId,
    required this.organizationName,
    required this.provider,
    this.providerConfig,
    required this.scanSchedule,
    required this.scheduledScanEnabled,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'environment': environment,
      'insightsAccountId': insightsAccountId,
      'organizationName': organizationName,
      'provider': provider.wireValue,
      'providerConfig': ?providerConfig,
      'scanSchedule': scanSchedule.wireValue,
      'scheduledScanEnabled': scheduledScanEnabled,
      'tags': ?tags,
    };
  }

  factory GetInsightsAccountResult.fromMap(Map<String, dynamic> map) {
    return GetInsightsAccountResult(
      accountName: map['accountName'] as String,
      environment: map['environment'] as String,
      insightsAccountId: map['insightsAccountId'] as String,
      organizationName: map['organizationName'] as String,
      provider: CloudProvider.fromValue(map['provider']! as String),
      providerConfig: (() {
        final guardedValue = map['providerConfig'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, dynamic>();
      })(),
      scanSchedule: ScanSchedule.fromValue(map['scanSchedule']! as String),
      scheduledScanEnabled: map['scheduledScanEnabled'] as bool,
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
    );
  }
}
