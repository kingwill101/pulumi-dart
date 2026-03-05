// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'windows_update_settings_classifications_item.dart';

/// Windows patching is performed using the Windows Update Agent.
class WindowsUpdateSettings {
  /// Only apply updates of these windows update classifications. If empty, all updates are applied.
  final pulumi.Input<List<WindowsUpdateSettingsClassificationsItem>>? classifications;
  /// List of KBs to exclude from update.
  final pulumi.Input<List<String>>? excludes;
  /// An exclusive list of kbs to be updated. These are the only patches that will be updated. This field must not be used with other patch configurations.
  final pulumi.Input<List<String>>? exclusivePatches;

  /// Creates a new [WindowsUpdateSettings].
  /// [classifications] Only apply updates of these windows update classifications. If empty, all updates are applied.
  /// [excludes] List of KBs to exclude from update.
  /// [exclusivePatches] An exclusive list of kbs to be updated. These are the only patches that will be updated. This field must not be used with other patch configurations.
  WindowsUpdateSettings({
    this.classifications,
    this.excludes,
    this.exclusivePatches,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'classifications': ?pulumi.Input.mapOptionalInputValue<List<WindowsUpdateSettingsClassificationsItem>, List<String>>(classifications, (value) => pulumi.Input.encodeList<WindowsUpdateSettingsClassificationsItem, String>(value, (value) => value.wireValue)),
      'excludes': ?excludes,
      'exclusivePatches': ?exclusivePatches,
    };
  }

  factory WindowsUpdateSettings.fromMap(Map<String, dynamic> map) {
    return WindowsUpdateSettings(
      classifications: (() { final guardedValue = map['classifications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WindowsUpdateSettingsClassificationsItem>(guardedValue, (value) => WindowsUpdateSettingsClassificationsItem.fromValue(value as String))); })(),
      excludes: (() { final guardedValue = map['excludes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      exclusivePatches: (() { final guardedValue = map['exclusivePatches']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

