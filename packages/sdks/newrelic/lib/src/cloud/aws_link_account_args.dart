// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloud_aws_link_account_aws_link_account_args_doc}
/// The set of arguments for AwsLinkAccount.
/// {@endtemplate}
/// {@macro pulumi_cloud_aws_link_account_aws_link_account_args_doc}
class AwsLinkAccountArgs {
  /// The New Relic account ID to operate on.  This allows the user to override the `account_id` attribute set on the provider. Defaults to the environment variable `NEW_RELIC_ACCOUNT_ID`.
  final pulumi.Input<String>? accountId;
  /// The Amazon Resource Name (ARN) of the IAM role.
  final pulumi.Input<String> arn;
  /// How metrics will be collected. Use `PUSH` for a metric stream or `PULL` to integrate with individual services.
  final pulumi.Input<String>? metricCollectionMode;
  /// The linked account name
  ///
  /// > **WARNING:** Starting with v3.27.2 of the New Relic Terraform Provider, updating any of the aforementioned attributes (except `name`) of a `newrelic.cloud.AwsLinkAccount` resource that has been applied would **force a replacement** of the resource (destruction of the resource, followed by the creation of a new resource). Please carefully review the output of `pulumi preview`, which would clearly indicate a replacement of this resource, before performing a `pulumi up`.
  final pulumi.Input<String>? name;

  /// Creates a new [AwsLinkAccountArgs].
  /// [accountId] The New Relic account ID to operate on.  This allows the user to override the `account_id` attribute set on the provider. Defaults to the environment variable `NEW_RELIC_ACCOUNT_ID`.
  /// [arn] The Amazon Resource Name (ARN) of the IAM role.
  /// [metricCollectionMode] How metrics will be collected. Use `PUSH` for a metric stream or `PULL` to integrate with individual services.
  /// [name] The linked account name
  AwsLinkAccountArgs({
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

  factory AwsLinkAccountArgs.fromMap(Map<String, dynamic> map) {
    return AwsLinkAccountArgs(
      accountId: map['accountId'] == null ? null : (map['accountId']! as String).input(),
      arn: (map['arn'] as String).input(),
      metricCollectionMode: map['metricCollectionMode'] == null ? null : (map['metricCollectionMode']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
    );
  }
}

