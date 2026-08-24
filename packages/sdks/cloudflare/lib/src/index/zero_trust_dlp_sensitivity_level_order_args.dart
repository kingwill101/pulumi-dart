// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_zero_trust_dlp_sensitivity_level_order_zero_trust_dlp_sensitivity_level_order_args_doc}
/// The set of arguments for ZeroTrustDlpSensitivityLevelOrder.
/// {@endtemplate}
/// {@macro pulumi_index_zero_trust_dlp_sensitivity_level_order_zero_trust_dlp_sensitivity_level_order_args_doc}
class ZeroTrustDlpSensitivityLevelOrderArgs {
  final pulumi.Input<String> accountId;
  final pulumi.Input<List<String>> levelIds;
  final pulumi.Input<String> sensitivityGroupId;

  /// Creates a new [ZeroTrustDlpSensitivityLevelOrderArgs].
  /// [accountId] Required.
  /// [levelIds] Required.
  /// [sensitivityGroupId] Required.
  const ZeroTrustDlpSensitivityLevelOrderArgs({
    required this.accountId,
    required this.levelIds,
    required this.sensitivityGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'levelIds': levelIds,
      'sensitivityGroupId': sensitivityGroupId,
    };
  }

  factory ZeroTrustDlpSensitivityLevelOrderArgs.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDlpSensitivityLevelOrderArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      levelIds: pulumi.Input.fromValue((map['levelIds'] as List).cast<String>()),
      sensitivityGroupId: pulumi.Input.fromValue(map['sensitivityGroupId'] as String),
    );
  }
}
