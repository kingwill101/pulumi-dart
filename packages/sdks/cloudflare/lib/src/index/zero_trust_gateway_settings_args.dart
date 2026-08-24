// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_gateway_settings_settings.dart';

/// {@template pulumi_index_zero_trust_gateway_settings_zero_trust_gateway_settings_args_doc}
/// The set of arguments for ZeroTrustGatewaySettings.
/// {@endtemplate}
/// {@macro pulumi_index_zero_trust_gateway_settings_zero_trust_gateway_settings_args_doc}
class ZeroTrustGatewaySettingsArgs {
  final pulumi.Input<String> accountId;
  /// Specify account settings.
  final pulumi.Input<ZeroTrustGatewaySettingsSettings?>? settings;

  /// Creates a new [ZeroTrustGatewaySettingsArgs].
  /// [accountId] Required.
  /// [settings] Specify account settings.
  const ZeroTrustGatewaySettingsArgs({
    required this.accountId,
    this.settings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'settings': ?pulumi.Input.mapOptionalInputValue<ZeroTrustGatewaySettingsSettings, Map<String, dynamic>>(settings, (value) => value.toMap()),
    };
  }

  factory ZeroTrustGatewaySettingsArgs.fromMap(Map<String, dynamic> map) {
    return ZeroTrustGatewaySettingsArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      settings: (() { final guardedValue = map['settings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustGatewaySettingsSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
