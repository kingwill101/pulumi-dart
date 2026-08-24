// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zero_trust_dlp_sensitivity_group_get_zero_trust_dlp_sensitivity_group_args_doc}
/// Arguments for getZeroTrustDlpSensitivityGroup.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_dlp_sensitivity_group_get_zero_trust_dlp_sensitivity_group_args_doc}
class GetZeroTrustDlpSensitivityGroupArgs {
  final pulumi.Input<String> accountId;
  final pulumi.Input<String> sensitivityGroupId;

  /// Creates a new [GetZeroTrustDlpSensitivityGroupArgs].
  /// [accountId] Required.
  /// [sensitivityGroupId] Required.
  const GetZeroTrustDlpSensitivityGroupArgs({
    required this.accountId,
    required this.sensitivityGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'sensitivityGroupId': sensitivityGroupId,
    };
  }

  factory GetZeroTrustDlpSensitivityGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDlpSensitivityGroupArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      sensitivityGroupId: pulumi.Input.fromValue(map['sensitivityGroupId'] as String),
    );
  }
}
