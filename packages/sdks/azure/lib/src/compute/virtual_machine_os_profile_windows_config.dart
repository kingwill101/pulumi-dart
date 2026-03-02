// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_os_profile_windows_config_additional_unattend_config.dart';
import 'virtual_machine_os_profile_windows_config_winrm.dart';

class VirtualMachineOsProfileWindowsConfig {
  /// An `additional_unattend_config` block as defined below.
  final pulumi.Input<List<VirtualMachineOsProfileWindowsConfigAdditionalUnattendConfig>>? additionalUnattendConfigs;
  /// Are automatic updates enabled on this Virtual Machine? Defaults to `false`.
  final pulumi.Input<bool>? enableAutomaticUpgrades;
  /// Should the Azure Virtual Machine Guest Agent be installed on this Virtual Machine? Defaults to `false`.
  ///
  /// > **NOTE:** This is different from the Default value used for this field within Azure.
  final pulumi.Input<bool>? provisionVmAgent;
  /// Specifies the time zone of the virtual machine, [the possible values are defined here](https://jackstromberg.com/2017/01/list-of-time-zones-consumed-by-azure/). Changing this forces a new resource to be created.
  final pulumi.Input<String>? timezone;
  /// One or more `winrm` blocks as defined below.
  final pulumi.Input<List<VirtualMachineOsProfileWindowsConfigWinrm>>? winrms;

  /// Creates a new [VirtualMachineOsProfileWindowsConfig].
  /// [additionalUnattendConfigs] An `additional_unattend_config` block as defined below.
  /// [enableAutomaticUpgrades] Are automatic updates enabled on this Virtual Machine? Defaults to `false`.
  /// [provisionVmAgent] Should the Azure Virtual Machine Guest Agent be installed on this Virtual Machine? Defaults to `false`.
  /// [timezone] Specifies the time zone of the virtual machine, [the possible values are defined here](https://jackstromberg.com/2017/01/list-of-time-zones-consumed-by-azure/). Changing this forces a new resource to be created.
  /// [winrms] One or more `winrm` blocks as defined below.
  VirtualMachineOsProfileWindowsConfig({
    this.additionalUnattendConfigs,
    this.enableAutomaticUpgrades,
    this.provisionVmAgent,
    this.timezone,
    this.winrms,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalUnattendConfigs': ?pulumi.Input.mapOptionalInputValue<List<VirtualMachineOsProfileWindowsConfigAdditionalUnattendConfig>, List<Map<String, dynamic>>>(additionalUnattendConfigs, (value) => pulumi.Input.encodeList<VirtualMachineOsProfileWindowsConfigAdditionalUnattendConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enableAutomaticUpgrades': ?enableAutomaticUpgrades,
      'provisionVmAgent': ?provisionVmAgent,
      'timezone': ?timezone,
      'winrms': ?pulumi.Input.mapOptionalInputValue<List<VirtualMachineOsProfileWindowsConfigWinrm>, List<Map<String, dynamic>>>(winrms, (value) => pulumi.Input.encodeList<VirtualMachineOsProfileWindowsConfigWinrm, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory VirtualMachineOsProfileWindowsConfig.fromMap(Map<String, dynamic> map) {
    return VirtualMachineOsProfileWindowsConfig(
      additionalUnattendConfigs: map['additionalUnattendConfigs'] == null ? null : (pulumi.Input.decodeList<VirtualMachineOsProfileWindowsConfigAdditionalUnattendConfig>(map['additionalUnattendConfigs'], (value) => VirtualMachineOsProfileWindowsConfigAdditionalUnattendConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      enableAutomaticUpgrades: map['enableAutomaticUpgrades'] == null ? null : (map['enableAutomaticUpgrades'] as bool).input(),
      provisionVmAgent: map['provisionVmAgent'] == null ? null : (map['provisionVmAgent'] as bool).input(),
      timezone: map['timezone'] == null ? null : (map['timezone'] as String).input(),
      winrms: map['winrms'] == null ? null : (pulumi.Input.decodeList<VirtualMachineOsProfileWindowsConfigWinrm>(map['winrms'], (value) => VirtualMachineOsProfileWindowsConfigWinrm.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

