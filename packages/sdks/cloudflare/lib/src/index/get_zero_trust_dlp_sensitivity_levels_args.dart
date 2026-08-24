// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zero_trust_dlp_sensitivity_levels_get_zero_trust_dlp_sensitivity_levels_args_doc}
/// Arguments for getZeroTrustDlpSensitivityLevels.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_dlp_sensitivity_levels_get_zero_trust_dlp_sensitivity_levels_args_doc}
class GetZeroTrustDlpSensitivityLevelsArgs {
  final pulumi.Input<String> accountId;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  final pulumi.Input<String> sensitivityGroupId;

  /// Creates a new [GetZeroTrustDlpSensitivityLevelsArgs].
  /// [accountId] Required.
  /// [maxItems] Max items to fetch, default: 1000
  /// [sensitivityGroupId] Required.
  const GetZeroTrustDlpSensitivityLevelsArgs({
    required this.accountId,
    this.maxItems,
    required this.sensitivityGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'maxItems': ?maxItems,
      'sensitivityGroupId': sensitivityGroupId,
    };
  }

  factory GetZeroTrustDlpSensitivityLevelsArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDlpSensitivityLevelsArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      sensitivityGroupId: pulumi.Input.fromValue(map['sensitivityGroupId'] as String),
    );
  }
}
