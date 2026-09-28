// ignore_for_file: unused_element, unnecessary_cast

import 'cloud_provider.dart';
import 'scan_schedule.dart';

/// Result data returned by getInsightsAccount.
class GetInsightsAccountResult {
  /// Name of the insights account.
  final String? accountName;
  /// The ESC environment used for provider credentials. Format: 'project/environment' with optional '@version' suffix (e.g., 'my-project/prod-env' or 'my-project/prod-env@v1.0').
  final String? environment;
  /// The insights account identifier.
  final String? insightsAccountId;
  /// The organization's name.
  final String? organizationName;
  /// The cloud provider for scanning.
  final CloudProvider? provider;
  /// Provider-specific configuration as a JSON object. For AWS, specify regions to scan: {"regions": ["us-west-1", "us-west-2"]}.
  final Map<String, dynamic>? providerConfig;
  /// Schedule for automated scanning. Use 'daily' for daily scans, '12h' for scans every twelve hours, or 'none' to disable scheduled scanning. Defaults to 'none'.
  final ScanSchedule? scanSchedule;
  /// Whether scheduled scanning is enabled.
  final bool? scheduledScanEnabled;
  /// Key-value tags to associate with the insights account.
  final Map<String, String>? tags;

  /// Creates a new [GetInsightsAccountResult].
  /// [accountName] Name of the insights account.
  /// [environment] The ESC environment used for provider credentials. Format: 'project/environment' with optional '@version' suffix (e.g., 'my-project/prod-env' or 'my-project/prod-env@v1.0').
  /// [insightsAccountId] The insights account identifier.
  /// [organizationName] The organization's name.
  /// [provider] The cloud provider for scanning.
  /// [providerConfig] Provider-specific configuration as a JSON object. For AWS, specify regions to scan: {"regions": ["us-west-1", "us-west-2"]}.
  /// [scanSchedule] Schedule for automated scanning. Use 'daily' for daily scans, '12h' for scans every twelve hours, or 'none' to disable scheduled scanning. Defaults to 'none'.
  /// [scheduledScanEnabled] Whether scheduled scanning is enabled.
  /// [tags] Key-value tags to associate with the insights account.
  GetInsightsAccountResult({
    this.accountName,
    this.environment,
    this.insightsAccountId,
    this.organizationName,
    this.provider,
    this.providerConfig,
    ScanSchedule? scanSchedule,
    this.scheduledScanEnabled,
    this.tags,
  }) : scanSchedule = scanSchedule ?? ScanSchedule.fromValue('none');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': ?accountName,
      'environment': ?environment,
      'insightsAccountId': ?insightsAccountId,
      'organizationName': ?organizationName,
      'provider': ?provider?.wireValue,
      'providerConfig': ?providerConfig,
      'scanSchedule': ?scanSchedule?.wireValue,
      'scheduledScanEnabled': ?scheduledScanEnabled,
      'tags': ?tags,
    };
  }

  factory GetInsightsAccountResult.fromMap(Map<String, dynamic> map) {
    return GetInsightsAccountResult(
      accountName: (() { final guardedValue = map['accountName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      environment: (() { final guardedValue = map['environment']; if (guardedValue == null) return null; return guardedValue as String; })(),
      insightsAccountId: (() { final guardedValue = map['insightsAccountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      organizationName: (() { final guardedValue = map['organizationName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provider: (() { final guardedValue = map['provider']; if (guardedValue == null) return null; return CloudProvider.fromValue(guardedValue as String); })(),
      providerConfig: (() { final guardedValue = map['providerConfig']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, dynamic>(); })(),
      scanSchedule: (() { final guardedValue = map['scanSchedule']; if (guardedValue == null) return null; return ScanSchedule.fromValue(guardedValue as String); })(),
      scheduledScanEnabled: (() { final guardedValue = map['scheduledScanEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
