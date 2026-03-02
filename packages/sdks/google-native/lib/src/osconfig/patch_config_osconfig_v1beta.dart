// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'apt_settings_osconfig_v1beta.dart';
import 'exec_step_osconfig_v1beta.dart';
import 'patch_config_reboot_config_osconfig_v1beta.dart';
import 'windows_update_settings_osconfig_v1beta.dart';
import 'yum_settings_osconfig_v1beta.dart';
import 'zypper_settings_osconfig_v1beta.dart';

/// Patch configuration specifications. Contains details on how to apply the patch(es) to a VM instance.
class PatchConfigOsconfigV1beta {
  /// Apt update settings. Use this setting to override the default `apt` patch rules.
  final pulumi.Input<AptSettingsOsconfigV1beta>? apt;
  /// Goo update settings. Use this setting to override the default `goo` patch rules.
  final pulumi.Input<Map<String, dynamic>>? goo;
  /// Allows the patch job to run on Managed instance groups (MIGs).
  final pulumi.Input<bool>? migInstancesAllowed;
  /// The `ExecStep` to run after the patch update.
  final pulumi.Input<ExecStepOsconfigV1beta>? postStep;
  /// The `ExecStep` to run before the patch update.
  final pulumi.Input<ExecStepOsconfigV1beta>? preStep;
  /// Post-patch reboot settings.
  final pulumi.Input<PatchConfigRebootConfigOsconfigV1beta>? rebootConfig;
  /// Windows update settings. Use this override the default windows patch rules.
  final pulumi.Input<WindowsUpdateSettingsOsconfigV1beta>? windowsUpdate;
  /// Yum update settings. Use this setting to override the default `yum` patch rules.
  final pulumi.Input<YumSettingsOsconfigV1beta>? yum;
  /// Zypper update settings. Use this setting to override the default `zypper` patch rules.
  final pulumi.Input<ZypperSettingsOsconfigV1beta>? zypper;

  /// Creates a new [PatchConfigOsconfigV1beta].
  /// [apt] Apt update settings. Use this setting to override the default `apt` patch rules.
  /// [goo] Goo update settings. Use this setting to override the default `goo` patch rules.
  /// [migInstancesAllowed] Allows the patch job to run on Managed instance groups (MIGs).
  /// [postStep] The `ExecStep` to run after the patch update.
  /// [preStep] The `ExecStep` to run before the patch update.
  /// [rebootConfig] Post-patch reboot settings.
  /// [windowsUpdate] Windows update settings. Use this override the default windows patch rules.
  /// [yum] Yum update settings. Use this setting to override the default `yum` patch rules.
  /// [zypper] Zypper update settings. Use this setting to override the default `zypper` patch rules.
  PatchConfigOsconfigV1beta({
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
      'apt': ?pulumi.Input.mapOptionalInputValue<AptSettingsOsconfigV1beta, Map<String, dynamic>>(apt, (value) => value.toMap()),
      'goo': ?goo,
      'migInstancesAllowed': ?migInstancesAllowed,
      'postStep': ?pulumi.Input.mapOptionalInputValue<ExecStepOsconfigV1beta, Map<String, dynamic>>(postStep, (value) => value.toMap()),
      'preStep': ?pulumi.Input.mapOptionalInputValue<ExecStepOsconfigV1beta, Map<String, dynamic>>(preStep, (value) => value.toMap()),
      'rebootConfig': ?pulumi.Input.mapOptionalInputValue<PatchConfigRebootConfigOsconfigV1beta, String>(rebootConfig, (value) => value.value),
      'windowsUpdate': ?pulumi.Input.mapOptionalInputValue<WindowsUpdateSettingsOsconfigV1beta, Map<String, dynamic>>(windowsUpdate, (value) => value.toMap()),
      'yum': ?pulumi.Input.mapOptionalInputValue<YumSettingsOsconfigV1beta, Map<String, dynamic>>(yum, (value) => value.toMap()),
      'zypper': ?pulumi.Input.mapOptionalInputValue<ZypperSettingsOsconfigV1beta, Map<String, dynamic>>(zypper, (value) => value.toMap()),
    };
  }

  factory PatchConfigOsconfigV1beta.fromMap(Map<String, dynamic> map) {
    return PatchConfigOsconfigV1beta(
      apt: map['apt'] == null ? null : (AptSettingsOsconfigV1beta.fromMap((map['apt']! as Map).cast<String, dynamic>())).input(),
      goo: map['goo'] == null ? null : ((map['goo']! as Map).cast<String, dynamic>()).input(),
      migInstancesAllowed: map['migInstancesAllowed'] == null ? null : (map['migInstancesAllowed']! as bool).input(),
      postStep: map['postStep'] == null ? null : (ExecStepOsconfigV1beta.fromMap((map['postStep']! as Map).cast<String, dynamic>())).input(),
      preStep: map['preStep'] == null ? null : (ExecStepOsconfigV1beta.fromMap((map['preStep']! as Map).cast<String, dynamic>())).input(),
      rebootConfig: map['rebootConfig'] == null ? null : (PatchConfigRebootConfigOsconfigV1beta.fromValue(map['rebootConfig']! as String)).input(),
      windowsUpdate: map['windowsUpdate'] == null ? null : (WindowsUpdateSettingsOsconfigV1beta.fromMap((map['windowsUpdate']! as Map).cast<String, dynamic>())).input(),
      yum: map['yum'] == null ? null : (YumSettingsOsconfigV1beta.fromMap((map['yum']! as Map).cast<String, dynamic>())).input(),
      zypper: map['zypper'] == null ? null : (ZypperSettingsOsconfigV1beta.fromMap((map['zypper']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

