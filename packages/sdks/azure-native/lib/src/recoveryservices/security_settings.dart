// ignore_for_file: unused_element, unnecessary_cast

import 'immutability_settings.dart';
import 'soft_delete_settings.dart';

/// Security Settings of the vault
class SecuritySettings {
  /// Immutability Settings of a vault
  final ImmutabilitySettings? immutabilitySettings;
  /// Soft delete Settings of a vault
  final SoftDeleteSettings? softDeleteSettings;

  /// Creates a new [SecuritySettings].
  /// [immutabilitySettings] Immutability Settings of a vault
  /// [softDeleteSettings] Soft delete Settings of a vault
  SecuritySettings({
    this.immutabilitySettings,
    this.softDeleteSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'immutabilitySettings': ?immutabilitySettings == null ? null : immutabilitySettings!.toMap(),
      'softDeleteSettings': ?softDeleteSettings == null ? null : softDeleteSettings!.toMap(),
    };
  }

  factory SecuritySettings.fromMap(Map<String, dynamic> map) {
    return SecuritySettings(
      immutabilitySettings: map['immutabilitySettings'] == null ? null : ImmutabilitySettings.fromMap((map['immutabilitySettings'] as Map).cast<String, dynamic>()),
      softDeleteSettings: map['softDeleteSettings'] == null ? null : SoftDeleteSettings.fromMap((map['softDeleteSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

