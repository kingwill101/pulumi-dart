// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WindowsWebAppSlotSiteConfigAutoHealSettingActionCustomAction {
  /// The executable to run for the `custom_action`.
  final pulumi.Input<String> executable;
  /// The parameters to pass to the specified `executable`.
  final pulumi.Input<String>? parameters;

  /// Creates a new [WindowsWebAppSlotSiteConfigAutoHealSettingActionCustomAction].
  /// [executable] The executable to run for the `custom_action`.
  /// [parameters] The parameters to pass to the specified `executable`.
  WindowsWebAppSlotSiteConfigAutoHealSettingActionCustomAction({
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
      executable: (map['executable'] as String).input(),
      parameters: map['parameters'] == null ? null : (map['parameters']! as String).input(),
    );
  }
}

