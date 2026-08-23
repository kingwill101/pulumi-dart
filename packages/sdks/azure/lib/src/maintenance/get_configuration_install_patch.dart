// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_configuration_install_patch_linux.dart';
import 'get_configuration_install_patch_window.dart';

class GetConfigurationInstallPatch {
  /// A `linux` block as defined below.
  final pulumi.Input<List<GetConfigurationInstallPatchLinux>> linuxes;
  /// Possible reboot preference as defined by the user based on which it would be decided to reboot the machine or not after the patch operation is completed.
  final pulumi.Input<String> reboot;
  /// A `windows` block as defined below.
  final pulumi.Input<List<GetConfigurationInstallPatchWindow>> windows;

  /// Creates a new [GetConfigurationInstallPatch].
  /// [linuxes] A `linux` block as defined below.
  /// [reboot] Possible reboot preference as defined by the user based on which it would be decided to reboot the machine or not after the patch operation is completed.
  /// [windows] A `windows` block as defined below.
  const GetConfigurationInstallPatch({
    required this.linuxes,
    required this.reboot,
    required this.windows,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linuxes': pulumi.Input.mapInputValue<List<GetConfigurationInstallPatchLinux>, List<Map<String, dynamic>>>(linuxes, (value) => pulumi.Input.encodeList<GetConfigurationInstallPatchLinux, Map<String, dynamic>>(value, (value) => value.toMap())),
      'reboot': reboot,
      'windows': pulumi.Input.mapInputValue<List<GetConfigurationInstallPatchWindow>, List<Map<String, dynamic>>>(windows, (value) => pulumi.Input.encodeList<GetConfigurationInstallPatchWindow, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetConfigurationInstallPatch.fromMap(Map<String, dynamic> map) {
    return GetConfigurationInstallPatch(
      linuxes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetConfigurationInstallPatchLinux>(map['linuxes']!, (value) => GetConfigurationInstallPatchLinux.fromMap((value as Map).cast<String, dynamic>()))),
      reboot: pulumi.Input.fromValue(map['reboot'] as String),
      windows: pulumi.Input.fromValue(pulumi.Input.decodeList<GetConfigurationInstallPatchWindow>(map['windows']!, (value) => GetConfigurationInstallPatchWindow.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
