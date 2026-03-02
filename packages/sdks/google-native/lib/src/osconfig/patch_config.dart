// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'apt_settings.dart';
import 'exec_step.dart';
import 'patch_config_reboot_config.dart';
import 'windows_update_settings.dart';
import 'yum_settings.dart';
import 'zypper_settings.dart';

/// Patch configuration specifications. Contains details on how to apply the patch(es) to a VM instance.
class PatchConfig {
  /// Apt update settings. Use this setting to override the default `apt` patch rules.
  final pulumi.Input<AptSettings>? apt;
  /// Goo update settings. Use this setting to override the default `goo` patch rules.
  final pulumi.Input<Map<String, dynamic>>? goo;
  /// Allows the patch job to run on Managed instance groups (MIGs).
  final pulumi.Input<bool>? migInstancesAllowed;
  /// The `ExecStep` to run after the patch update.
  final pulumi.Input<ExecStep>? postStep;
  /// The `ExecStep` to run before the patch update.
  final pulumi.Input<ExecStep>? preStep;
  /// Post-patch reboot settings.
  final pulumi.Input<PatchConfigRebootConfig>? rebootConfig;
  /// Windows update settings. Use this override the default windows patch rules.
  final pulumi.Input<WindowsUpdateSettings>? windowsUpdate;
  /// Yum update settings. Use this setting to override the default `yum` patch rules.
  final pulumi.Input<YumSettings>? yum;
  /// Zypper update settings. Use this setting to override the default `zypper` patch rules.
  final pulumi.Input<ZypperSettings>? zypper;

  /// Creates a new [PatchConfig].
  /// [apt] Apt update settings. Use this setting to override the default `apt` patch rules.
  /// [goo] Goo update settings. Use this setting to override the default `goo` patch rules.
  /// [migInstancesAllowed] Allows the patch job to run on Managed instance groups (MIGs).
  /// [postStep] The `ExecStep` to run after the patch update.
  /// [preStep] The `ExecStep` to run before the patch update.
  /// [rebootConfig] Post-patch reboot settings.
  /// [windowsUpdate] Windows update settings. Use this override the default windows patch rules.
  /// [yum] Yum update settings. Use this setting to override the default `yum` patch rules.
  /// [zypper] Zypper update settings. Use this setting to override the default `zypper` patch rules.
  PatchConfig({
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
      'apt': ?pulumi.Input.mapOptionalInputValue<AptSettings, Map<String, dynamic>>(apt, (value) => value.toMap()),
      'goo': ?goo,
      'migInstancesAllowed': ?migInstancesAllowed,
      'postStep': ?pulumi.Input.mapOptionalInputValue<ExecStep, Map<String, dynamic>>(postStep, (value) => value.toMap()),
      'preStep': ?pulumi.Input.mapOptionalInputValue<ExecStep, Map<String, dynamic>>(preStep, (value) => value.toMap()),
      'rebootConfig': ?pulumi.Input.mapOptionalInputValue<PatchConfigRebootConfig, String>(rebootConfig, (value) => value.value),
      'windowsUpdate': ?pulumi.Input.mapOptionalInputValue<WindowsUpdateSettings, Map<String, dynamic>>(windowsUpdate, (value) => value.toMap()),
      'yum': ?pulumi.Input.mapOptionalInputValue<YumSettings, Map<String, dynamic>>(yum, (value) => value.toMap()),
      'zypper': ?pulumi.Input.mapOptionalInputValue<ZypperSettings, Map<String, dynamic>>(zypper, (value) => value.toMap()),
    };
  }

  factory PatchConfig.fromMap(Map<String, dynamic> map) {
    return PatchConfig(
      apt: map['apt'] == null ? null : (AptSettings.fromMap((map['apt']! as Map).cast<String, dynamic>())).input(),
      goo: map['goo'] == null ? null : ((map['goo']! as Map).cast<String, dynamic>()).input(),
      migInstancesAllowed: map['migInstancesAllowed'] == null ? null : (map['migInstancesAllowed']! as bool).input(),
      postStep: map['postStep'] == null ? null : (ExecStep.fromMap((map['postStep']! as Map).cast<String, dynamic>())).input(),
      preStep: map['preStep'] == null ? null : (ExecStep.fromMap((map['preStep']! as Map).cast<String, dynamic>())).input(),
      rebootConfig: map['rebootConfig'] == null ? null : (PatchConfigRebootConfig.fromValue(map['rebootConfig']! as String)).input(),
      windowsUpdate: map['windowsUpdate'] == null ? null : (WindowsUpdateSettings.fromMap((map['windowsUpdate']! as Map).cast<String, dynamic>())).input(),
      yum: map['yum'] == null ? null : (YumSettings.fromMap((map['yum']! as Map).cast<String, dynamic>())).input(),
      zypper: map['zypper'] == null ? null : (ZypperSettings.fromMap((map['zypper']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

