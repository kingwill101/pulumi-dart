// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_api_insights_scheduled_scan_settings_args_doc}
/// The set of arguments for ScheduledScanSettings.
/// {@endtemplate}
/// {@macro pulumi_api_insights_scheduled_scan_settings_args_doc}
class ScheduledScanSettingsArgs {
  /// The Insights account name
  final pulumi.Input<String> accountName;
  /// The batch size for processing resources during the scan.
  final pulumi.Input<int>? batchSize;
  /// The concurrency level for list operations during the scan.
  final pulumi.Input<int>? listConcurrency;
  /// The organization name
  final pulumi.Input<String> orgName;
  /// Whether the scheduled scan is paused.
  final pulumi.Input<bool> paused;
  /// The concurrency level for read operations during the scan.
  final pulumi.Input<int>? readConcurrency;
  /// The timeout duration for read operations, as a Go duration string (e.g., '30s', '5m').
  final pulumi.Input<String>? readTimeout;
  /// The cron expression defining the scan schedule.
  final pulumi.Input<String>? scheduleCron;

  /// Creates a new [ScheduledScanSettingsArgs].
  /// [accountName] The Insights account name
  /// [batchSize] The batch size for processing resources during the scan.
  /// [listConcurrency] The concurrency level for list operations during the scan.
  /// [orgName] The organization name
  /// [paused] Whether the scheduled scan is paused.
  /// [readConcurrency] The concurrency level for read operations during the scan.
  /// [readTimeout] The timeout duration for read operations, as a Go duration string (e.g., '30s', '5m').
  /// [scheduleCron] The cron expression defining the scan schedule.
  const ScheduledScanSettingsArgs({
    required this.accountName,
    this.batchSize,
    this.listConcurrency,
    required this.orgName,
    required this.paused,
    this.readConcurrency,
    this.readTimeout,
    this.scheduleCron,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'batchSize': ?batchSize,
      'listConcurrency': ?listConcurrency,
      'orgName': orgName,
      'paused': paused,
      'readConcurrency': ?readConcurrency,
      'readTimeout': ?readTimeout,
      'scheduleCron': ?scheduleCron,
    };
  }

  factory ScheduledScanSettingsArgs.fromMap(Map<String, dynamic> map) {
    return ScheduledScanSettingsArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      batchSize: (() { final guardedValue = map['batchSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      listConcurrency: (() { final guardedValue = map['listConcurrency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      orgName: pulumi.Input.fromValue(map['orgName'] as String),
      paused: pulumi.Input.fromValue(map['paused'] as bool),
      readConcurrency: (() { final guardedValue = map['readConcurrency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      readTimeout: (() { final guardedValue = map['readTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scheduleCron: (() { final guardedValue = map['scheduleCron']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
