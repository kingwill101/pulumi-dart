// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_gateway_settings_settings.dart';

/// Input properties used for looking up and filtering ZeroTrustGatewaySettings resources.
class ZeroTrustGatewaySettingsState {
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<String?>? createdAt;
  /// Specify account settings.
  final pulumi.Input<ZeroTrustGatewaySettingsSettings?>? settings;
  final pulumi.Input<String?>? updatedAt;

  /// Creates a new [ZeroTrustGatewaySettingsState].
  /// [accountId] Optional.
  /// [createdAt] Optional.
  /// [settings] Specify account settings.
  /// [updatedAt] Optional.
  const ZeroTrustGatewaySettingsState({
    this.accountId,
    this.createdAt,
    this.settings,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'createdAt': ?createdAt,
      'settings': ?pulumi.Input.mapOptionalInputValue<ZeroTrustGatewaySettingsSettings, Map<String, dynamic>>(settings, (value) => value.toMap()),
      'updatedAt': ?updatedAt,
    };
  }

  factory ZeroTrustGatewaySettingsState.fromMap(Map<String, dynamic> map) {
    return ZeroTrustGatewaySettingsState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      settings: (() { final guardedValue = map['settings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustGatewaySettingsSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
