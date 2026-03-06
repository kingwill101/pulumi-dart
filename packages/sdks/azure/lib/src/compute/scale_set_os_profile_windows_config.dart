// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scale_set_os_profile_windows_config_additional_unattend_config.dart';
import 'scale_set_os_profile_windows_config_winrm.dart';

class ScaleSetOsProfileWindowsConfig {
  /// An `additional_unattend_config` block as documented below.
  final pulumi.Input<List<ScaleSetOsProfileWindowsConfigAdditionalUnattendConfig>>? additionalUnattendConfigs;
  /// Indicates whether virtual machines in the scale set are enabled for automatic updates.
  final pulumi.Input<bool>? enableAutomaticUpgrades;
  /// Indicates whether virtual machine agent should be provisioned on the virtual machines in the scale set.
  final pulumi.Input<bool>? provisionVmAgent;
  /// A collection of `winrm` blocks as documented below.
  final pulumi.Input<List<ScaleSetOsProfileWindowsConfigWinrm>>? winrms;

  /// Creates a new [ScaleSetOsProfileWindowsConfig].
  /// [additionalUnattendConfigs] An `additional_unattend_config` block as documented below.
  /// [enableAutomaticUpgrades] Indicates whether virtual machines in the scale set are enabled for automatic updates.
  /// [provisionVmAgent] Indicates whether virtual machine agent should be provisioned on the virtual machines in the scale set.
  /// [winrms] A collection of `winrm` blocks as documented below.
  const ScaleSetOsProfileWindowsConfig({
    this.additionalUnattendConfigs,
    this.enableAutomaticUpgrades,
    this.provisionVmAgent,
    this.winrms,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalUnattendConfigs': ?pulumi.Input.mapOptionalInputValue<List<ScaleSetOsProfileWindowsConfigAdditionalUnattendConfig>, List<Map<String, dynamic>>>(additionalUnattendConfigs, (value) => pulumi.Input.encodeList<ScaleSetOsProfileWindowsConfigAdditionalUnattendConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enableAutomaticUpgrades': ?enableAutomaticUpgrades,
      'provisionVmAgent': ?provisionVmAgent,
      'winrms': ?pulumi.Input.mapOptionalInputValue<List<ScaleSetOsProfileWindowsConfigWinrm>, List<Map<String, dynamic>>>(winrms, (value) => pulumi.Input.encodeList<ScaleSetOsProfileWindowsConfigWinrm, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ScaleSetOsProfileWindowsConfig.fromMap(Map<String, dynamic> map) {
    return ScaleSetOsProfileWindowsConfig(
      additionalUnattendConfigs: (() { final guardedValue = map['additionalUnattendConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ScaleSetOsProfileWindowsConfigAdditionalUnattendConfig>(guardedValue, (value) => ScaleSetOsProfileWindowsConfigAdditionalUnattendConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      enableAutomaticUpgrades: (() { final guardedValue = map['enableAutomaticUpgrades']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      provisionVmAgent: (() { final guardedValue = map['provisionVmAgent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      winrms: (() { final guardedValue = map['winrms']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ScaleSetOsProfileWindowsConfigWinrm>(guardedValue, (value) => ScaleSetOsProfileWindowsConfigWinrm.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

