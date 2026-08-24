// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zero_trust_access_mtls_hostname_settings_get_zero_trust_access_mtls_hostname_settings_args_doc}
/// Arguments for getZeroTrustAccessMtlsHostnameSettings.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_access_mtls_hostname_settings_get_zero_trust_access_mtls_hostname_settings_args_doc}
class GetZeroTrustAccessMtlsHostnameSettingsArgs {
  /// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  final pulumi.Input<String?>? accountId;
  /// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetZeroTrustAccessMtlsHostnameSettingsArgs].
  /// [accountId] The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  /// [zoneId] The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  const GetZeroTrustAccessMtlsHostnameSettingsArgs({
    this.accountId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'zoneId': ?zoneId,
    };
  }

  factory GetZeroTrustAccessMtlsHostnameSettingsArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessMtlsHostnameSettingsArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
