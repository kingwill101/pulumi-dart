// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AwsLinkAccount resources.
class AwsLinkAccountState {
  /// The New Relic account ID to operate on.  This allows the user to override the `account_id` attribute set on the provider. Defaults to the environment variable `NEW_RELIC_ACCOUNT_ID`.
  final pulumi.Input<String>? accountId;
  /// The Amazon Resource Name (ARN) of the IAM role.
  final pulumi.Input<String>? arn;
  /// How metrics will be collected. Use `PUSH` for a metric stream or `PULL` to integrate with individual services.
  final pulumi.Input<String>? metricCollectionMode;
  /// The linked account name
  ///
  /// > **WARNING:** Starting with v3.27.2 of the New Relic Terraform Provider, updating any of the aforementioned attributes (except `name`) of a `newrelic.cloud.AwsLinkAccount` resource that has been applied would **force a replacement** of the resource (destruction of the resource, followed by the creation of a new resource). Please carefully review the output of `pulumi preview`, which would clearly indicate a replacement of this resource, before performing a `pulumi up`.
  final pulumi.Input<String>? name;

  /// Creates a new [AwsLinkAccountState].
  /// [accountId] The New Relic account ID to operate on.  This allows the user to override the `account_id` attribute set on the provider. Defaults to the environment variable `NEW_RELIC_ACCOUNT_ID`.
  /// [arn] The Amazon Resource Name (ARN) of the IAM role.
  /// [metricCollectionMode] How metrics will be collected. Use `PUSH` for a metric stream or `PULL` to integrate with individual services.
  /// [name] The linked account name
  AwsLinkAccountState({
    pulumi.Output<String>? accountId,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? metricCollectionMode,
    pulumi.Output<String>? name,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      metricCollectionMode = pulumi.Input.asOptionalInput<String>(metricCollectionMode),
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'arn': ?arn,
      'metricCollectionMode': ?metricCollectionMode,
      'name': ?name,
    };
  }

  factory AwsLinkAccountState.fromMap(Map<String, dynamic> map) {
    return AwsLinkAccountState(
      accountId: map['accountId'] == null ? null : pulumi.Output.create<String>(map['accountId'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      metricCollectionMode: map['metricCollectionMode'] == null ? null : pulumi.Output.create<String>(map['metricCollectionMode'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
    );
  }
}

