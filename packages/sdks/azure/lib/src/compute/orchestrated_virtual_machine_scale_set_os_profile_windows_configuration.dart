// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'orchestrated_virtual_machine_scale_set_os_profile_windows_configuration_additional_unattend_content.dart';
import 'orchestrated_virtual_machine_scale_set_os_profile_windows_configuration_secret.dart';
import 'orchestrated_virtual_machine_scale_set_os_profile_windows_configuration_winrm_listener.dart';

class OrchestratedVirtualMachineScaleSetOsProfileWindowsConfiguration {
  /// One or more `additional_unattend_content` blocks as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<List<OrchestratedVirtualMachineScaleSetOsProfileWindowsConfigurationAdditionalUnattendContent>>? additionalUnattendContents;
  /// The Password which should be used for the local-administrator on this Virtual Machine. Changing this forces a new resource to be created.
  final pulumi.Input<String> adminPassword;
  /// The username of the local administrator on each Virtual Machine Scale Set instance. Changing this forces a new resource to be created.
  final pulumi.Input<String> adminUsername;
  /// The prefix which should be used for the name of the Virtual Machines in this Scale Set. If unspecified this defaults to the value for the `name` field. If the value of the `name` field is not a valid `computer_name_prefix`, then you must specify `computer_name_prefix`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? computerNamePrefix;
  /// Are automatic updates enabled for this Virtual Machine? Defaults to `true`.
  final pulumi.Input<bool>? enableAutomaticUpdates;
  /// Should the VM be patched without requiring a reboot? Possible values are `true` or `false`. Defaults to `false`. For more information about hot patching please see the [product documentation](https://docs.microsoft.com/azure/automanage/automanage-hotpatch).
  ///
  /// > **Note:** Hotpatching can only be enabled if the `patch_mode` is set to `AutomaticByPlatform`, the `provision_vm_agent` is set to `true`, your `source_image_reference` references a hotpatching enabled image, the VM's `sku_name` is set to a [Azure generation 2](https://docs.microsoft.com/azure/virtual-machines/generation-2#generation-2-vm-sizes) VM SKU and the `extension` contains an application health extension. An example of how to correctly configure a Virtual Machine Scale Set to provision a Windows Virtual Machine with hotpatching enabled can be found in the `./examples/orchestrated-vm-scale-set/hotpatching-enabled` directory within the GitHub Repository.
  final pulumi.Input<bool>? hotpatchingEnabled;
  /// Specifies the mode of VM Guest Patching for the virtual machines that are associated to the Virtual Machine Scale Set. Possible values are `AutomaticByPlatform` or `ImageDefault`. Defaults to `ImageDefault`.
  ///
  /// > **Note:** If the `patch_assessment_mode` is set to `AutomaticByPlatform` then the `provision_vm_agent` field must be set to `true`.
  final pulumi.Input<String>? patchAssessmentMode;
  /// Specifies the mode of in-guest patching of this Windows Virtual Machine. Possible values are `Manual`, `AutomaticByOS` and `AutomaticByPlatform`. Defaults to `AutomaticByOS`. For more information on patch modes please see the [product documentation](https://docs.microsoft.com/azure/virtual-machines/automatic-vm-guest-patching#patch-orchestration-modes).
  ///
  /// > **Note:** If `patch_mode` is set to `AutomaticByPlatform` the `provision_vm_agent` must be set to `true` and the `extension` must contain at least one application health extension.
  final pulumi.Input<String>? patchMode;
  /// Should the Azure VM Agent be provisioned on each Virtual Machine in the Scale Set? Defaults to `true`. Changing this value forces a new resource to be created.
  final pulumi.Input<bool>? provisionVmAgent;
  /// One or more `secret` blocks as defined below.
  final pulumi.Input<List<OrchestratedVirtualMachineScaleSetOsProfileWindowsConfigurationSecret>>? secrets;
  /// Specifies the time zone of the virtual machine, the possible values are defined [here](https://jackstromberg.com/2017/01/list-of-time-zones-consumed-by-azure/).
  final pulumi.Input<String>? timezone;
  /// One or more `winrm_listener` blocks as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<List<OrchestratedVirtualMachineScaleSetOsProfileWindowsConfigurationWinrmListener>>? winrmListeners;

  /// Creates a new [OrchestratedVirtualMachineScaleSetOsProfileWindowsConfiguration].
  /// [additionalUnattendContents] One or more `additional_unattend_content` blocks as defined below. Changing this forces a new resource to be created.
  /// [adminPassword] The Password which should be used for the local-administrator on this Virtual Machine. Changing this forces a new resource to be created.
  /// [adminUsername] The username of the local administrator on each Virtual Machine Scale Set instance. Changing this forces a new resource to be created.
  /// [computerNamePrefix] The prefix which should be used for the name of the Virtual Machines in this Scale Set. If unspecified this defaults to the value for the `name` field. If the value of the `name` field is not a valid `computer_name_prefix`, then you must specify `computer_name_prefix`. Changing this forces a new resource to be created.
  /// [enableAutomaticUpdates] Are automatic updates enabled for this Virtual Machine? Defaults to `true`.
  /// [hotpatchingEnabled] Should the VM be patched without requiring a reboot? Possible values are `true` or `false`. Defaults to `false`. For more information about hot patching please see the [product documentation](https://docs.microsoft.com/azure/automanage/automanage-hotpatch).
  /// [patchAssessmentMode] Specifies the mode of VM Guest Patching for the virtual machines that are associated to the Virtual Machine Scale Set. Possible values are `AutomaticByPlatform` or `ImageDefault`. Defaults to `ImageDefault`.
  /// [patchMode] Specifies the mode of in-guest patching of this Windows Virtual Machine. Possible values are `Manual`, `AutomaticByOS` and `AutomaticByPlatform`. Defaults to `AutomaticByOS`. For more information on patch modes please see the [product documentation](https://docs.microsoft.com/azure/virtual-machines/automatic-vm-guest-patching#patch-orchestration-modes).
  /// [provisionVmAgent] Should the Azure VM Agent be provisioned on each Virtual Machine in the Scale Set? Defaults to `true`. Changing this value forces a new resource to be created.
  /// [secrets] One or more `secret` blocks as defined below.
  /// [timezone] Specifies the time zone of the virtual machine, the possible values are defined [here](https://jackstromberg.com/2017/01/list-of-time-zones-consumed-by-azure/).
  /// [winrmListeners] One or more `winrm_listener` blocks as defined below. Changing this forces a new resource to be created.
  OrchestratedVirtualMachineScaleSetOsProfileWindowsConfiguration({
    this.additionalUnattendContents,
    required this.adminPassword,
    required this.adminUsername,
    this.computerNamePrefix,
    this.enableAutomaticUpdates,
    this.hotpatchingEnabled,
    this.patchAssessmentMode,
    this.patchMode,
    this.provisionVmAgent,
    this.secrets,
    this.timezone,
    this.winrmListeners,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalUnattendContents': ?pulumi.Input.mapOptionalInputValue<List<OrchestratedVirtualMachineScaleSetOsProfileWindowsConfigurationAdditionalUnattendContent>, List<Map<String, dynamic>>>(additionalUnattendContents, (value) => pulumi.Input.encodeList<OrchestratedVirtualMachineScaleSetOsProfileWindowsConfigurationAdditionalUnattendContent, Map<String, dynamic>>(value, (value) => value.toMap())),
      'adminPassword': adminPassword,
      'adminUsername': adminUsername,
      'computerNamePrefix': ?computerNamePrefix,
      'enableAutomaticUpdates': ?enableAutomaticUpdates,
      'hotpatchingEnabled': ?hotpatchingEnabled,
      'patchAssessmentMode': ?patchAssessmentMode,
      'patchMode': ?patchMode,
      'provisionVmAgent': ?provisionVmAgent,
      'secrets': ?pulumi.Input.mapOptionalInputValue<List<OrchestratedVirtualMachineScaleSetOsProfileWindowsConfigurationSecret>, List<Map<String, dynamic>>>(secrets, (value) => pulumi.Input.encodeList<OrchestratedVirtualMachineScaleSetOsProfileWindowsConfigurationSecret, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timezone': ?timezone,
      'winrmListeners': ?pulumi.Input.mapOptionalInputValue<List<OrchestratedVirtualMachineScaleSetOsProfileWindowsConfigurationWinrmListener>, List<Map<String, dynamic>>>(winrmListeners, (value) => pulumi.Input.encodeList<OrchestratedVirtualMachineScaleSetOsProfileWindowsConfigurationWinrmListener, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory OrchestratedVirtualMachineScaleSetOsProfileWindowsConfiguration.fromMap(Map<String, dynamic> map) {
    return OrchestratedVirtualMachineScaleSetOsProfileWindowsConfiguration(
      additionalUnattendContents: map['additionalUnattendContents'] == null ? null : (pulumi.Input.decodeList<OrchestratedVirtualMachineScaleSetOsProfileWindowsConfigurationAdditionalUnattendContent>(map['additionalUnattendContents']!, (value) => OrchestratedVirtualMachineScaleSetOsProfileWindowsConfigurationAdditionalUnattendContent.fromMap((value as Map).cast<String, dynamic>()))).input(),
      adminPassword: (map['adminPassword'] as String).input(),
      adminUsername: (map['adminUsername'] as String).input(),
      computerNamePrefix: map['computerNamePrefix'] == null ? null : (map['computerNamePrefix']! as String).input(),
      enableAutomaticUpdates: map['enableAutomaticUpdates'] == null ? null : (map['enableAutomaticUpdates']! as bool).input(),
      hotpatchingEnabled: map['hotpatchingEnabled'] == null ? null : (map['hotpatchingEnabled']! as bool).input(),
      patchAssessmentMode: map['patchAssessmentMode'] == null ? null : (map['patchAssessmentMode']! as String).input(),
      patchMode: map['patchMode'] == null ? null : (map['patchMode']! as String).input(),
      provisionVmAgent: map['provisionVmAgent'] == null ? null : (map['provisionVmAgent']! as bool).input(),
      secrets: map['secrets'] == null ? null : (pulumi.Input.decodeList<OrchestratedVirtualMachineScaleSetOsProfileWindowsConfigurationSecret>(map['secrets']!, (value) => OrchestratedVirtualMachineScaleSetOsProfileWindowsConfigurationSecret.fromMap((value as Map).cast<String, dynamic>()))).input(),
      timezone: map['timezone'] == null ? null : (map['timezone']! as String).input(),
      winrmListeners: map['winrmListeners'] == null ? null : (pulumi.Input.decodeList<OrchestratedVirtualMachineScaleSetOsProfileWindowsConfigurationWinrmListener>(map['winrmListeners']!, (value) => OrchestratedVirtualMachineScaleSetOsProfileWindowsConfigurationWinrmListener.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

