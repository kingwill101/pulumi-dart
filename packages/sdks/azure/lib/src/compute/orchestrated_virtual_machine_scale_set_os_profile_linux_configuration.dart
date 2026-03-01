// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'orchestrated_virtual_machine_scale_set_os_profile_linux_configuration_admin_ssh_key.dart';
import 'orchestrated_virtual_machine_scale_set_os_profile_linux_configuration_secret.dart';

class OrchestratedVirtualMachineScaleSetOsProfileLinuxConfiguration {
  /// The Password which should be used for the local-administrator on this Virtual Machine. Changing this forces a new resource to be created.
  final String? adminPassword;
  /// A `admin_ssh_key` block as documented below.
  final List<OrchestratedVirtualMachineScaleSetOsProfileLinuxConfigurationAdminSshKey>? adminSshKeys;
  /// The username of the local administrator on each Virtual Machine Scale Set instance. Changing this forces a new resource to be created.
  final String adminUsername;
  /// The prefix which should be used for the name of the Virtual Machines in this Scale Set. If unspecified this defaults to the value for the name field. If the value of the name field is not a valid `computer_name_prefix`, then you must specify `computer_name_prefix`. Changing this forces a new resource to be created.
  final String? computerNamePrefix;
  /// When an `admin_password` is specified `disable_password_authentication` must be set to `false`. Defaults to `true`.
  ///
  /// > **Note:** Either `admin_password` or `admin_ssh_key` must be specified.
  final bool? disablePasswordAuthentication;
  /// Specifies the mode of VM Guest Patching for the virtual machines that are associated to the Virtual Machine Scale Set. Possible values are `AutomaticByPlatform` or `ImageDefault`. Defaults to `ImageDefault`.
  ///
  /// > **Note:** If the `patch_assessment_mode` is set to `AutomaticByPlatform` then the `provision_vm_agent` field must be set to `true`.
  final String? patchAssessmentMode;
  /// Specifies the mode of in-guest patching of this Windows Virtual Machine. Possible values are `ImageDefault` or `AutomaticByPlatform`. Defaults to `ImageDefault`. For more information on patch modes please see the [product documentation](https://docs.microsoft.com/azure/virtual-machines/automatic-vm-guest-patching#patch-orchestration-modes).
  ///
  /// > **Note:** If `patch_mode` is set to `AutomaticByPlatform` the `provision_vm_agent` must be set to `true` and the `extension` must contain at least one application health extension.  An example of how to correctly configure a Virtual Machine Scale Set to provision a Linux Virtual Machine with Automatic VM Guest Patching enabled can be found in the `./examples/orchestrated-vm-scale-set/automatic-vm-guest-patching` directory within the GitHub Repository.
  final String? patchMode;
  /// Should the Azure VM Agent be provisioned on each Virtual Machine in the Scale Set? Defaults to `true`. Changing this value forces a new resource to be created.
  final bool? provisionVmAgent;
  /// One or more `secret` blocks as defined below.
  final List<OrchestratedVirtualMachineScaleSetOsProfileLinuxConfigurationSecret>? secrets;

  /// Creates a new [OrchestratedVirtualMachineScaleSetOsProfileLinuxConfiguration].
  /// [adminPassword] The Password which should be used for the local-administrator on this Virtual Machine. Changing this forces a new resource to be created.
  /// [adminSshKeys] A `admin_ssh_key` block as documented below.
  /// [adminUsername] The username of the local administrator on each Virtual Machine Scale Set instance. Changing this forces a new resource to be created.
  /// [computerNamePrefix] The prefix which should be used for the name of the Virtual Machines in this Scale Set. If unspecified this defaults to the value for the name field. If the value of the name field is not a valid `computer_name_prefix`, then you must specify `computer_name_prefix`. Changing this forces a new resource to be created.
  /// [disablePasswordAuthentication] When an `admin_password` is specified `disable_password_authentication` must be set to `false`. Defaults to `true`.
  /// [patchAssessmentMode] Specifies the mode of VM Guest Patching for the virtual machines that are associated to the Virtual Machine Scale Set. Possible values are `AutomaticByPlatform` or `ImageDefault`. Defaults to `ImageDefault`.
  /// [patchMode] Specifies the mode of in-guest patching of this Windows Virtual Machine. Possible values are `ImageDefault` or `AutomaticByPlatform`. Defaults to `ImageDefault`. For more information on patch modes please see the [product documentation](https://docs.microsoft.com/azure/virtual-machines/automatic-vm-guest-patching#patch-orchestration-modes).
  /// [provisionVmAgent] Should the Azure VM Agent be provisioned on each Virtual Machine in the Scale Set? Defaults to `true`. Changing this value forces a new resource to be created.
  /// [secrets] One or more `secret` blocks as defined below.
  OrchestratedVirtualMachineScaleSetOsProfileLinuxConfiguration({
    this.adminPassword,
    this.adminSshKeys,
    required this.adminUsername,
    this.computerNamePrefix,
    this.disablePasswordAuthentication,
    this.patchAssessmentMode,
    this.patchMode,
    this.provisionVmAgent,
    this.secrets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminPassword': ?adminPassword,
      'adminSshKeys': ?adminSshKeys == null ? null : pulumi.Input.encodeList<OrchestratedVirtualMachineScaleSetOsProfileLinuxConfigurationAdminSshKey, Map<String, dynamic>>(adminSshKeys!, (value) => value.toMap()),
      'adminUsername': adminUsername,
      'computerNamePrefix': ?computerNamePrefix,
      'disablePasswordAuthentication': ?disablePasswordAuthentication,
      'patchAssessmentMode': ?patchAssessmentMode,
      'patchMode': ?patchMode,
      'provisionVmAgent': ?provisionVmAgent,
      'secrets': ?secrets == null ? null : pulumi.Input.encodeList<OrchestratedVirtualMachineScaleSetOsProfileLinuxConfigurationSecret, Map<String, dynamic>>(secrets!, (value) => value.toMap()),
    };
  }

  factory OrchestratedVirtualMachineScaleSetOsProfileLinuxConfiguration.fromMap(Map<String, dynamic> map) {
    return OrchestratedVirtualMachineScaleSetOsProfileLinuxConfiguration(
      adminPassword: map['adminPassword'] == null ? null : map['adminPassword'] as String,
      adminSshKeys: map['adminSshKeys'] == null ? null : pulumi.Input.decodeList<OrchestratedVirtualMachineScaleSetOsProfileLinuxConfigurationAdminSshKey>(map['adminSshKeys'], (value) => OrchestratedVirtualMachineScaleSetOsProfileLinuxConfigurationAdminSshKey.fromMap((value as Map).cast<String, dynamic>())),
      adminUsername: map['adminUsername'] as String,
      computerNamePrefix: map['computerNamePrefix'] == null ? null : map['computerNamePrefix'] as String,
      disablePasswordAuthentication: map['disablePasswordAuthentication'] == null ? null : map['disablePasswordAuthentication'] as bool,
      patchAssessmentMode: map['patchAssessmentMode'] == null ? null : map['patchAssessmentMode'] as String,
      patchMode: map['patchMode'] == null ? null : map['patchMode'] as String,
      provisionVmAgent: map['provisionVmAgent'] == null ? null : map['provisionVmAgent'] as bool,
      secrets: map['secrets'] == null ? null : pulumi.Input.decodeList<OrchestratedVirtualMachineScaleSetOsProfileLinuxConfigurationSecret>(map['secrets'], (value) => OrchestratedVirtualMachineScaleSetOsProfileLinuxConfigurationSecret.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

