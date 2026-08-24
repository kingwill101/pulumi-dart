// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_mutual_tls_hostname_settings_setting.dart';

/// {@template pulumi_index_access_mutual_tls_hostname_settings_access_mutual_tls_hostname_settings_args_doc}
/// The set of arguments for AccessMutualTlsHostnameSettings.
/// {@endtemplate}
/// {@macro pulumi_index_access_mutual_tls_hostname_settings_access_mutual_tls_hostname_settings_args_doc}
class AccessMutualTlsHostnameSettingsArgs {
  /// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<List<AccessMutualTlsHostnameSettingsSetting>> settings;
  /// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [AccessMutualTlsHostnameSettingsArgs].
  /// [accountId] The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  /// [settings] Required.
  /// [zoneId] The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  const AccessMutualTlsHostnameSettingsArgs({
    this.accountId,
    required this.settings,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'settings': pulumi.Input.mapInputValue<List<AccessMutualTlsHostnameSettingsSetting>, List<Map<String, dynamic>>>(settings, (value) => pulumi.Input.encodeList<AccessMutualTlsHostnameSettingsSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'zoneId': ?zoneId,
    };
  }

  factory AccessMutualTlsHostnameSettingsArgs.fromMap(Map<String, dynamic> map) {
    return AccessMutualTlsHostnameSettingsArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      settings: pulumi.Input.fromValue(pulumi.Input.decodeList<AccessMutualTlsHostnameSettingsSetting>(map['settings']!, (value) => AccessMutualTlsHostnameSettingsSetting.fromMap((value as Map).cast<String, dynamic>()))),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
