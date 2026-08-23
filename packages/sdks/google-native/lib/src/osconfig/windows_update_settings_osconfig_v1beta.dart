// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'windows_update_settings_classifications_item_osconfig_v1beta.dart';

/// Windows patching is performed using the Windows Update Agent.
class WindowsUpdateSettingsOsconfigV1beta {
  /// Only apply updates of these windows update classifications. If empty, all updates are applied.
  final pulumi.Input<List<WindowsUpdateSettingsClassificationsItemOsconfigV1beta>>? classifications;
  /// List of KBs to exclude from update.
  final pulumi.Input<List<String>>? excludes;
  /// An exclusive list of kbs to be updated. These are the only patches that will be updated. This field must not be used with other patch configurations.
  final pulumi.Input<List<String>>? exclusivePatches;

  /// Creates a new [WindowsUpdateSettingsOsconfigV1beta].
  /// [classifications] Only apply updates of these windows update classifications. If empty, all updates are applied.
  /// [excludes] List of KBs to exclude from update.
  /// [exclusivePatches] An exclusive list of kbs to be updated. These are the only patches that will be updated. This field must not be used with other patch configurations.
  const WindowsUpdateSettingsOsconfigV1beta({
    this.classifications,
    this.excludes,
    this.exclusivePatches,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'classifications': ?pulumi.Input.mapOptionalInputValue<List<WindowsUpdateSettingsClassificationsItemOsconfigV1beta>, List<String>>(classifications, (value) => pulumi.Input.encodeList<WindowsUpdateSettingsClassificationsItemOsconfigV1beta, String>(value, (value) => value.wireValue)),
      'excludes': ?excludes,
      'exclusivePatches': ?exclusivePatches,
    };
  }

  factory WindowsUpdateSettingsOsconfigV1beta.fromMap(Map<String, dynamic> map) {
    return WindowsUpdateSettingsOsconfigV1beta(
      classifications: (() { final guardedValue = map['classifications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WindowsUpdateSettingsClassificationsItemOsconfigV1beta>(guardedValue, (value) => WindowsUpdateSettingsClassificationsItemOsconfigV1beta.fromValue(value as String))); })(),
      excludes: (() { final guardedValue = map['excludes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      exclusivePatches: (() { final guardedValue = map['exclusivePatches']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
