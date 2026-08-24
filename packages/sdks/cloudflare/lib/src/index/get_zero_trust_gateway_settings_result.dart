// ignore_for_file: unused_element, unnecessary_cast

import 'get_zero_trust_gateway_settings_settings.dart';

/// Result data returned by getZeroTrustGatewaySettings.
class GetZeroTrustGatewaySettingsResult {
  final String? accountId;
  final String? createdAt;
  /// The ID of this resource.
  final String? id;
  /// Specify account settings.
  final GetZeroTrustGatewaySettingsSettings? settings;
  final String? updatedAt;

  /// Creates a new [GetZeroTrustGatewaySettingsResult].
  /// [accountId] Optional.
  /// [createdAt] Optional.
  /// [id] The ID of this resource.
  /// [settings] Specify account settings.
  /// [updatedAt] Optional.
  const GetZeroTrustGatewaySettingsResult({
    this.accountId,
    this.createdAt,
    this.id,
    this.settings,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'createdAt': ?createdAt,
      'id': ?id,
      'settings': ?settings?.toMap(),
      'updatedAt': ?updatedAt,
    };
  }

  factory GetZeroTrustGatewaySettingsResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustGatewaySettingsResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      settings: (() { final guardedValue = map['settings']; if (guardedValue == null) return null; return GetZeroTrustGatewaySettingsSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
