// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_zero_trust_dlp_sensitivity_level_zero_trust_dlp_sensitivity_level_args_doc}
/// The set of arguments for ZeroTrustDlpSensitivityLevel.
/// {@endtemplate}
/// {@macro pulumi_index_zero_trust_dlp_sensitivity_level_zero_trust_dlp_sensitivity_level_args_doc}
class ZeroTrustDlpSensitivityLevelArgs {
  final pulumi.Input<String> accountId;
  final pulumi.Input<String?>? description;
  final pulumi.Input<String> name;
  final pulumi.Input<String> sensitivityGroupId;

  /// Creates a new [ZeroTrustDlpSensitivityLevelArgs].
  /// [accountId] Required.
  /// [description] Optional.
  /// [name] Required.
  /// [sensitivityGroupId] Required.
  const ZeroTrustDlpSensitivityLevelArgs({
    required this.accountId,
    this.description,
    required this.name,
    required this.sensitivityGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'description': ?description,
      'name': name,
      'sensitivityGroupId': sensitivityGroupId,
    };
  }

  factory ZeroTrustDlpSensitivityLevelArgs.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDlpSensitivityLevelArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      sensitivityGroupId: pulumi.Input.fromValue(map['sensitivityGroupId'] as String),
    );
  }
}
