// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zero_trust_dlp_sensitivity_level_order_get_zero_trust_dlp_sensitivity_level_order_args_doc}
/// Arguments for getZeroTrustDlpSensitivityLevelOrder.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_dlp_sensitivity_level_order_get_zero_trust_dlp_sensitivity_level_order_args_doc}
class GetZeroTrustDlpSensitivityLevelOrderArgs {
  final pulumi.Input<String> accountId;
  final pulumi.Input<String> sensitivityGroupId;

  /// Creates a new [GetZeroTrustDlpSensitivityLevelOrderArgs].
  /// [accountId] Required.
  /// [sensitivityGroupId] Required.
  const GetZeroTrustDlpSensitivityLevelOrderArgs({
    required this.accountId,
    required this.sensitivityGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'sensitivityGroupId': sensitivityGroupId,
    };
  }

  factory GetZeroTrustDlpSensitivityLevelOrderArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDlpSensitivityLevelOrderArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      sensitivityGroupId: pulumi.Input.fromValue(map['sensitivityGroupId'] as String),
    );
  }
}
