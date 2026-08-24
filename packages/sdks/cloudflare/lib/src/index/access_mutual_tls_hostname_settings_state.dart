// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_mutual_tls_hostname_settings_setting.dart';

/// Input properties used for looking up and filtering AccessMutualTlsHostnameSettings resources.
class AccessMutualTlsHostnameSettingsState {
  /// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  final pulumi.Input<String?>? accountId;
  /// Request client certificates for this hostname in China. Can only be set to true if this zone is china network enabled.
  final pulumi.Input<bool?>? chinaNetwork;
  /// Client Certificate Forwarding is a feature that takes the client cert provided by the eyeball to the edge, and forwards it to the origin as a HTTP header to allow logging on the origin.
  final pulumi.Input<bool?>? clientCertificateForwarding;
  /// The hostname that these settings apply to.
  final pulumi.Input<String?>? hostname;
  final pulumi.Input<List<AccessMutualTlsHostnameSettingsSetting>?>? settings;
  /// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [AccessMutualTlsHostnameSettingsState].
  /// [accountId] The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  /// [chinaNetwork] Request client certificates for this hostname in China. Can only be set to true if this zone is china network enabled.
  /// [clientCertificateForwarding] Client Certificate Forwarding is a feature that takes the client cert provided by the eyeball to the edge, and forwards it to the origin as a HTTP header to allow logging on the origin.
  /// [hostname] The hostname that these settings apply to.
  /// [settings] Optional.
  /// [zoneId] The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  const AccessMutualTlsHostnameSettingsState({
    this.accountId,
    this.chinaNetwork,
    this.clientCertificateForwarding,
    this.hostname,
    this.settings,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'chinaNetwork': ?chinaNetwork,
      'clientCertificateForwarding': ?clientCertificateForwarding,
      'hostname': ?hostname,
      'settings': ?pulumi.Input.mapOptionalInputValue<List<AccessMutualTlsHostnameSettingsSetting>, List<Map<String, dynamic>>>(settings, (value) => pulumi.Input.encodeList<AccessMutualTlsHostnameSettingsSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'zoneId': ?zoneId,
    };
  }

  factory AccessMutualTlsHostnameSettingsState.fromMap(Map<String, dynamic> map) {
    return AccessMutualTlsHostnameSettingsState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      chinaNetwork: (() { final guardedValue = map['chinaNetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      clientCertificateForwarding: (() { final guardedValue = map['clientCertificateForwarding']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      settings: (() { final guardedValue = map['settings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AccessMutualTlsHostnameSettingsSetting>(guardedValue, (value) => AccessMutualTlsHostnameSettingsSetting.fromMap((value as Map).cast<String, dynamic>()))); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
