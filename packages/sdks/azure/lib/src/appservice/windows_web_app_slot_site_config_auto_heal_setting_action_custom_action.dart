// ignore_for_file: unused_element, unnecessary_cast


class WindowsWebAppSlotSiteConfigAutoHealSettingActionCustomAction {
  /// The executable to run for the `custom_action`.
  final String executable;
  /// The parameters to pass to the specified `executable`.
  final String? parameters;

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
      executable: map['executable'] as String,
      parameters: map['parameters'] == null ? null : map['parameters'] as String,
    );
  }
}

