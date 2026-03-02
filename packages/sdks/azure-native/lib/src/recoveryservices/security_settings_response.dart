// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'immutability_settings_response.dart';
import 'soft_delete_settings_response.dart';

/// Security Settings of the vault
class SecuritySettingsResponse {
  /// Immutability Settings of a vault
  final pulumi.Input<ImmutabilitySettingsResponse>? immutabilitySettings;
  /// MUA Settings of a vault
  final pulumi.Input<String> multiUserAuthorization;
  /// Soft delete Settings of a vault
  final pulumi.Input<SoftDeleteSettingsResponse>? softDeleteSettings;

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
      'immutabilitySettings': ?pulumi.Input.mapOptionalInputValue<ImmutabilitySettingsResponse, Map<String, dynamic>>(immutabilitySettings, (value) => value.toMap()),
      'multiUserAuthorization': multiUserAuthorization,
      'softDeleteSettings': ?pulumi.Input.mapOptionalInputValue<SoftDeleteSettingsResponse, Map<String, dynamic>>(softDeleteSettings, (value) => value.toMap()),
    };
  }

  factory SecuritySettingsResponse.fromMap(Map<String, dynamic> map) {
    return SecuritySettingsResponse(
      immutabilitySettings: map['immutabilitySettings'] == null ? null : (ImmutabilitySettingsResponse.fromMap((map['immutabilitySettings'] as Map).cast<String, dynamic>())).input(),
      multiUserAuthorization: (map['multiUserAuthorization'] as String).input(),
      softDeleteSettings: map['softDeleteSettings'] == null ? null : (SoftDeleteSettingsResponse.fromMap((map['softDeleteSettings'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

