// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'patch_deployment_patch_config_apt.dart';
import 'patch_deployment_patch_config_goo.dart';
import 'patch_deployment_patch_config_post_step.dart';
import 'patch_deployment_patch_config_pre_step.dart';
import 'patch_deployment_patch_config_windows_update.dart';
import 'patch_deployment_patch_config_yum.dart';
import 'patch_deployment_patch_config_zypper.dart';

class PatchDeploymentPatchConfig {
  /// Apt update settings. Use this setting to override the default apt patch rules.
  /// Structure is documented below.
  final pulumi.Input<PatchDeploymentPatchConfigApt>? apt;
  /// goo update settings. Use this setting to override the default goo patch rules.
  /// Structure is documented below.
  final pulumi.Input<PatchDeploymentPatchConfigGoo>? goo;
  /// Allows the patch job to run on Managed instance groups (MIGs).
  final pulumi.Input<bool>? migInstancesAllowed;
  /// The ExecStep to run after the patch update.
  /// Structure is documented below.
  final pulumi.Input<PatchDeploymentPatchConfigPostStep>? postStep;
  /// The ExecStep to run before the patch update.
  /// Structure is documented below.
  final pulumi.Input<PatchDeploymentPatchConfigPreStep>? preStep;
  /// Post-patch reboot settings.
  /// Possible values are: `DEFAULT`, `ALWAYS`, `NEVER`.
  final pulumi.Input<String>? rebootConfig;
  /// Windows update settings. Use this setting to override the default Windows patch rules.
  /// Structure is documented below.
  final pulumi.Input<PatchDeploymentPatchConfigWindowsUpdate>? windowsUpdate;
  /// Yum update settings. Use this setting to override the default yum patch rules.
  /// Structure is documented below.
  final pulumi.Input<PatchDeploymentPatchConfigYum>? yum;
  /// zypper update settings. Use this setting to override the default zypper patch rules.
  /// Structure is documented below.
  final pulumi.Input<PatchDeploymentPatchConfigZypper>? zypper;

  /// Creates a new [PatchDeploymentPatchConfig].
  /// [apt] Apt update settings. Use this setting to override the default apt patch rules.
  /// [goo] goo update settings. Use this setting to override the default goo patch rules.
  /// [migInstancesAllowed] Allows the patch job to run on Managed instance groups (MIGs).
  /// [postStep] The ExecStep to run after the patch update.
  /// [preStep] The ExecStep to run before the patch update.
  /// [rebootConfig] Post-patch reboot settings.
  /// [windowsUpdate] Windows update settings. Use this setting to override the default Windows patch rules.
  /// [yum] Yum update settings. Use this setting to override the default yum patch rules.
  /// [zypper] zypper update settings. Use this setting to override the default zypper patch rules.
  PatchDeploymentPatchConfig({
    this.apt,
    this.goo,
    this.migInstancesAllowed,
    this.postStep,
    this.preStep,
    this.rebootConfig,
    this.windowsUpdate,
    this.yum,
    this.zypper,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apt': ?pulumi.Input.mapOptionalInputValue<PatchDeploymentPatchConfigApt, Map<String, dynamic>>(apt, (value) => value.toMap()),
      'goo': ?pulumi.Input.mapOptionalInputValue<PatchDeploymentPatchConfigGoo, Map<String, dynamic>>(goo, (value) => value.toMap()),
      'migInstancesAllowed': ?migInstancesAllowed,
      'postStep': ?pulumi.Input.mapOptionalInputValue<PatchDeploymentPatchConfigPostStep, Map<String, dynamic>>(postStep, (value) => value.toMap()),
      'preStep': ?pulumi.Input.mapOptionalInputValue<PatchDeploymentPatchConfigPreStep, Map<String, dynamic>>(preStep, (value) => value.toMap()),
      'rebootConfig': ?rebootConfig,
      'windowsUpdate': ?pulumi.Input.mapOptionalInputValue<PatchDeploymentPatchConfigWindowsUpdate, Map<String, dynamic>>(windowsUpdate, (value) => value.toMap()),
      'yum': ?pulumi.Input.mapOptionalInputValue<PatchDeploymentPatchConfigYum, Map<String, dynamic>>(yum, (value) => value.toMap()),
      'zypper': ?pulumi.Input.mapOptionalInputValue<PatchDeploymentPatchConfigZypper, Map<String, dynamic>>(zypper, (value) => value.toMap()),
    };
  }

  factory PatchDeploymentPatchConfig.fromMap(Map<String, dynamic> map) {
    return PatchDeploymentPatchConfig(
      apt: map['apt'] == null ? null : (PatchDeploymentPatchConfigApt.fromMap((map['apt']! as Map).cast<String, dynamic>())).input(),
      goo: map['goo'] == null ? null : (PatchDeploymentPatchConfigGoo.fromMap((map['goo']! as Map).cast<String, dynamic>())).input(),
      migInstancesAllowed: map['migInstancesAllowed'] == null ? null : (map['migInstancesAllowed']! as bool).input(),
      postStep: map['postStep'] == null ? null : (PatchDeploymentPatchConfigPostStep.fromMap((map['postStep']! as Map).cast<String, dynamic>())).input(),
      preStep: map['preStep'] == null ? null : (PatchDeploymentPatchConfigPreStep.fromMap((map['preStep']! as Map).cast<String, dynamic>())).input(),
      rebootConfig: map['rebootConfig'] == null ? null : (map['rebootConfig']! as String).input(),
      windowsUpdate: map['windowsUpdate'] == null ? null : (PatchDeploymentPatchConfigWindowsUpdate.fromMap((map['windowsUpdate']! as Map).cast<String, dynamic>())).input(),
      yum: map['yum'] == null ? null : (PatchDeploymentPatchConfigYum.fromMap((map['yum']! as Map).cast<String, dynamic>())).input(),
      zypper: map['zypper'] == null ? null : (PatchDeploymentPatchConfigZypper.fromMap((map['zypper']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

