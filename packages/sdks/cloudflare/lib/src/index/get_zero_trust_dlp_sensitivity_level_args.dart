// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zero_trust_dlp_sensitivity_level_get_zero_trust_dlp_sensitivity_level_args_doc}
/// Arguments for getZeroTrustDlpSensitivityLevel.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_dlp_sensitivity_level_get_zero_trust_dlp_sensitivity_level_args_doc}
class GetZeroTrustDlpSensitivityLevelArgs {
  final pulumi.Input<String> accountId;
  final pulumi.Input<String> sensitivityGroupId;
  final pulumi.Input<String> sensitivityLevelId;

  /// Creates a new [GetZeroTrustDlpSensitivityLevelArgs].
  /// [accountId] Required.
  /// [sensitivityGroupId] Required.
  /// [sensitivityLevelId] Required.
  const GetZeroTrustDlpSensitivityLevelArgs({
    required this.accountId,
    required this.sensitivityGroupId,
    required this.sensitivityLevelId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'sensitivityGroupId': sensitivityGroupId,
      'sensitivityLevelId': sensitivityLevelId,
    };
  }

  factory GetZeroTrustDlpSensitivityLevelArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDlpSensitivityLevelArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      sensitivityGroupId: pulumi.Input.fromValue(map['sensitivityGroupId'] as String),
      sensitivityLevelId: pulumi.Input.fromValue(map['sensitivityLevelId'] as String),
    );
  }
}
