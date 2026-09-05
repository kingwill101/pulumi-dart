// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WindowsWebAppSlotSiteConfigAutoHealSettingActionCustomAction {
  /// The executable to run for the `customAction`.
  final pulumi.Input<String> executable;
  /// The parameters to pass to the specified `executable`.
  final pulumi.Input<String?>? parameters;

  /// Creates a new [WindowsWebAppSlotSiteConfigAutoHealSettingActionCustomAction].
  /// [executable] The executable to run for the `customAction`.
  /// [parameters] The parameters to pass to the specified `executable`.
  const WindowsWebAppSlotSiteConfigAutoHealSettingActionCustomAction({
    required this.executable,
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'executable': executable,
      'parameters': ?parameters,
    };
  }

  factory WindowsWebAppSlotSiteConfigAutoHealSettingActionCustomAction.fromMap(Map<String, dynamic> map) {
    return WindowsWebAppSlotSiteConfigAutoHealSettingActionCustomAction(
      executable: pulumi.Input.fromValue(map['executable'] as String),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
