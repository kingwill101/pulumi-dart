// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'apt_settings_response.dart';
import 'exec_step_response.dart';
import 'windows_update_settings_response.dart';
import 'yum_settings_response.dart';
import 'zypper_settings_response.dart';

/// Patch configuration specifications. Contains details on how to apply the patch(es) to a VM instance.
class PatchConfigResponse {
  /// Apt update settings. Use this setting to override the default `apt` patch rules.
  final pulumi.Input<AptSettingsResponse> apt;
  /// Goo update settings. Use this setting to override the default `goo` patch rules.
  final pulumi.Input<Map<String, dynamic>> goo;
  /// Allows the patch job to run on Managed instance groups (MIGs).
  final pulumi.Input<bool> migInstancesAllowed;
  /// The `ExecStep` to run after the patch update.
  final pulumi.Input<ExecStepResponse> postStep;
  /// The `ExecStep` to run before the patch update.
  final pulumi.Input<ExecStepResponse> preStep;
  /// Post-patch reboot settings.
  final pulumi.Input<String> rebootConfig;
  /// Windows update settings. Use this override the default windows patch rules.
  final pulumi.Input<WindowsUpdateSettingsResponse> windowsUpdate;
  /// Yum update settings. Use this setting to override the default `yum` patch rules.
  final pulumi.Input<YumSettingsResponse> yum;
  /// Zypper update settings. Use this setting to override the default `zypper` patch rules.
  final pulumi.Input<ZypperSettingsResponse> zypper;

  /// Creates a new [PatchConfigResponse].
  /// [apt] Apt update settings. Use this setting to override the default `apt` patch rules.
  /// [goo] Goo update settings. Use this setting to override the default `goo` patch rules.
  /// [migInstancesAllowed] Allows the patch job to run on Managed instance groups (MIGs).
  /// [postStep] The `ExecStep` to run after the patch update.
  /// [preStep] The `ExecStep` to run before the patch update.
  /// [rebootConfig] Post-patch reboot settings.
  /// [windowsUpdate] Windows update settings. Use this override the default windows patch rules.
  /// [yum] Yum update settings. Use this setting to override the default `yum` patch rules.
  /// [zypper] Zypper update settings. Use this setting to override the default `zypper` patch rules.
  PatchConfigResponse({
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
      'apt': pulumi.Input.mapInputValue<AptSettingsResponse, Map<String, dynamic>>(apt, (value) => value.toMap()),
      'goo': goo,
      'migInstancesAllowed': migInstancesAllowed,
      'postStep': pulumi.Input.mapInputValue<ExecStepResponse, Map<String, dynamic>>(postStep, (value) => value.toMap()),
      'preStep': pulumi.Input.mapInputValue<ExecStepResponse, Map<String, dynamic>>(preStep, (value) => value.toMap()),
      'rebootConfig': rebootConfig,
      'windowsUpdate': pulumi.Input.mapInputValue<WindowsUpdateSettingsResponse, Map<String, dynamic>>(windowsUpdate, (value) => value.toMap()),
      'yum': pulumi.Input.mapInputValue<YumSettingsResponse, Map<String, dynamic>>(yum, (value) => value.toMap()),
      'zypper': pulumi.Input.mapInputValue<ZypperSettingsResponse, Map<String, dynamic>>(zypper, (value) => value.toMap()),
    };
  }

  factory PatchConfigResponse.fromMap(Map<String, dynamic> map) {
    return PatchConfigResponse(
      apt: (AptSettingsResponse.fromMap((map['apt'] as Map).cast<String, dynamic>())).input(),
      goo: ((map['goo'] as Map).cast<String, dynamic>()).input(),
      migInstancesAllowed: (map['migInstancesAllowed'] as bool).input(),
      postStep: (ExecStepResponse.fromMap((map['postStep'] as Map).cast<String, dynamic>())).input(),
      preStep: (ExecStepResponse.fromMap((map['preStep'] as Map).cast<String, dynamic>())).input(),
      rebootConfig: (map['rebootConfig'] as String).input(),
      windowsUpdate: (WindowsUpdateSettingsResponse.fromMap((map['windowsUpdate'] as Map).cast<String, dynamic>())).input(),
      yum: (YumSettingsResponse.fromMap((map['yum'] as Map).cast<String, dynamic>())).input(),
      zypper: (ZypperSettingsResponse.fromMap((map['zypper'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

