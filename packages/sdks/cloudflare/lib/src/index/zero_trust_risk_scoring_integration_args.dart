// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_zero_trust_risk_scoring_integration_zero_trust_risk_scoring_integration_args_doc}
/// The set of arguments for ZeroTrustRiskScoringIntegration.
/// {@endtemplate}
/// {@macro pulumi_index_zero_trust_risk_scoring_integration_zero_trust_risk_scoring_integration_args_doc}
class ZeroTrustRiskScoringIntegrationArgs {
  final pulumi.Input<String> accountId;
  /// Whether this integration is enabled. If disabled, no risk changes will be exported to the third-party.
  final pulumi.Input<bool?>? active;
  /// Available values: "Okta".
  final pulumi.Input<String> integrationType;
  /// A reference id that can be supplied by the client. Currently this should be set to the Access-Okta IDP ID (a UUIDv4).
  /// https://developers.cloudflare.com/api/operations/access-identity-providers-get-an-access-identity-provider
  final pulumi.Input<String?>? referenceId;
  /// The base url of the tenant, e.g. "https://tenant.okta.com".
  final pulumi.Input<String> tenantUrl;

  /// Creates a new [ZeroTrustRiskScoringIntegrationArgs].
  /// [accountId] Required.
  /// [active] Whether this integration is enabled. If disabled, no risk changes will be exported to the third-party.
  /// [integrationType] Available values: "Okta".
  /// [referenceId] A reference id that can be supplied by the client. Currently this should be set to the Access-Okta IDP ID (a UUIDv4).
  /// [tenantUrl] The base url of the tenant, e.g. "https://tenant.okta.com".
  const ZeroTrustRiskScoringIntegrationArgs({
    required this.accountId,
    this.active,
    required this.integrationType,
    this.referenceId,
    required this.tenantUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'active': ?active,
      'integrationType': integrationType,
      'referenceId': ?referenceId,
      'tenantUrl': tenantUrl,
    };
  }

  factory ZeroTrustRiskScoringIntegrationArgs.fromMap(Map<String, dynamic> map) {
    return ZeroTrustRiskScoringIntegrationArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      active: (() { final guardedValue = map['active']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      integrationType: pulumi.Input.fromValue(map['integrationType'] as String),
      referenceId: (() { final guardedValue = map['referenceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantUrl: pulumi.Input.fromValue(map['tenantUrl'] as String),
    );
  }
}
