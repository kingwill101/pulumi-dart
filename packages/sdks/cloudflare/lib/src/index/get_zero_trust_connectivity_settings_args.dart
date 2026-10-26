// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zero_trust_connectivity_settings_get_zero_trust_connectivity_settings_args_doc}
/// Arguments for getZeroTrustConnectivitySettings.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_connectivity_settings_get_zero_trust_connectivity_settings_args_doc}
class GetZeroTrustConnectivitySettingsArgs {
  /// Cloudflare account ID
  final pulumi.Input<String> accountId;

  /// Creates a new [GetZeroTrustConnectivitySettingsArgs].
  /// [accountId] Cloudflare account ID
  const GetZeroTrustConnectivitySettingsArgs({
    required this.accountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
    };
  }

  factory GetZeroTrustConnectivitySettingsArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustConnectivitySettingsArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
    );
  }
}
