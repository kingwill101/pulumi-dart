// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aml_filesystem_hsm_settings.dart';

/// Hydration and archive settings and status
class AmlFilesystemHsm {
  /// Specifies HSM settings of the AML file system.
  final pulumi.Input<AmlFilesystemHsmSettings>? settings;

  /// Creates a new [AmlFilesystemHsm].
  /// [settings] Specifies HSM settings of the AML file system.
  const AmlFilesystemHsm({
    this.settings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'settings': ?pulumi.Input.mapOptionalInputValue<AmlFilesystemHsmSettings, Map<String, dynamic>>(settings, (value) => value.toMap()),
    };
  }

  factory AmlFilesystemHsm.fromMap(Map<String, dynamic> map) {
    return AmlFilesystemHsm(
      settings: (() { final guardedValue = map['settings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AmlFilesystemHsmSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
