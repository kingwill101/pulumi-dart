// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aws_eu_sovereign_integrations_billing.dart';
import 'aws_eu_sovereign_integrations_cloudtrail.dart';
import 'aws_eu_sovereign_integrations_xray.dart';

/// {@template pulumi_cloud_aws_eu_sovereign_integrations_aws_eu_sovereign_integrations_args_doc}
/// The set of arguments for AwsEuSovereignIntegrations.
/// {@endtemplate}
/// {@macro pulumi_cloud_aws_eu_sovereign_integrations_aws_eu_sovereign_integrations_args_doc}
class AwsEuSovereignIntegrationsArgs {
  /// The New Relic account ID to operate on. This allows the user to override the `account_id` attribute set on the provider. Defaults to the environment variable `NEW_RELIC_ACCOUNT_ID`.
  final pulumi.Input<String>? accountId;
  /// Billing integration
  final pulumi.Input<AwsEuSovereignIntegrationsBilling>? billing;
  /// CloudTrail integration
  final pulumi.Input<AwsEuSovereignIntegrationsCloudtrail>? cloudtrail;
  /// The ID of the linked AWS EU Sovereign account in New Relic.
  final pulumi.Input<String> linkedAccountId;
  /// X-Ray integration
  final pulumi.Input<AwsEuSovereignIntegrationsXRay>? xRay;

  /// Creates a new [AwsEuSovereignIntegrationsArgs].
  /// [accountId] The New Relic account ID to operate on. This allows the user to override the `account_id` attribute set on the provider. Defaults to the environment variable `NEW_RELIC_ACCOUNT_ID`.
  /// [billing] Billing integration
  /// [cloudtrail] CloudTrail integration
  /// [linkedAccountId] The ID of the linked AWS EU Sovereign account in New Relic.
  /// [xRay] X-Ray integration
  AwsEuSovereignIntegrationsArgs({
    this.accountId,
    this.billing,
    this.cloudtrail,
    required this.linkedAccountId,
    this.xRay,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'billing': ?pulumi.Input.mapOptionalInputValue<AwsEuSovereignIntegrationsBilling, Map<String, dynamic>>(billing, (value) => value.toMap()),
      'cloudtrail': ?pulumi.Input.mapOptionalInputValue<AwsEuSovereignIntegrationsCloudtrail, Map<String, dynamic>>(cloudtrail, (value) => value.toMap()),
      'linkedAccountId': linkedAccountId,
      'xRay': ?pulumi.Input.mapOptionalInputValue<AwsEuSovereignIntegrationsXRay, Map<String, dynamic>>(xRay, (value) => value.toMap()),
    };
  }

  factory AwsEuSovereignIntegrationsArgs.fromMap(Map<String, dynamic> map) {
    return AwsEuSovereignIntegrationsArgs(
      accountId: map['accountId'] == null ? null : (map['accountId'] as String).input(),
      billing: map['billing'] == null ? null : (AwsEuSovereignIntegrationsBilling.fromMap((map['billing'] as Map).cast<String, dynamic>())).input(),
      cloudtrail: map['cloudtrail'] == null ? null : (AwsEuSovereignIntegrationsCloudtrail.fromMap((map['cloudtrail'] as Map).cast<String, dynamic>())).input(),
      linkedAccountId: (map['linkedAccountId'] as String).input(),
      xRay: map['xRay'] == null ? null : (AwsEuSovereignIntegrationsXRay.fromMap((map['xRay'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

