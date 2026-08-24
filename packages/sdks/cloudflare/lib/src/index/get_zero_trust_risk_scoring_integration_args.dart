// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zero_trust_risk_scoring_integration_get_zero_trust_risk_scoring_integration_args_doc}
/// Arguments for getZeroTrustRiskScoringIntegration.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_risk_scoring_integration_get_zero_trust_risk_scoring_integration_args_doc}
class GetZeroTrustRiskScoringIntegrationArgs {
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<String> integrationId;

  /// Creates a new [GetZeroTrustRiskScoringIntegrationArgs].
  /// [accountId] Optional.
  /// [integrationId] Required.
  const GetZeroTrustRiskScoringIntegrationArgs({
    this.accountId,
    required this.integrationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'integrationId': integrationId,
    };
  }

  factory GetZeroTrustRiskScoringIntegrationArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustRiskScoringIntegrationArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      integrationId: pulumi.Input.fromValue(map['integrationId'] as String),
    );
  }
}
