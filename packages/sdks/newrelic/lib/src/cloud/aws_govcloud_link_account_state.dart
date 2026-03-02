// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AwsGovcloudLinkAccount resources.
class AwsGovcloudLinkAccountState {
  /// The New Relic account ID to operate on. This allows the user to override the `account_id` attribute set on the provider. Defaults to the environment variable `NEW_RELIC_ACCOUNT_ID`, if not specified in the configuration.
  final pulumi.Input<String>? accountId;
  /// The Amazon Resource Name (ARN) of the IAM role.
  ///
  /// > **NOTE:** Altering the `account_id` (or) `metric_collection_mode` of an already applied `newrelic.cloud.AwsGovcloudLinkAccount` resource shall trigger a recreation of the resource, instead of an update.
  final pulumi.Input<String>? arn;
  /// The mode by which metric data is to be collected from the linked AWS GovCloud account. Defaults to `PULL`, if not specified in the configuration.
  /// - Use `PUSH` for Metric Streams and `PULL` for API Polling based metric collection respectively.
  final pulumi.Input<String>? metricCollectionMode;
  /// The name/identifier of the AWS GovCloud - New Relic 'linked' account.
  final pulumi.Input<String>? name;

  /// Creates a new [AwsGovcloudLinkAccountState].
  /// [accountId] The New Relic account ID to operate on. This allows the user to override the `account_id` attribute set on the provider. Defaults to the environment variable `NEW_RELIC_ACCOUNT_ID`, if not specified in the configuration.
  /// [arn] The Amazon Resource Name (ARN) of the IAM role.
  /// [metricCollectionMode] The mode by which metric data is to be collected from the linked AWS GovCloud account. Defaults to `PULL`, if not specified in the configuration.
  /// [name] The name/identifier of the AWS GovCloud - New Relic 'linked' account.
  AwsGovcloudLinkAccountState({
    this.accountId,
    this.arn,
    this.metricCollectionMode,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'arn': ?arn,
      'metricCollectionMode': ?metricCollectionMode,
      'name': ?name,
    };
  }

  factory AwsGovcloudLinkAccountState.fromMap(Map<String, dynamic> map) {
    return AwsGovcloudLinkAccountState(
      accountId: map['accountId'] == null ? null : (map['accountId']! as String).input(),
      arn: map['arn'] == null ? null : (map['arn']! as String).input(),
      metricCollectionMode: map['metricCollectionMode'] == null ? null : (map['metricCollectionMode']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
    );
  }
}

