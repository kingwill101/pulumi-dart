// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zero_trust_dlp_proximity_validator_get_zero_trust_dlp_proximity_validator_args_doc}
/// Arguments for getZeroTrustDlpProximityValidator.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_dlp_proximity_validator_get_zero_trust_dlp_proximity_validator_args_doc}
class GetZeroTrustDlpProximityValidatorArgs {
  final pulumi.Input<String> accountId;
  final pulumi.Input<String> validatorId;

  /// Creates a new [GetZeroTrustDlpProximityValidatorArgs].
  /// [accountId] Required.
  /// [validatorId] Required.
  const GetZeroTrustDlpProximityValidatorArgs({
    required this.accountId,
    required this.validatorId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'validatorId': validatorId,
    };
  }

  factory GetZeroTrustDlpProximityValidatorArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDlpProximityValidatorArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      validatorId: pulumi.Input.fromValue(map['validatorId'] as String),
    );
  }
}
