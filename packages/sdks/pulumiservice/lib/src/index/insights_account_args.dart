// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_provider.dart';
import 'scan_schedule.dart';

/// {@template pulumi_index_insights_account_args_doc}
/// The set of arguments for InsightsAccount.
/// {@endtemplate}
/// {@macro pulumi_index_insights_account_args_doc}
class InsightsAccountArgs {
  /// Name of the insights account.
  final pulumi.Input<String> accountName;
  /// The ESC environment used for provider credentials. Format: 'project/environment' with optional '@version' suffix (e.g., 'my-project/prod-env' or 'my-project/prod-env@v1.0').
  final pulumi.Input<String> environment;
  /// The organization's name.
  final pulumi.Input<String> organizationName;
  /// The cloud provider for scanning.
  final pulumi.Input<CloudProvider> provider;
  /// Provider-specific configuration as a JSON object. For AWS, specify regions to scan: {"regions": ["us-west-1", "us-west-2"]}.
  final pulumi.Input<Map<String, dynamic>>? providerConfig;
  /// Schedule for automated scanning. Use 'daily' to enable daily scans, or 'none' to disable scheduled scanning. Defaults to 'none'.
  final pulumi.Input<ScanSchedule> scanSchedule;
  /// Key-value tags to associate with the insights account.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [InsightsAccountArgs].
  /// [accountName] Name of the insights account.
  /// [environment] The ESC environment used for provider credentials. Format: 'project/environment' with optional '@version' suffix (e.g., 'my-project/prod-env' or 'my-project/prod-env@v1.0').
  /// [organizationName] The organization's name.
  /// [provider] The cloud provider for scanning.
  /// [providerConfig] Provider-specific configuration as a JSON object. For AWS, specify regions to scan: {"regions": ["us-west-1", "us-west-2"]}.
  /// [scanSchedule] Schedule for automated scanning. Use 'daily' to enable daily scans, or 'none' to disable scheduled scanning. Defaults to 'none'.
  /// [tags] Key-value tags to associate with the insights account.
  InsightsAccountArgs({
    required pulumi.Output<String> accountName,
    required pulumi.Output<String> environment,
    required pulumi.Output<String> organizationName,
    required pulumi.Output<CloudProvider> provider,
    pulumi.Output<Map<String, dynamic>>? providerConfig,
    required pulumi.Output<ScanSchedule> scanSchedule,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      environment = pulumi.Input.asInput<String>(environment),
      organizationName = pulumi.Input.asInput<String>(organizationName),
      provider = pulumi.Input.asInput<CloudProvider>(provider),
      providerConfig = pulumi.Input.asOptionalInput<Map<String, dynamic>>(providerConfig),
      scanSchedule = pulumi.Input.asInput<ScanSchedule>(scanSchedule),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'environment': environment,
      'organizationName': organizationName,
      'provider': pulumi.Input.mapInputValue<CloudProvider, String>(provider, (value) => value.value),
      'providerConfig': ?providerConfig,
      'scanSchedule': pulumi.Input.mapInputValue<ScanSchedule, String>(scanSchedule, (value) => value.value),
      'tags': ?tags,
    };
  }

  factory InsightsAccountArgs.fromMap(Map<String, dynamic> map) {
    return InsightsAccountArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      environment: pulumi.Output.create<String>(map['environment'] as String),
      organizationName: pulumi.Output.create<String>(map['organizationName'] as String),
      provider: pulumi.Output.create<CloudProvider>(CloudProvider.fromValue(map['provider'] as String)),
      providerConfig: map['providerConfig'] == null ? null : pulumi.Output.create<Map<String, dynamic>>((map['providerConfig'] as Map).cast<String, dynamic>()),
      scanSchedule: pulumi.Output.create<ScanSchedule>(ScanSchedule.fromValue(map['scanSchedule'] as String)),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

