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
  /// Enables enhanced reporting for the patch job:
  /// 1. The patch job skips instances that cannot be patched and reports them as `SKIPPED`. An instance cannot be patched for two reasons:
  /// * The instance runs Container-Optimized OS (COS), which cannot be patched.
  /// * The instance is part of a managed instance group (MIG), and patching MIG instances is disabled in the patch job's configuration (`migInstancesAllowed` is false).
  /// 2. The patch job is reported as `SUCCEEDED` if it completes without errors, even if some instances are `SKIPPED`.
  /// 3. The patch job is reported as `COMPLETED_WITH_INACTIVE_VMS` if it completes without errors, but does not patch instances that are `INACTIVE`.
  final pulumi.Input<bool>? skipUnpatchableVms;
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
  /// [skipUnpatchableVms] Enables enhanced reporting for the patch job:
  /// [windowsUpdate] Windows update settings. Use this setting to override the default Windows patch rules.
  /// [yum] Yum update settings. Use this setting to override the default yum patch rules.
  /// [zypper] zypper update settings. Use this setting to override the default zypper patch rules.
  const PatchDeploymentPatchConfig({
    this.apt,
    this.goo,
    this.migInstancesAllowed,
    this.postStep,
    this.preStep,
    this.rebootConfig,
    this.skipUnpatchableVms,
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
      'skipUnpatchableVms': ?skipUnpatchableVms,
      'windowsUpdate': ?pulumi.Input.mapOptionalInputValue<PatchDeploymentPatchConfigWindowsUpdate, Map<String, dynamic>>(windowsUpdate, (value) => value.toMap()),
      'yum': ?pulumi.Input.mapOptionalInputValue<PatchDeploymentPatchConfigYum, Map<String, dynamic>>(yum, (value) => value.toMap()),
      'zypper': ?pulumi.Input.mapOptionalInputValue<PatchDeploymentPatchConfigZypper, Map<String, dynamic>>(zypper, (value) => value.toMap()),
    };
  }

  factory PatchDeploymentPatchConfig.fromMap(Map<String, dynamic> map) {
    return PatchDeploymentPatchConfig(
      apt: (() { final guardedValue = map['apt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PatchDeploymentPatchConfigApt.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      goo: (() { final guardedValue = map['goo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PatchDeploymentPatchConfigGoo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      migInstancesAllowed: (() { final guardedValue = map['migInstancesAllowed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      postStep: (() { final guardedValue = map['postStep']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PatchDeploymentPatchConfigPostStep.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      preStep: (() { final guardedValue = map['preStep']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PatchDeploymentPatchConfigPreStep.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rebootConfig: (() { final guardedValue = map['rebootConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      skipUnpatchableVms: (() { final guardedValue = map['skipUnpatchableVms']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      windowsUpdate: (() { final guardedValue = map['windowsUpdate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PatchDeploymentPatchConfigWindowsUpdate.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      yum: (() { final guardedValue = map['yum']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PatchDeploymentPatchConfigYum.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      zypper: (() { final guardedValue = map['zypper']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PatchDeploymentPatchConfigZypper.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
