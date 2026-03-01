// ignore_for_file: unused_element, unnecessary_cast

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
  final PatchDeploymentPatchConfigApt? apt;
  /// goo update settings. Use this setting to override the default goo patch rules.
  /// Structure is documented below.
  final PatchDeploymentPatchConfigGoo? goo;
  /// Allows the patch job to run on Managed instance groups (MIGs).
  final bool? migInstancesAllowed;
  /// The ExecStep to run after the patch update.
  /// Structure is documented below.
  final PatchDeploymentPatchConfigPostStep? postStep;
  /// The ExecStep to run before the patch update.
  /// Structure is documented below.
  final PatchDeploymentPatchConfigPreStep? preStep;
  /// Post-patch reboot settings.
  /// Possible values are: `DEFAULT`, `ALWAYS`, `NEVER`.
  final String? rebootConfig;
  /// Windows update settings. Use this setting to override the default Windows patch rules.
  /// Structure is documented below.
  final PatchDeploymentPatchConfigWindowsUpdate? windowsUpdate;
  /// Yum update settings. Use this setting to override the default yum patch rules.
  /// Structure is documented below.
  final PatchDeploymentPatchConfigYum? yum;
  /// zypper update settings. Use this setting to override the default zypper patch rules.
  /// Structure is documented below.
  final PatchDeploymentPatchConfigZypper? zypper;

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
      'apt': ?apt == null ? null : apt!.toMap(),
      'goo': ?goo == null ? null : goo!.toMap(),
      'migInstancesAllowed': ?migInstancesAllowed,
      'postStep': ?postStep == null ? null : postStep!.toMap(),
      'preStep': ?preStep == null ? null : preStep!.toMap(),
      'rebootConfig': ?rebootConfig,
      'windowsUpdate': ?windowsUpdate == null ? null : windowsUpdate!.toMap(),
      'yum': ?yum == null ? null : yum!.toMap(),
      'zypper': ?zypper == null ? null : zypper!.toMap(),
    };
  }

  factory PatchDeploymentPatchConfig.fromMap(Map<String, dynamic> map) {
    return PatchDeploymentPatchConfig(
      apt: map['apt'] == null ? null : PatchDeploymentPatchConfigApt.fromMap((map['apt'] as Map).cast<String, dynamic>()),
      goo: map['goo'] == null ? null : PatchDeploymentPatchConfigGoo.fromMap((map['goo'] as Map).cast<String, dynamic>()),
      migInstancesAllowed: map['migInstancesAllowed'] == null ? null : map['migInstancesAllowed'] as bool,
      postStep: map['postStep'] == null ? null : PatchDeploymentPatchConfigPostStep.fromMap((map['postStep'] as Map).cast<String, dynamic>()),
      preStep: map['preStep'] == null ? null : PatchDeploymentPatchConfigPreStep.fromMap((map['preStep'] as Map).cast<String, dynamic>()),
      rebootConfig: map['rebootConfig'] == null ? null : map['rebootConfig'] as String,
      windowsUpdate: map['windowsUpdate'] == null ? null : PatchDeploymentPatchConfigWindowsUpdate.fromMap((map['windowsUpdate'] as Map).cast<String, dynamic>()),
      yum: map['yum'] == null ? null : PatchDeploymentPatchConfigYum.fromMap((map['yum'] as Map).cast<String, dynamic>()),
      zypper: map['zypper'] == null ? null : PatchDeploymentPatchConfigZypper.fromMap((map['zypper'] as Map).cast<String, dynamic>()),
    );
  }
}

