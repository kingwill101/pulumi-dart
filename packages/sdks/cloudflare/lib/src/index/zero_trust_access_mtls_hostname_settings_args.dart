// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_access_mtls_hostname_settings_setting.dart';

/// {@template pulumi_index_zero_trust_access_mtls_hostname_settings_zero_trust_access_mtls_hostname_settings_args_doc}
/// The set of arguments for ZeroTrustAccessMtlsHostnameSettings.
/// {@endtemplate}
/// {@macro pulumi_index_zero_trust_access_mtls_hostname_settings_zero_trust_access_mtls_hostname_settings_args_doc}
class ZeroTrustAccessMtlsHostnameSettingsArgs {
  /// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<List<ZeroTrustAccessMtlsHostnameSettingsSetting>> settings;
  /// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [ZeroTrustAccessMtlsHostnameSettingsArgs].
  /// [accountId] The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  /// [settings] Required.
  /// [zoneId] The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  const ZeroTrustAccessMtlsHostnameSettingsArgs({
    this.accountId,
    required this.settings,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'settings': pulumi.Input.mapInputValue<List<ZeroTrustAccessMtlsHostnameSettingsSetting>, List<Map<String, dynamic>>>(settings, (value) => pulumi.Input.encodeList<ZeroTrustAccessMtlsHostnameSettingsSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'zoneId': ?zoneId,
    };
  }

  factory ZeroTrustAccessMtlsHostnameSettingsArgs.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessMtlsHostnameSettingsArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      settings: pulumi.Input.fromValue(pulumi.Input.decodeList<ZeroTrustAccessMtlsHostnameSettingsSetting>(map['settings']!, (value) => ZeroTrustAccessMtlsHostnameSettingsSetting.fromMap((value as Map).cast<String, dynamic>()))),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
