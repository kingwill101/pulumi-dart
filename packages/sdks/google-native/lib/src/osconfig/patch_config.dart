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
  const PatchConfig({
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
      'rebootConfig': ?pulumi.Input.mapOptionalInputValue<PatchConfigRebootConfig, String>(rebootConfig, (value) => value.wireValue),
      'windowsUpdate': ?pulumi.Input.mapOptionalInputValue<WindowsUpdateSettings, Map<String, dynamic>>(windowsUpdate, (value) => value.toMap()),
      'yum': ?pulumi.Input.mapOptionalInputValue<YumSettings, Map<String, dynamic>>(yum, (value) => value.toMap()),
      'zypper': ?pulumi.Input.mapOptionalInputValue<ZypperSettings, Map<String, dynamic>>(zypper, (value) => value.toMap()),
    };
  }

  factory PatchConfig.fromMap(Map<String, dynamic> map) {
    return PatchConfig(
      apt: (() { final guardedValue = map['apt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AptSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      goo: (() { final guardedValue = map['goo']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      migInstancesAllowed: (() { final guardedValue = map['migInstancesAllowed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      postStep: (() { final guardedValue = map['postStep']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExecStep.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      preStep: (() { final guardedValue = map['preStep']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExecStep.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rebootConfig: (() { final guardedValue = map['rebootConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PatchConfigRebootConfig.fromValue(guardedValue as String)); })(),
      windowsUpdate: (() { final guardedValue = map['windowsUpdate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WindowsUpdateSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      yum: (() { final guardedValue = map['yum']; if (guardedValue == null) return null; return pulumi.Input.fromValue(YumSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      zypper: (() { final guardedValue = map['zypper']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZypperSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

