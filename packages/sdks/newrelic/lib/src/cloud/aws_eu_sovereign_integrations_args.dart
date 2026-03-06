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
  const AwsEuSovereignIntegrationsArgs({
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
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      billing: (() { final guardedValue = map['billing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsEuSovereignIntegrationsBilling.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cloudtrail: (() { final guardedValue = map['cloudtrail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsEuSovereignIntegrationsCloudtrail.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      linkedAccountId: pulumi.Input.fromValue(map['linkedAccountId'] as String),
      xRay: (() { final guardedValue = map['xRay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsEuSovereignIntegrationsXRay.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

