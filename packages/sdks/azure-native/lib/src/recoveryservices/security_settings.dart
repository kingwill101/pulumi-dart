// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'immutability_settings.dart';
import 'soft_delete_settings.dart';

/// Security Settings of the vault
class SecuritySettings {
  /// Immutability Settings of a vault
  final pulumi.Input<ImmutabilitySettings>? immutabilitySettings;
  /// Soft delete Settings of a vault
  final pulumi.Input<SoftDeleteSettings>? softDeleteSettings;

  /// Creates a new [SecuritySettings].
  /// [immutabilitySettings] Immutability Settings of a vault
  /// [softDeleteSettings] Soft delete Settings of a vault
  const SecuritySettings({
    this.immutabilitySettings,
    this.softDeleteSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'immutabilitySettings': ?pulumi.Input.mapOptionalInputValue<ImmutabilitySettings, Map<String, dynamic>>(immutabilitySettings, (value) => value.toMap()),
      'softDeleteSettings': ?pulumi.Input.mapOptionalInputValue<SoftDeleteSettings, Map<String, dynamic>>(softDeleteSettings, (value) => value.toMap()),
    };
  }

  factory SecuritySettings.fromMap(Map<String, dynamic> map) {
    return SecuritySettings(
      immutabilitySettings: (() { final guardedValue = map['immutabilitySettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ImmutabilitySettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      softDeleteSettings: (() { final guardedValue = map['softDeleteSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SoftDeleteSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

