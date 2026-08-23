// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_api_insights_account_args_doc}
/// The set of arguments for Account.
/// {@endtemplate}
/// {@macro pulumi_api_insights_account_args_doc}
class AccountArgs {
  /// The Insights account name
  final pulumi.Input<String> accountName;
  /// The ID of the agent pool to run account discovery workflows.
  /// If not specified, discovery will use the default agent pool.
  final pulumi.Input<String>? agentPoolID;
  /// Deprecated: Use scanSchedule instead. Cron expression for scheduling scans.
  final pulumi.Input<String>? cron;
  /// Reference to an ESC environment containing provider credentials,
  /// in the format 'project/environment' with an optional @version suffix.
  final pulumi.Input<String> environment;
  /// The organization name
  final pulumi.Input<String> orgName;
  /// The cloud provider for the account (e.g., aws, gcp, azure-native).
  final pulumi.Input<String> provider;
  /// Provider-specific configuration for the account.
  final pulumi.Input<Map<String, dynamic>>? providerConfig;
  /// Schedule for automated discovery scans (e.g., 'none', 'daily').
  final pulumi.Input<String>? scanSchedule;

  /// Creates a new [AccountArgs].
  /// [accountName] The Insights account name
  /// [agentPoolID] The ID of the agent pool to run account discovery workflows.
  /// [cron] Deprecated: Use scanSchedule instead. Cron expression for scheduling scans.
  /// [environment] Reference to an ESC environment containing provider credentials,
  /// [orgName] The organization name
  /// [provider] The cloud provider for the account (e.g., aws, gcp, azure-native).
  /// [providerConfig] Provider-specific configuration for the account.
  /// [scanSchedule] Schedule for automated discovery scans (e.g., 'none', 'daily').
  const AccountArgs({
    required this.accountName,
    this.agentPoolID,
    this.cron,
    required this.environment,
    required this.orgName,
    required this.provider,
    this.providerConfig,
    this.scanSchedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'agentPoolID': ?agentPoolID,
      'cron': ?cron,
      'environment': environment,
      'orgName': orgName,
      'provider': provider,
      'providerConfig': ?providerConfig,
      'scanSchedule': ?scanSchedule,
    };
  }

  factory AccountArgs.fromMap(Map<String, dynamic> map) {
    return AccountArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      agentPoolID: (() { final guardedValue = map['agentPoolID']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cron: (() { final guardedValue = map['cron']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      environment: pulumi.Input.fromValue(map['environment'] as String),
      orgName: pulumi.Input.fromValue(map['orgName'] as String),
      provider: pulumi.Input.fromValue(map['provider'] as String),
      providerConfig: (() { final guardedValue = map['providerConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      scanSchedule: (() { final guardedValue = map['scanSchedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
