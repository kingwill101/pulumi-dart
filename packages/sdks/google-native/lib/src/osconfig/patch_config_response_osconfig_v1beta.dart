// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'apt_settings_response_osconfig_v1beta.dart';
import 'exec_step_response_osconfig_v1beta.dart';
import 'windows_update_settings_response_osconfig_v1beta.dart';
import 'yum_settings_response_osconfig_v1beta.dart';
import 'zypper_settings_response_osconfig_v1beta.dart';

/// Patch configuration specifications. Contains details on how to apply the patch(es) to a VM instance.
class PatchConfigResponseOsconfigV1beta {
  /// Apt update settings. Use this setting to override the default `apt` patch rules.
  final pulumi.Input<AptSettingsResponseOsconfigV1beta> apt;
  /// Goo update settings. Use this setting to override the default `goo` patch rules.
  final pulumi.Input<Map<String, dynamic>> goo;
  /// Allows the patch job to run on Managed instance groups (MIGs).
  final pulumi.Input<bool> migInstancesAllowed;
  /// The `ExecStep` to run after the patch update.
  final pulumi.Input<ExecStepResponseOsconfigV1beta> postStep;
  /// The `ExecStep` to run before the patch update.
  final pulumi.Input<ExecStepResponseOsconfigV1beta> preStep;
  /// Post-patch reboot settings.
  final pulumi.Input<String> rebootConfig;
  /// Windows update settings. Use this override the default windows patch rules.
  final pulumi.Input<WindowsUpdateSettingsResponseOsconfigV1beta> windowsUpdate;
  /// Yum update settings. Use this setting to override the default `yum` patch rules.
  final pulumi.Input<YumSettingsResponseOsconfigV1beta> yum;
  /// Zypper update settings. Use this setting to override the default `zypper` patch rules.
  final pulumi.Input<ZypperSettingsResponseOsconfigV1beta> zypper;

  /// Creates a new [PatchConfigResponseOsconfigV1beta].
  /// [apt] Apt update settings. Use this setting to override the default `apt` patch rules.
  /// [goo] Goo update settings. Use this setting to override the default `goo` patch rules.
  /// [migInstancesAllowed] Allows the patch job to run on Managed instance groups (MIGs).
  /// [postStep] The `ExecStep` to run after the patch update.
  /// [preStep] The `ExecStep` to run before the patch update.
  /// [rebootConfig] Post-patch reboot settings.
  /// [windowsUpdate] Windows update settings. Use this override the default windows patch rules.
  /// [yum] Yum update settings. Use this setting to override the default `yum` patch rules.
  /// [zypper] Zypper update settings. Use this setting to override the default `zypper` patch rules.
  PatchConfigResponseOsconfigV1beta({
    required this.apt,
    required this.goo,
    required this.migInstancesAllowed,
    required this.postStep,
    required this.preStep,
    required this.rebootConfig,
    required this.windowsUpdate,
    required this.yum,
    required this.zypper,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apt': pulumi.Input.mapInputValue<AptSettingsResponseOsconfigV1beta, Map<String, dynamic>>(apt, (value) => value.toMap()),
      'goo': goo,
      'migInstancesAllowed': migInstancesAllowed,
      'postStep': pulumi.Input.mapInputValue<ExecStepResponseOsconfigV1beta, Map<String, dynamic>>(postStep, (value) => value.toMap()),
      'preStep': pulumi.Input.mapInputValue<ExecStepResponseOsconfigV1beta, Map<String, dynamic>>(preStep, (value) => value.toMap()),
      'rebootConfig': rebootConfig,
      'windowsUpdate': pulumi.Input.mapInputValue<WindowsUpdateSettingsResponseOsconfigV1beta, Map<String, dynamic>>(windowsUpdate, (value) => value.toMap()),
      'yum': pulumi.Input.mapInputValue<YumSettingsResponseOsconfigV1beta, Map<String, dynamic>>(yum, (value) => value.toMap()),
      'zypper': pulumi.Input.mapInputValue<ZypperSettingsResponseOsconfigV1beta, Map<String, dynamic>>(zypper, (value) => value.toMap()),
    };
  }

  factory PatchConfigResponseOsconfigV1beta.fromMap(Map<String, dynamic> map) {
    return PatchConfigResponseOsconfigV1beta(
      apt: pulumi.Input.fromValue(AptSettingsResponseOsconfigV1beta.fromMap((map['apt']! as Map).cast<String, dynamic>())),
      goo: pulumi.Input.fromValue((map['goo']! as Map).cast<String, dynamic>()),
      migInstancesAllowed: pulumi.Input.fromValue(map['migInstancesAllowed'] as bool),
      postStep: pulumi.Input.fromValue(ExecStepResponseOsconfigV1beta.fromMap((map['postStep']! as Map).cast<String, dynamic>())),
      preStep: pulumi.Input.fromValue(ExecStepResponseOsconfigV1beta.fromMap((map['preStep']! as Map).cast<String, dynamic>())),
      rebootConfig: pulumi.Input.fromValue(map['rebootConfig'] as String),
      windowsUpdate: pulumi.Input.fromValue(WindowsUpdateSettingsResponseOsconfigV1beta.fromMap((map['windowsUpdate']! as Map).cast<String, dynamic>())),
      yum: pulumi.Input.fromValue(YumSettingsResponseOsconfigV1beta.fromMap((map['yum']! as Map).cast<String, dynamic>())),
      zypper: pulumi.Input.fromValue(ZypperSettingsResponseOsconfigV1beta.fromMap((map['zypper']! as Map).cast<String, dynamic>())),
    );
  }
}

