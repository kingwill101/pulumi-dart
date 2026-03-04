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
      'apt':
          ?pulumi.Input.mapOptionalInputValue<
            AptSettingsOsconfigV1beta,
            Map<String, dynamic>
          >(apt, (value) => value.toMap()),
      'goo': ?goo,
      'migInstancesAllowed': ?migInstancesAllowed,
      'postStep':
          ?pulumi.Input.mapOptionalInputValue<
            ExecStepOsconfigV1beta,
            Map<String, dynamic>
          >(postStep, (value) => value.toMap()),
      'preStep':
          ?pulumi.Input.mapOptionalInputValue<
            ExecStepOsconfigV1beta,
            Map<String, dynamic>
          >(preStep, (value) => value.toMap()),
      'rebootConfig':
          ?pulumi.Input.mapOptionalInputValue<
            PatchConfigRebootConfigOsconfigV1beta,
            String
          >(rebootConfig, (value) => value.wireValue),
      'windowsUpdate':
          ?pulumi.Input.mapOptionalInputValue<
            WindowsUpdateSettingsOsconfigV1beta,
            Map<String, dynamic>
          >(windowsUpdate, (value) => value.toMap()),
      'yum':
          ?pulumi.Input.mapOptionalInputValue<
            YumSettingsOsconfigV1beta,
            Map<String, dynamic>
          >(yum, (value) => value.toMap()),
      'zypper':
          ?pulumi.Input.mapOptionalInputValue<
            ZypperSettingsOsconfigV1beta,
            Map<String, dynamic>
          >(zypper, (value) => value.toMap()),
    };
  }

  factory PatchConfigOsconfigV1beta.fromMap(Map<String, dynamic> map) {
    return PatchConfigOsconfigV1beta(
      apt: (() {
        final guardedValue = map['apt'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AptSettingsOsconfigV1beta.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      goo: (() {
        final guardedValue = map['goo'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      migInstancesAllowed: (() {
        final guardedValue = map['migInstancesAllowed'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      postStep: (() {
        final guardedValue = map['postStep'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ExecStepOsconfigV1beta.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      preStep: (() {
        final guardedValue = map['preStep'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ExecStepOsconfigV1beta.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      rebootConfig: (() {
        final guardedValue = map['rebootConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PatchConfigRebootConfigOsconfigV1beta.fromValue(
            guardedValue as String,
          ),
        );
      })(),
      windowsUpdate: (() {
        final guardedValue = map['windowsUpdate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WindowsUpdateSettingsOsconfigV1beta.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      yum: (() {
        final guardedValue = map['yum'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          YumSettingsOsconfigV1beta.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      zypper: (() {
        final guardedValue = map['zypper'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ZypperSettingsOsconfigV1beta.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
