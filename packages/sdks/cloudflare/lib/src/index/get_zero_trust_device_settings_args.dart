// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zero_trust_device_settings_get_zero_trust_device_settings_args_doc}
/// Arguments for getZeroTrustDeviceSettings.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_device_settings_get_zero_trust_device_settings_args_doc}
class GetZeroTrustDeviceSettingsArgs {
  final pulumi.Input<String?>? accountId;

  /// Creates a new [GetZeroTrustDeviceSettingsArgs].
  /// [accountId] Optional.
  const GetZeroTrustDeviceSettingsArgs({
    this.accountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
    };
  }

  factory GetZeroTrustDeviceSettingsArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDeviceSettingsArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
