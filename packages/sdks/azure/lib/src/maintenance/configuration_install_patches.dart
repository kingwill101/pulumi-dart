// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_install_patches_linux.dart';
import 'configuration_install_patches_window.dart';

class ConfigurationInstallPatches {
  /// A `linux` block as defined above. This property only applies when `scope` is set to `InGuestPatch`
  final List<ConfigurationInstallPatchesLinux>? linuxes;
  /// Possible reboot preference as defined by the user based on which it would be decided to reboot the machine or not after the patch operation is completed. Possible values are `Always`, `IfRequired` and `Never`. This property only applies when `scope` is set to `InGuestPatch`.
  final String? reboot;
  /// A `windows` block as defined above. This property only applies when `scope` is set to `InGuestPatch`
  final List<ConfigurationInstallPatchesWindow>? windows;

  /// Creates a new [ConfigurationInstallPatches].
  /// [linuxes] A `linux` block as defined above. This property only applies when `scope` is set to `InGuestPatch`
  /// [reboot] Possible reboot preference as defined by the user based on which it would be decided to reboot the machine or not after the patch operation is completed. Possible values are `Always`, `IfRequired` and `Never`. This property only applies when `scope` is set to `InGuestPatch`.
  /// [windows] A `windows` block as defined above. This property only applies when `scope` is set to `InGuestPatch`
  ConfigurationInstallPatches({
    this.linuxes,
    this.reboot,
    this.windows,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linuxes': ?linuxes == null ? null : pulumi.Input.encodeList<ConfigurationInstallPatchesLinux, Map<String, dynamic>>(linuxes!, (value) => value.toMap()),
      'reboot': ?reboot,
      'windows': ?windows == null ? null : pulumi.Input.encodeList<ConfigurationInstallPatchesWindow, Map<String, dynamic>>(windows!, (value) => value.toMap()),
    };
  }

  factory ConfigurationInstallPatches.fromMap(Map<String, dynamic> map) {
    return ConfigurationInstallPatches(
      linuxes: map['linuxes'] == null ? null : pulumi.Input.decodeList<ConfigurationInstallPatchesLinux>(map['linuxes'], (value) => ConfigurationInstallPatchesLinux.fromMap((value as Map).cast<String, dynamic>())),
      reboot: map['reboot'] == null ? null : map['reboot'] as String,
      windows: map['windows'] == null ? null : pulumi.Input.decodeList<ConfigurationInstallPatchesWindow>(map['windows'], (value) => ConfigurationInstallPatchesWindow.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

