// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloud_aws_govcloud_link_account_aws_govcloud_link_account_args_doc}
/// The set of arguments for AwsGovcloudLinkAccount.
/// {@endtemplate}
/// {@macro pulumi_cloud_aws_govcloud_link_account_aws_govcloud_link_account_args_doc}
class AwsGovcloudLinkAccountArgs {
  /// The New Relic account ID to operate on. This allows the user to override the `account_id` attribute set on the provider. Defaults to the environment variable `NEW_RELIC_ACCOUNT_ID`, if not specified in the configuration.
  final pulumi.Input<String>? accountId;
  /// The Amazon Resource Name (ARN) of the IAM role.
  ///
  /// &gt; **NOTE:** Altering the `account_id` (or) `metric_collection_mode` of an already applied `newrelic.cloud.AwsGovcloudLinkAccount` resource shall trigger a recreation of the resource, instead of an update.
  final pulumi.Input<String> arn;
  /// The mode by which metric data is to be collected from the linked AWS GovCloud account. Defaults to `PULL`, if not specified in the configuration.
  /// - Use `PUSH` for Metric Streams and `PULL` for API Polling based metric collection respectively.
  final pulumi.Input<String>? metricCollectionMode;
  /// The name/identifier of the AWS GovCloud - New Relic 'linked' account.
  final pulumi.Input<String>? name;

  /// Creates a new [AwsGovcloudLinkAccountArgs].
  /// [accountId] The New Relic account ID to operate on. This allows the user to override the `account_id` attribute set on the provider. Defaults to the environment variable `NEW_RELIC_ACCOUNT_ID`, if not specified in the configuration.
  /// [arn] The Amazon Resource Name (ARN) of the IAM role.
  /// [metricCollectionMode] The mode by which metric data is to be collected from the linked AWS GovCloud account. Defaults to `PULL`, if not specified in the configuration.
  /// [name] The name/identifier of the AWS GovCloud - New Relic 'linked' account.
  const AwsGovcloudLinkAccountArgs({
    this.accountId,
    required this.arn,
    this.metricCollectionMode,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'arn': arn,
      'metricCollectionMode': ?metricCollectionMode,
      'name': ?name,
    };
  }

  factory AwsGovcloudLinkAccountArgs.fromMap(Map<String, dynamic> map) {
    return AwsGovcloudLinkAccountArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      arn: pulumi.Input.fromValue(map['arn'] as String),
      metricCollectionMode: (() { final guardedValue = map['metricCollectionMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

