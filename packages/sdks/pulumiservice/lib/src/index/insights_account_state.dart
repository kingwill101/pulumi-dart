// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_provider.dart';
import 'scan_schedule.dart';

class InsightsAccountState {
  /// Name of the insights account.
  final pulumi.Input<String> accountName;
  /// The ESC environment used for provider credentials. Format: 'project/environment' with optional '@version' suffix (e.g., 'my-project/prod-env' or 'my-project/prod-env@v1.0').
  final pulumi.Input<String> environment;
  /// The insights account identifier.
  final pulumi.Input<String> insightsAccountId;
  /// The organization's name.
  final pulumi.Input<String> organizationName;
  /// The cloud provider for scanning.
  final pulumi.Input<CloudProvider> provider;
  /// Provider-specific configuration as a JSON object. For AWS, specify regions to scan: {"regions": ["us-west-1", "us-west-2"]}.
  final pulumi.Input<Map<String, dynamic>>? providerConfig;
  /// Schedule for automated scanning. Use 'daily' for daily scans, '12h' for scans every twelve hours, or 'none' to disable scheduled scanning. Defaults to 'none'.
  final pulumi.Input<ScanSchedule> scanSchedule;
  /// Whether scheduled scanning is enabled.
  final pulumi.Input<bool> scheduledScanEnabled;
  /// Key-value tags to associate with the insights account.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [InsightsAccountState].
  /// [accountName] Name of the insights account.
  /// [environment] The ESC environment used for provider credentials. Format: 'project/environment' with optional '@version' suffix (e.g., 'my-project/prod-env' or 'my-project/prod-env@v1.0').
  /// [insightsAccountId] The insights account identifier.
  /// [organizationName] The organization's name.
  /// [provider] The cloud provider for scanning.
  /// [providerConfig] Provider-specific configuration as a JSON object. For AWS, specify regions to scan: {"regions": ["us-west-1", "us-west-2"]}.
  /// [scanSchedule] Schedule for automated scanning. Use 'daily' for daily scans, '12h' for scans every twelve hours, or 'none' to disable scheduled scanning. Defaults to 'none'.
  /// [scheduledScanEnabled] Whether scheduled scanning is enabled.
  /// [tags] Key-value tags to associate with the insights account.
  const InsightsAccountState({
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
      'provider': pulumi.Input.mapInputValue<CloudProvider, String>(provider, (value) => value.wireValue),
      'providerConfig': ?providerConfig,
      'scanSchedule': pulumi.Input.mapInputValue<ScanSchedule, String>(scanSchedule, (value) => value.wireValue),
      'scheduledScanEnabled': scheduledScanEnabled,
      'tags': ?tags,
    };
  }

  factory InsightsAccountState.fromMap(Map<String, dynamic> map) {
    return InsightsAccountState(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      environment: pulumi.Input.fromValue(map['environment'] as String),
      insightsAccountId: pulumi.Input.fromValue(map['insightsAccountId'] as String),
      organizationName: pulumi.Input.fromValue(map['organizationName'] as String),
      provider: pulumi.Input.fromValue(CloudProvider.fromValue(map['provider']! as String)),
      providerConfig: (() { final guardedValue = map['providerConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      scanSchedule: pulumi.Input.fromValue(ScanSchedule.fromValue(map['scanSchedule']! as String)),
      scheduledScanEnabled: pulumi.Input.fromValue(map['scheduledScanEnabled'] as bool),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
