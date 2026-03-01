// ignore_for_file: unused_element, unnecessary_cast

import 'immutability_settings_response.dart';
import 'soft_delete_settings_response.dart';

/// Security Settings of the vault
class SecuritySettingsResponse {
  /// Immutability Settings of a vault
  final ImmutabilitySettingsResponse? immutabilitySettings;
  /// MUA Settings of a vault
  final String multiUserAuthorization;
  /// Soft delete Settings of a vault
  final SoftDeleteSettingsResponse? softDeleteSettings;

  /// Creates a new [SecuritySettingsResponse].
  /// [immutabilitySettings] Immutability Settings of a vault
  /// [multiUserAuthorization] MUA Settings of a vault
  /// [softDeleteSettings] Soft delete Settings of a vault
  SecuritySettingsResponse({
    this.immutabilitySettings,
    required this.multiUserAuthorization,
    this.softDeleteSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'immutabilitySettings': ?immutabilitySettings == null ? null : immutabilitySettings!.toMap(),
      'multiUserAuthorization': multiUserAuthorization,
      'softDeleteSettings': ?softDeleteSettings == null ? null : softDeleteSettings!.toMap(),
    };
  }

  factory SecuritySettingsResponse.fromMap(Map<String, dynamic> map) {
    return SecuritySettingsResponse(
      immutabilitySettings: map['immutabilitySettings'] == null ? null : ImmutabilitySettingsResponse.fromMap((map['immutabilitySettings'] as Map).cast<String, dynamic>()),
      multiUserAuthorization: map['multiUserAuthorization'] as String,
      softDeleteSettings: map['softDeleteSettings'] == null ? null : SoftDeleteSettingsResponse.fromMap((map['softDeleteSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

