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
  /// &gt; **WARNING:** Starting with v3.27.2 of the New Relic Terraform Provider, updating any of the aforementioned attributes (except `name`) of a `newrelic.cloud.AwsLinkAccount` resource that has been applied would **force a replacement** of the resource (destruction of the resource, followed by the creation of a new resource). Please carefully review the output of `pulumi preview`, which would clearly indicate a replacement of this resource, before performing a `pulumi up`.
  final pulumi.Input<String>? name;

  /// Creates a new [AwsLinkAccountState].
  /// [accountId] The New Relic account ID to operate on.  This allows the user to override the `account_id` attribute set on the provider. Defaults to the environment variable `NEW_RELIC_ACCOUNT_ID`.
  /// [arn] The Amazon Resource Name (ARN) of the IAM role.
  /// [metricCollectionMode] How metrics will be collected. Use `PUSH` for a metric stream or `PULL` to integrate with individual services.
  /// [name] The linked account name
  AwsLinkAccountState({
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

  factory AwsLinkAccountState.fromMap(Map<String, dynamic> map) {
    return AwsLinkAccountState(
      accountId: (() {
        final guardedValue = map['accountId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      metricCollectionMode: (() {
        final guardedValue = map['metricCollectionMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
