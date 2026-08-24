// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zero_trust_dlp_settings_get_zero_trust_dlp_settings_args_doc}
/// Arguments for getZeroTrustDlpSettings.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_dlp_settings_get_zero_trust_dlp_settings_args_doc}
class GetZeroTrustDlpSettingsArgs {
  final pulumi.Input<String> accountId;

  /// Creates a new [GetZeroTrustDlpSettingsArgs].
  /// [accountId] Required.
  const GetZeroTrustDlpSettingsArgs({
    required this.accountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
    };
  }

  factory GetZeroTrustDlpSettingsArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDlpSettingsArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
    );
  }
}
