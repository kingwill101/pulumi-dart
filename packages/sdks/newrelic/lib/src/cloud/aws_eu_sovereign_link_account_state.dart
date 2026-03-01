// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AwsEuSovereignLinkAccount resources.
class AwsEuSovereignLinkAccountState {
  /// The New Relic account ID to operate on. This allows the user to override the `account_id` attribute set on the provider. Defaults to the environment variable `NEW_RELIC_ACCOUNT_ID`, if not specified in the configuration.
  final pulumi.Input<String>? accountId;
  /// The Amazon Resource Name (ARN) of the IAM role.
  final pulumi.Input<String>? arn;
  /// How metrics will be collected. Use `PUSH` for metric stream, `PULL` for API polling of the 3 services not supported by metric streams (Billing, CloudTrail and X-Ray), or `BOTH` for both methods. Defaults to `PUSH`, if not specified in the configuration.
  final pulumi.Input<String>? metricCollectionMode;
  /// The name/identifier of the AWS EU Sovereign - New Relic 'linked' account.
  ///
  /// > **WARNING:** Updating any of the aforementioned attributes (except `name`) of a `newrelic.cloud.AwsEuSovereignLinkAccount` resource that has been applied would **force a replacement** of the resource (destruction of the resource, followed by the creation of a new resource). Please carefully review the output of `pulumi preview`, which would clearly indicate a replacement of this resource, before performing a `pulumi up`.
  ///
  /// > **NOTE:** This resource requires the New Relic provider to be configured with `region = "EU"` or the `NEW_RELIC_REGION=EU` environment variable.
  final pulumi.Input<String>? name;

  /// Creates a new [AwsEuSovereignLinkAccountState].
  /// [accountId] The New Relic account ID to operate on. This allows the user to override the `account_id` attribute set on the provider. Defaults to the environment variable `NEW_RELIC_ACCOUNT_ID`, if not specified in the configuration.
  /// [arn] The Amazon Resource Name (ARN) of the IAM role.
  /// [metricCollectionMode] How metrics will be collected. Use `PUSH` for metric stream, `PULL` for API polling of the 3 services not supported by metric streams (Billing, CloudTrail and X-Ray), or `BOTH` for both methods. Defaults to `PUSH`, if not specified in the configuration.
  /// [name] The name/identifier of the AWS EU Sovereign - New Relic 'linked' account.
  AwsEuSovereignLinkAccountState({
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

  factory AwsEuSovereignLinkAccountState.fromMap(Map<String, dynamic> map) {
    return AwsEuSovereignLinkAccountState(
      accountId: map['accountId'] == null ? null : pulumi.Output.create<String>(map['accountId'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      metricCollectionMode: map['metricCollectionMode'] == null ? null : pulumi.Output.create<String>(map['metricCollectionMode'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
    );
  }
}

