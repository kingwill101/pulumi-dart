// ignore_for_file: unused_element, unnecessary_cast

import 'orchestrated_virtual_machine_scale_set_os_profile_linux_configuration.dart';
import 'orchestrated_virtual_machine_scale_set_os_profile_windows_configuration.dart';

class OrchestratedVirtualMachineScaleSetOsProfile {
  /// The Base64-Encoded Custom Data which should be used for this Virtual Machine Scale Set.
  ///
  /// > **Note:** When Custom Data has been configured, it's not possible to remove it without tainting the Virtual Machine Scale Set, due to a limitation of the Azure API.
  final String? customData;
  /// A `linux_configuration` block as documented below.
  final OrchestratedVirtualMachineScaleSetOsProfileLinuxConfiguration? linuxConfiguration;
  /// A `windows_configuration` block as documented below.
  final OrchestratedVirtualMachineScaleSetOsProfileWindowsConfiguration? windowsConfiguration;

  /// Creates a new [OrchestratedVirtualMachineScaleSetOsProfile].
  /// [customData] The Base64-Encoded Custom Data which should be used for this Virtual Machine Scale Set.
  /// [linuxConfiguration] A `linux_configuration` block as documented below.
  /// [windowsConfiguration] A `windows_configuration` block as documented below.
  OrchestratedVirtualMachineScaleSetOsProfile({
    this.customData,
    this.linuxConfiguration,
    this.windowsConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customData': ?customData,
      'linuxConfiguration': ?linuxConfiguration == null ? null : linuxConfiguration!.toMap(),
      'windowsConfiguration': ?windowsConfiguration == null ? null : windowsConfiguration!.toMap(),
    };
  }

  factory OrchestratedVirtualMachineScaleSetOsProfile.fromMap(Map<String, dynamic> map) {
    return OrchestratedVirtualMachineScaleSetOsProfile(
      customData: map['customData'] == null ? null : map['customData'] as String,
      linuxConfiguration: map['linuxConfiguration'] == null ? null : OrchestratedVirtualMachineScaleSetOsProfileLinuxConfiguration.fromMap((map['linuxConfiguration'] as Map).cast<String, dynamic>()),
      windowsConfiguration: map['windowsConfiguration'] == null ? null : OrchestratedVirtualMachineScaleSetOsProfileWindowsConfiguration.fromMap((map['windowsConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

