// ignore_for_file: unused_element, unnecessary_cast

import 'aml_filesystem_hsm_settings.dart';

/// Hydration and archive settings and status
class AmlFilesystemHsm {
  /// Specifies HSM settings of the AML file system.
  final AmlFilesystemHsmSettings? settings;

  /// Creates a new [AmlFilesystemHsm].
  /// [settings] Specifies HSM settings of the AML file system.
  AmlFilesystemHsm({
    this.settings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'settings': ?settings == null ? null : settings!.toMap(),
    };
  }

  factory AmlFilesystemHsm.fromMap(Map<String, dynamic> map) {
    return AmlFilesystemHsm(
      settings: map['settings'] == null ? null : AmlFilesystemHsmSettings.fromMap((map['settings'] as Map).cast<String, dynamic>()),
    );
  }
}

