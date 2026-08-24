// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_zero_trust_dlp_sensitivity_group_zero_trust_dlp_sensitivity_group_args_doc}
/// The set of arguments for ZeroTrustDlpSensitivityGroup.
/// {@endtemplate}
/// {@macro pulumi_index_zero_trust_dlp_sensitivity_group_zero_trust_dlp_sensitivity_group_args_doc}
class ZeroTrustDlpSensitivityGroupArgs {
  final pulumi.Input<String> accountId;
  final pulumi.Input<String?>? description;
  final pulumi.Input<String> name;

  /// Creates a new [ZeroTrustDlpSensitivityGroupArgs].
  /// [accountId] Required.
  /// [description] Optional.
  /// [name] Required.
  const ZeroTrustDlpSensitivityGroupArgs({
    required this.accountId,
    this.description,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'description': ?description,
      'name': name,
    };
  }

  factory ZeroTrustDlpSensitivityGroupArgs.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDlpSensitivityGroupArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
