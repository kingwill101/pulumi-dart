// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'orchestrated_virtual_machine_scale_set_os_profile_linux_configuration.dart';
import 'orchestrated_virtual_machine_scale_set_os_profile_windows_configuration.dart';

class OrchestratedVirtualMachineScaleSetOsProfile {
  /// The Base64-Encoded Custom Data which should be used for this Virtual Machine Scale Set.
  ///
  /// &gt; **Note:** When Custom Data has been configured, it's not possible to remove it without tainting the Virtual Machine Scale Set, due to a limitation of the Azure API.
  final pulumi.Input<String>? customData;

  /// A `linux_configuration` block as documented below.
  final pulumi.Input<
    OrchestratedVirtualMachineScaleSetOsProfileLinuxConfiguration
  >?
  linuxConfiguration;

  /// A `windows_configuration` block as documented below.
  final pulumi.Input<
    OrchestratedVirtualMachineScaleSetOsProfileWindowsConfiguration
  >?
  windowsConfiguration;

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
      'linuxConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            OrchestratedVirtualMachineScaleSetOsProfileLinuxConfiguration,
            Map<String, dynamic>
          >(linuxConfiguration, (value) => value.toMap()),
      'windowsConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            OrchestratedVirtualMachineScaleSetOsProfileWindowsConfiguration,
            Map<String, dynamic>
          >(windowsConfiguration, (value) => value.toMap()),
    };
  }

  factory OrchestratedVirtualMachineScaleSetOsProfile.fromMap(
    Map<String, dynamic> map,
  ) {
    return OrchestratedVirtualMachineScaleSetOsProfile(
      customData: (() {
        final guardedValue = map['customData'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      linuxConfiguration: (() {
        final guardedValue = map['linuxConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          OrchestratedVirtualMachineScaleSetOsProfileLinuxConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      windowsConfiguration: (() {
        final guardedValue = map['windowsConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          OrchestratedVirtualMachineScaleSetOsProfileWindowsConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
